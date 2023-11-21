@react.component
let make = (~list, ~paymentMethod, ~paymentMethodType, ~cardBrand=CardUtils.NOTFOUND) => {
  let getPaymentMethodTypes = paymentMethodType => {
    PaymentMethodsRecord.getPaymentMethodTypeFromList(
      ~list,
      ~paymentMethod,
      ~paymentMethodType,
    )->Belt.Option.getWithDefault(PaymentMethodsRecord.defaultPaymentMethodType)
  }

  let paymentMethodTypes = paymentMethodType->getPaymentMethodTypes

  let {localeString} = Recoil.useRecoilValueFromAtom(RecoilAtoms.configAtom)

  let getSurchargeValue = (surchargeDetails: PaymentMethodsRecord.surchargeDetails) => {
    switch surchargeDetails.surcharge.value {
    | VAL(val) => val
    | PERCENTAGE(percent) => percent.percentage
    }->Js.Float.toString
  }

  let getMessage = (surchargeDetails: PaymentMethodsRecord.surchargeDetails) => {
    let surchargeType = surchargeDetails.surcharge.surchargeType
    let surchargeValue = surchargeDetails->getSurchargeValue

    let getLocaleStrForSurcharge = (cardLocale, altPaymentLocale) => {
      paymentMethod === "card" ? cardLocale(surchargeValue) : altPaymentLocale(surchargeValue)
    }

    switch surchargeType {
    | FIXED =>
      Some(
        getLocaleStrForSurcharge(
          localeString.surchargeMsgAmountForCard,
          localeString.surchargeMsgAmount,
        ),
      )
    | RATE =>
      Some(
        getLocaleStrForSurcharge(
          localeString.surchargeMsgPercentageForCard,
          localeString.surchargeMsgPercentage,
        ),
      )
    | NONE => None
    }
  }

  let getCardNetwork = (paymentMethodType: PaymentMethodsRecord.paymentMethodTypes) => {
    paymentMethodType.card_networks
    ->Js.Array2.filter(cardNetwork => cardNetwork.card_network === cardBrand)
    ->Belt.Array.get(0)
    ->Belt.Option.getWithDefault(PaymentMethodsRecord.defaultCardNetworks)
  }

  let getSurchargeMessage = () => {
    switch paymentMethodTypes.surcharge_details {
    | Some(surchargeDetails) => surchargeDetails->getMessage
    | None =>
      if paymentMethod === "card" {
        let creditPaymentMethodTypes = getPaymentMethodTypes("credit")

        let debitCardNetwork = paymentMethodTypes->getCardNetwork
        let creditCardNetwork = creditPaymentMethodTypes->getCardNetwork

        switch (debitCardNetwork.surcharge_details, creditCardNetwork.surcharge_details) {
        | (Some(debitSurchargeDetails), Some(creditSurchargeDetails)) =>
          let creditCardSurcharge = creditSurchargeDetails->getSurchargeValue
          let debitCardSurcharge = debitSurchargeDetails->getSurchargeValue

          if creditCardSurcharge >= debitCardSurcharge {
            creditSurchargeDetails->getMessage
          } else {
            debitSurchargeDetails->getMessage
          }
        | (None, Some(surchargeDetails))
        | (Some(surchargeDetails), None) =>
          surchargeDetails->getMessage
        | (None, None) => None
        }
      } else {
        None
      }
    }
  }

  switch getSurchargeMessage() {
  | Some(surchargeMessage) =>
    <div className="flex items-center text-xs mt-2">
      <Icon name="asterisk" size=8 className="text-red-600 mr-1" />
      <span className="text-left"> {React.string(surchargeMessage)} </span>
    </div>
  | None => React.null
  }
}
