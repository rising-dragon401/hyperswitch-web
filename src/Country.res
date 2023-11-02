type windowsTimeZones = {
  id: string,
  name: string,
}
type timezoneType = {
  isoAlpha3: string,
  timeZones: array<string>,
  countryName: string,
  isoAlpha2: string,
}
let defaultTimeZone = {
  isoAlpha3: "",
  timeZones: [],
  countryName: "-",
  isoAlpha2: "",
}

let country = [
  {
    isoAlpha3: "AFG",
    timeZones: ["Asia/Kabul"],
    countryName: "Afghanistan",
    isoAlpha2: "AF",
  },
  {
    isoAlpha3: "ALB",
    timeZones: ["Europe/Tirane"],
    countryName: "Albania",
    isoAlpha2: "AL",
  },
  {
    isoAlpha3: "DZA",
    timeZones: ["Africa/Algiers"],
    countryName: "Algeria",
    isoAlpha2: "DZ",
  },
  {
    isoAlpha3: "ARG",
    timeZones: [
      "America/Argentina/Buenos_Aires",
      "America/Argentina/Cordoba",
      "America/Argentina/Salta",
      "America/Argentina/Jujuy",
      "America/Argentina/Tucuman",
      "America/Argentina/Catamarca",
      "America/Argentina/La_Rioja",
      "America/Argentina/San_Juan",
      "America/Argentina/Mendoza",
      "America/Argentina/San_Luis",
      "America/Argentina/Rio_Gallegos",
      "America/Argentina/Ushuaia",
    ],
    countryName: "Argentina",
    isoAlpha2: "AR",
  },
  {
    isoAlpha3: "ARM",
    timeZones: ["Asia/Yerevan"],
    countryName: "Armenia",
    isoAlpha2: "AM",
  },
  {
    isoAlpha3: "AUS",
    timeZones: [
      "Australia/Lord_Howe",
      "Antarctica/Macquarie",
      "Australia/Hobart",
      "Australia/Currie",
      "Australia/Melbourne",
      "Australia/Sydney",
      "Australia/Broken_Hill",
      "Australia/Brisbane",
      "Australia/Lindeman",
      "Australia/Adelaide",
      "Australia/Darwin",
      "Australia/Perth",
      "Australia/Eucla",
    ],
    countryName: "Australia",
    isoAlpha2: "AU",
  },
  {
    isoAlpha3: "AUT",
    timeZones: ["Europe/Vienna"],
    countryName: "Austria",
    isoAlpha2: "AT",
  },
  {
    isoAlpha3: "AZE",
    timeZones: ["Asia/Baku"],
    countryName: "Azerbaijan",
    isoAlpha2: "AZ",
  },
  {
    isoAlpha3: "BHR",
    timeZones: ["Asia/Bahrain"],
    countryName: "Bahrain",
    isoAlpha2: "BH",
  },
  {
    isoAlpha3: "BGD",
    timeZones: ["Asia/Dhaka"],
    countryName: "Bangladesh",
    isoAlpha2: "BD",
  },
  {
    isoAlpha3: "BLR",
    timeZones: ["Europe/Minsk"],
    countryName: "Belarus",
    isoAlpha2: "BY",
  },
  {
    isoAlpha3: "BEL",
    timeZones: ["Europe/Brussels"],
    countryName: "Belgium",
    isoAlpha2: "BE",
  },
  {
    isoAlpha3: "BLZ",
    timeZones: ["America/Belize"],
    countryName: "Belize",
    isoAlpha2: "BZ",
  },
  {
    isoAlpha3: "BTN",
    timeZones: ["Asia/Thimphu"],
    countryName: "Bhutan",
    isoAlpha2: "BT",
  },
  {
    isoAlpha3: "BOL",
    timeZones: ["America/La_Paz"],
    countryName: "Bolivia",
    isoAlpha2: "BO",
  },
  {
    isoAlpha3: "BIH",
    timeZones: ["Europe/Sarajevo"],
    countryName: "Bosnia and Herzegovina",
    isoAlpha2: "BA",
  },
  {
    isoAlpha3: "BWA",
    timeZones: ["Africa/Gaborone"],
    countryName: "Botswana",
    isoAlpha2: "BW",
  },
  {
    isoAlpha3: "BRA",
    timeZones: [
      "America/Noronha",
      "America/Belem",
      "America/Fortaleza",
      "America/Recife",
      "America/Araguaina",
      "America/Maceio",
      "America/Bahia",
      "America/Sao_Paulo",
      "America/Campo_Grande",
      "America/Cuiaba",
      "America/Santarem",
      "America/Porto_Velho",
      "America/Boa_Vista",
      "America/Manaus",
      "America/Eirunepe",
      "America/Rio_Branco",
    ],
    countryName: "Brazil",
    isoAlpha2: "BR",
  },
  {
    isoAlpha3: "BRN",
    timeZones: ["Asia/Brunei"],
    countryName: "Brunei",
    isoAlpha2: "BN",
  },
  {
    isoAlpha3: "BGR",
    timeZones: ["Europe/Sofia"],
    countryName: "Bulgaria",
    isoAlpha2: "BG",
  },
  {
    isoAlpha3: "KHM",
    timeZones: ["Asia/Phnom_Penh"],
    countryName: "Cambodia",
    isoAlpha2: "KH",
  },
  {
    isoAlpha3: "CMR",
    timeZones: ["Africa/Douala"],
    countryName: "Cameroon",
    isoAlpha2: "CM",
  },
  {
    isoAlpha3: "CAN",
    timeZones: [
      "America/St_Johns",
      "America/Halifax",
      "America/Glace_Bay",
      "America/Moncton",
      "America/Goose_Bay",
      "America/Blanc-Sablon",
      "America/Toronto",
      "America/Nipigon",
      "America/Thunder_Bay",
      "America/Iqaluit",
      "America/Pangnirtung",
      "America/Atikokan",
      "America/Winnipeg",
      "America/Rainy_River",
      "America/Resolute",
      "America/Rankin_Inlet",
      "America/Regina",
      "America/Swift_Current",
      "America/Edmonton",
      "America/Cambridge_Bay",
      "America/Yellowknife",
      "America/Inuvik",
      "America/Creston",
      "America/Dawson_Creek",
      "America/Fort_Nelson",
      "America/Vancouver",
      "America/Whitehorse",
      "America/Dawson",
    ],
    countryName: "Canada",
    isoAlpha2: "CA",
  },
  {
    isoAlpha3: "CHL",
    timeZones: ["America/Santiago", "Pacific/Easter"],
    countryName: "Chile",
    isoAlpha2: "CL",
  },
  {
    isoAlpha3: "CHN",
    timeZones: ["Asia/Shanghai", "Asia/Urumqi"],
    countryName: "China",
    isoAlpha2: "CN",
  },
  {
    isoAlpha3: "COL",
    timeZones: ["America/Bogota"],
    countryName: "Colombia",
    isoAlpha2: "CO",
  },
  {
    isoAlpha3: "COD",
    timeZones: ["Africa/Kinshasa", "Africa/Lubumbashi"],
    countryName: "Congo (DRC)",
    isoAlpha2: "CD",
  },
  {
    isoAlpha3: "CRI",
    timeZones: ["America/Costa_Rica"],
    countryName: "Costa Rica",
    isoAlpha2: "CR",
  },
  {
    isoAlpha3: "CIV",
    timeZones: ["Africa/Abidjan"],
    countryName: "Côte d’Ivoire",
    isoAlpha2: "CI",
  },
  {
    isoAlpha3: "HRV",
    timeZones: ["Europe/Zagreb"],
    countryName: "Croatia",
    isoAlpha2: "HR",
  },
  {
    isoAlpha3: "CUB",
    timeZones: ["America/Havana"],
    countryName: "Cuba",
    isoAlpha2: "CU",
  },
  {
    isoAlpha3: "CZE",
    timeZones: ["Europe/Prague"],
    countryName: "Czech Republic",
    isoAlpha2: "CZ",
  },
  {
    isoAlpha3: "DNK",
    timeZones: ["Europe/Copenhagen"],
    countryName: "Denmark",
    isoAlpha2: "DK",
  },
  {
    isoAlpha3: "DJI",
    timeZones: ["Africa/Djibouti"],
    countryName: "Djibouti",
    isoAlpha2: "DJ",
  },
  {
    isoAlpha3: "DOM",
    timeZones: ["America/Santo_Domingo"],
    countryName: "Dominican Republic",
    isoAlpha2: "DO",
  },
  {
    isoAlpha3: "ECU",
    timeZones: ["America/Guayaquil", "Pacific/Galapagos"],
    countryName: "Ecuador",
    isoAlpha2: "EC",
  },
  {
    isoAlpha3: "EGY",
    timeZones: ["Africa/Cairo"],
    countryName: "Egypt",
    isoAlpha2: "EG",
  },
  {
    isoAlpha3: "SLV",
    timeZones: ["America/El_Salvador"],
    countryName: "El Salvador",
    isoAlpha2: "SV",
  },
  {
    isoAlpha3: "ERI",
    timeZones: ["Africa/Asmara"],
    countryName: "Eritrea",
    isoAlpha2: "ER",
  },
  {
    isoAlpha3: "EST",
    timeZones: ["Europe/Tallinn"],
    countryName: "Estonia",
    isoAlpha2: "EE",
  },
  {
    isoAlpha3: "ETH",
    timeZones: ["Africa/Addis_Ababa"],
    countryName: "Ethiopia",
    isoAlpha2: "ET",
  },
  {
    isoAlpha3: "FRO",
    timeZones: ["Atlantic/Faroe"],
    countryName: "Faroe Islands",
    isoAlpha2: "FO",
  },
  {
    isoAlpha3: "FIN",
    timeZones: ["Europe/Helsinki"],
    countryName: "Finland",
    isoAlpha2: "FI",
  },
  {
    isoAlpha3: "FRA",
    timeZones: ["Europe/Paris"],
    countryName: "France",
    isoAlpha2: "FR",
  },
  {
    isoAlpha3: "GEO",
    timeZones: ["Asia/Tbilisi"],
    countryName: "Georgia",
    isoAlpha2: "GE",
  },
  {
    isoAlpha3: "DEU",
    timeZones: ["Europe/Berlin", "Europe/Busingen"],
    countryName: "Germany",
    isoAlpha2: "DE",
  },
  {
    isoAlpha3: "GRC",
    timeZones: ["Europe/Athens"],
    countryName: "Greece",
    isoAlpha2: "GR",
  },
  {
    isoAlpha3: "GRL",
    timeZones: ["America/Godthab", "America/Danmarkshavn", "America/Scoresbysund", "America/Thule"],
    countryName: "Greenland",
    isoAlpha2: "GL",
  },
  {
    isoAlpha3: "GTM",
    timeZones: ["America/Guatemala"],
    countryName: "Guatemala",
    isoAlpha2: "GT",
  },
  {
    isoAlpha3: "HTI",
    timeZones: ["America/Port-au-Prince"],
    countryName: "Haiti",
    isoAlpha2: "HT",
  },
  {
    isoAlpha3: "HND",
    timeZones: ["America/Tegucigalpa"],
    countryName: "Honduras",
    isoAlpha2: "HN",
  },
  {
    isoAlpha3: "HKG",
    timeZones: ["Asia/Hong_Kong"],
    countryName: "Hong Kong SAR",
    isoAlpha2: "HK",
  },
  {
    isoAlpha3: "HUN",
    timeZones: ["Europe/Budapest"],
    countryName: "Hungary",
    isoAlpha2: "HU",
  },
  {
    isoAlpha3: "ISL",
    timeZones: ["Atlantic/Reykjavik"],
    countryName: "Iceland",
    isoAlpha2: "IS",
  },
  {
    isoAlpha3: "IND",
    timeZones: ["Asia/Kolkata", "Asia/Calcutta"],
    countryName: "India",
    isoAlpha2: "IN",
  },
  {
    isoAlpha3: "IDN",
    timeZones: ["Asia/Jakarta", "Asia/Pontianak", "Asia/Makassar", "Asia/Jayapura"],
    countryName: "Indonesia",
    isoAlpha2: "ID",
  },
  {
    isoAlpha3: "IRN",
    timeZones: ["Asia/Tehran"],
    countryName: "Iran",
    isoAlpha2: "IR",
  },
  {
    isoAlpha3: "IRQ",
    timeZones: ["Asia/Baghdad"],
    countryName: "Iraq",
    isoAlpha2: "IQ",
  },
  {
    isoAlpha3: "IRL",
    timeZones: ["Europe/Dublin"],
    countryName: "Ireland",
    isoAlpha2: "IE",
  },
  {
    isoAlpha3: "ISR",
    timeZones: ["Asia/Jerusalem"],
    countryName: "Israel",
    isoAlpha2: "IL",
  },
  {
    isoAlpha3: "ITA",
    timeZones: ["Europe/Rome"],
    countryName: "Italy",
    isoAlpha2: "IT",
  },
  {
    isoAlpha3: "JAM",
    timeZones: ["America/Jamaica"],
    countryName: "Jamaica",
    isoAlpha2: "JM",
  },
  {
    isoAlpha3: "JPN",
    timeZones: ["Asia/Tokyo"],
    countryName: "Japan",
    isoAlpha2: "JP",
  },
  {
    isoAlpha3: "JOR",
    timeZones: ["Asia/Amman"],
    countryName: "Jordan",
    isoAlpha2: "JO",
  },
  {
    isoAlpha3: "KAZ",
    timeZones: ["Asia/Almaty", "Asia/Qyzylorda", "Asia/Aqtobe", "Asia/Aqtau", "Asia/Oral"],
    countryName: "Kazakhstan",
    isoAlpha2: "KZ",
  },
  {
    isoAlpha3: "KEN",
    timeZones: ["Africa/Nairobi"],
    countryName: "Kenya",
    isoAlpha2: "KE",
  },
  {
    isoAlpha3: "KOR",
    timeZones: ["Asia/Seoul"],
    countryName: "Korea",
    isoAlpha2: "KR",
  },
  {
    isoAlpha3: "KWT",
    timeZones: ["Asia/Kuwait"],
    countryName: "Kuwait",
    isoAlpha2: "KW",
  },
  {
    isoAlpha3: "KGZ",
    timeZones: ["Asia/Bishkek"],
    countryName: "Kyrgyzstan",
    isoAlpha2: "KG",
  },
  {
    isoAlpha3: "LAO",
    timeZones: ["Asia/Vientiane"],
    countryName: "Laos",
    isoAlpha2: "LA",
  },
  {
    isoAlpha3: "LVA",
    timeZones: ["Europe/Riga"],
    countryName: "Latvia",
    isoAlpha2: "LV",
  },
  {
    isoAlpha3: "LBN",
    timeZones: ["Asia/Beirut"],
    countryName: "Lebanon",
    isoAlpha2: "LB",
  },
  {
    isoAlpha3: "LBY",
    timeZones: ["Africa/Tripoli"],
    countryName: "Libya",
    isoAlpha2: "LY",
  },
  {
    isoAlpha3: "LIE",
    timeZones: ["Europe/Vaduz"],
    countryName: "Liechtenstein",
    isoAlpha2: "LI",
  },
  {
    isoAlpha3: "LTU",
    timeZones: ["Europe/Vilnius"],
    countryName: "Lithuania",
    isoAlpha2: "LT",
  },
  {
    isoAlpha3: "LUX",
    timeZones: ["Europe/Luxembourg"],
    countryName: "Luxembourg",
    isoAlpha2: "LU",
  },
  {
    isoAlpha3: "MAC",
    timeZones: ["Asia/Macau"],
    countryName: "Macao SAR",
    isoAlpha2: "MO",
  },
  {
    isoAlpha3: "MKD",
    timeZones: ["Europe/Skopje"],
    countryName: "Macedonia, FYRO",
    isoAlpha2: "MK",
  },
  {
    isoAlpha3: "MYS",
    timeZones: ["Asia/Kuala_Lumpur", "Asia/Kuching"],
    countryName: "Malaysia",
    isoAlpha2: "MY",
  },
  {
    isoAlpha3: "MDV",
    timeZones: ["Indian/Maldives"],
    countryName: "Maldives",
    isoAlpha2: "MV",
  },
  {
    isoAlpha3: "MLI",
    timeZones: ["Africa/Bamako"],
    countryName: "Mali",
    isoAlpha2: "ML",
  },
  {
    isoAlpha3: "MLT",
    timeZones: ["Europe/Malta"],
    countryName: "Malta",
    isoAlpha2: "MT",
  },
  {
    isoAlpha3: "MEX",
    timeZones: [
      "America/Mexico_City",
      "America/Cancun",
      "America/Merida",
      "America/Monterrey",
      "America/Matamoros",
      "America/Mazatlan",
      "America/Chihuahua",
      "America/Ojinaga",
      "America/Hermosillo",
      "America/Tijuana",
      "America/Bahia_Banderas",
    ],
    countryName: "Mexico",
    isoAlpha2: "MX",
  },
  {
    isoAlpha3: "MDA",
    timeZones: ["Europe/Chisinau"],
    countryName: "Moldova",
    isoAlpha2: "MD",
  },
  {
    isoAlpha3: "MCO",
    timeZones: ["Europe/Monaco"],
    countryName: "Monaco",
    isoAlpha2: "MC",
  },
  {
    isoAlpha3: "MNG",
    timeZones: ["Asia/Ulaanbaatar", "Asia/Hovd", "Asia/Choibalsan"],
    countryName: "Mongolia",
    isoAlpha2: "MN",
  },
  {
    isoAlpha3: "MNE",
    timeZones: ["Europe/Podgorica"],
    countryName: "Montenegro",
    isoAlpha2: "ME",
  },
  {
    isoAlpha3: "MAR",
    timeZones: ["Africa/Casablanca"],
    countryName: "Morocco",
    isoAlpha2: "MA",
  },
  {
    isoAlpha3: "MMR",
    timeZones: ["Asia/Rangoon"],
    countryName: "Myanmar",
    isoAlpha2: "MM",
  },
  {
    isoAlpha3: "NPL",
    timeZones: ["Asia/Kathmandu"],
    countryName: "Nepal",
    isoAlpha2: "NP",
  },
  {
    isoAlpha3: "NLD",
    timeZones: ["Europe/Amsterdam"],
    countryName: "Netherlands",
    isoAlpha2: "NL",
  },
  {
    isoAlpha3: "NZL",
    timeZones: ["Pacific/Auckland", "Pacific/Chatham"],
    countryName: "New Zealand",
    isoAlpha2: "NZ",
  },
  {
    isoAlpha3: "NIC",
    timeZones: ["America/Managua"],
    countryName: "Nicaragua",
    isoAlpha2: "NI",
  },
  {
    isoAlpha3: "NGA",
    timeZones: ["Africa/Lagos"],
    countryName: "Nigeria",
    isoAlpha2: "NG",
  },
  {
    isoAlpha3: "NOR",
    timeZones: ["Europe/Oslo"],
    countryName: "Norway",
    isoAlpha2: "NO",
  },
  {
    isoAlpha3: "OMN",
    timeZones: ["Asia/Muscat"],
    countryName: "Oman",
    isoAlpha2: "OM",
  },
  {
    isoAlpha3: "PAK",
    timeZones: ["Asia/Karachi"],
    countryName: "Pakistan",
    isoAlpha2: "PK",
  },
  {
    isoAlpha3: "PAN",
    timeZones: ["America/Panama"],
    countryName: "Panama",
    isoAlpha2: "PA",
  },
  {
    isoAlpha3: "PRY",
    timeZones: ["America/Asuncion"],
    countryName: "Paraguay",
    isoAlpha2: "PY",
  },
  {
    isoAlpha3: "PER",
    timeZones: ["America/Lima"],
    countryName: "Peru",
    isoAlpha2: "PE",
  },
  {
    isoAlpha3: "PHL",
    timeZones: ["Asia/Manila"],
    countryName: "Philippines",
    isoAlpha2: "PH",
  },
  {
    isoAlpha3: "POL",
    timeZones: ["Europe/Warsaw"],
    countryName: "Poland",
    isoAlpha2: "PL",
  },
  {
    isoAlpha3: "PRT",
    timeZones: ["Europe/Lisbon", "Atlantic/Madeira", "Atlantic/Azores"],
    countryName: "Portugal",
    isoAlpha2: "PT",
  },
  {
    isoAlpha3: "PRI",
    timeZones: ["America/Puerto_Rico"],
    countryName: "Puerto Rico",
    isoAlpha2: "PR",
  },
  {
    isoAlpha3: "QAT",
    timeZones: ["Asia/Qatar"],
    countryName: "Qatar",
    isoAlpha2: "QA",
  },
  {
    isoAlpha3: "REU",
    timeZones: ["Indian/Reunion"],
    countryName: "Réunion",
    isoAlpha2: "RE",
  },
  {
    isoAlpha3: "ROU",
    timeZones: ["Europe/Bucharest"],
    countryName: "Romania",
    isoAlpha2: "RO",
  },
  {
    isoAlpha3: "RUS",
    timeZones: [
      "Europe/Kaliningrad",
      "Europe/Moscow",
      "Europe/Simferopol",
      "Europe/Volgograd",
      "Europe/Astrakhan",
      "Europe/Samara",
      "Europe/Ulyanovsk",
      "Asia/Yekaterinburg",
      "Asia/Omsk",
      "Asia/Novosibirsk",
      "Asia/Barnaul",
      "Asia/Novokuznetsk",
      "Asia/Krasnoyarsk",
      "Asia/Irkutsk",
      "Asia/Chita",
      "Asia/Yakutsk",
      "Asia/Khandyga",
      "Asia/Vladivostok",
      "Asia/Ust-Nera",
      "Asia/Magadan",
      "Asia/Sakhalin",
      "Asia/Srednekolymsk",
      "Asia/Kamchatka",
      "Asia/Anadyr",
    ],
    countryName: "Russia",
    isoAlpha2: "RU",
  },
  {
    isoAlpha3: "RWA",
    timeZones: ["Africa/Kigali"],
    countryName: "Rwanda",
    isoAlpha2: "RW",
  },
  {
    isoAlpha3: "SAU",
    timeZones: ["Asia/Riyadh"],
    countryName: "Saudi Arabia",
    isoAlpha2: "SA",
  },
  {
    isoAlpha3: "SEN",
    timeZones: ["Africa/Dakar"],
    countryName: "Senegal",
    isoAlpha2: "SN",
  },
  {
    isoAlpha3: "SRB",
    timeZones: ["Europe/Belgrade"],
    countryName: "Serbia",
    isoAlpha2: "RS",
  },
  {
    isoAlpha3: "SGP",
    timeZones: ["Asia/Singapore"],
    countryName: "Singapore",
    isoAlpha2: "SG",
  },
  {
    isoAlpha3: "SVK",
    timeZones: ["Europe/Bratislava"],
    countryName: "Slovakia",
    isoAlpha2: "SK",
  },
  {
    isoAlpha3: "SVN",
    timeZones: ["Europe/Ljubljana"],
    countryName: "Slovenia",
    isoAlpha2: "SI",
  },
  {
    isoAlpha3: "SOM",
    timeZones: ["Africa/Mogadishu"],
    countryName: "Somalia",
    isoAlpha2: "SO",
  },
  {
    isoAlpha3: "ZAF",
    timeZones: ["Africa/Johannesburg"],
    countryName: "South Africa",
    isoAlpha2: "ZA",
  },
  {
    isoAlpha3: "ESP",
    timeZones: ["Europe/Madrid", "Africa/Ceuta", "Atlantic/Canary"],
    countryName: "Spain",
    isoAlpha2: "ES",
  },
  {
    isoAlpha3: "LKA",
    timeZones: ["Asia/Colombo"],
    countryName: "Sri Lanka",
    isoAlpha2: "LK",
  },
  {
    isoAlpha3: "SWE",
    timeZones: ["Europe/Stockholm"],
    countryName: "Sweden",
    isoAlpha2: "SE",
  },
  {
    isoAlpha3: "CHE",
    timeZones: ["Europe/Zurich"],
    countryName: "Switzerland",
    isoAlpha2: "CH",
  },
  {
    isoAlpha3: "SYR",
    timeZones: ["Asia/Damascus"],
    countryName: "Syria",
    isoAlpha2: "SY",
  },
  {
    isoAlpha3: "TWN",
    timeZones: ["Asia/Taipei"],
    countryName: "Taiwan",
    isoAlpha2: "TW",
  },
  {
    isoAlpha3: "TJK",
    timeZones: ["Asia/Dushanbe"],
    countryName: "Tajikistan",
    isoAlpha2: "TJ",
  },
  {
    isoAlpha3: "THA",
    timeZones: ["Asia/Bangkok"],
    countryName: "Thailand",
    isoAlpha2: "TH",
  },
  {
    isoAlpha3: "TTO",
    timeZones: ["America/Port_of_Spain"],
    countryName: "Trinidad and Tobago",
    isoAlpha2: "TT",
  },
  {
    isoAlpha3: "TUN",
    timeZones: ["Africa/Tunis"],
    countryName: "Tunisia",
    isoAlpha2: "TN",
  },
  {
    isoAlpha3: "TUR",
    timeZones: ["Europe/Istanbul"],
    countryName: "Turkey",
    isoAlpha2: "TR",
  },
  {
    isoAlpha3: "TKM",
    timeZones: ["Asia/Ashgabat"],
    countryName: "Turkmenistan",
    isoAlpha2: "TM",
  },
  {
    isoAlpha3: "UKR",
    timeZones: ["Europe/Kiev", "Europe/Uzhgorod", "Europe/Zaporozhye"],
    countryName: "Ukraine",
    isoAlpha2: "UA",
  },
  {
    isoAlpha3: "ARE",
    timeZones: ["Asia/Dubai"],
    countryName: "United Arab Emirates",
    isoAlpha2: "AE",
  },
  {
    isoAlpha3: "GBR",
    timeZones: ["Europe/London"],
    countryName: "United Kingdom",
    isoAlpha2: "GB",
  },
  {
    isoAlpha3: "USA",
    timeZones: [
      "America/New_York",
      "America/Detroit",
      "America/Kentucky/Louisville",
      "America/Kentucky/Monticello",
      "America/Indiana/Indianapolis",
      "America/Indiana/Vincennes",
      "America/Indiana/Winamac",
      "America/Indiana/Marengo",
      "America/Indiana/Petersburg",
      "America/Indiana/Vevay",
      "America/Chicago",
      "America/Indiana/Tell_City",
      "America/Indiana/Knox",
      "America/Menominee",
      "America/North_Dakota/Center",
      "America/North_Dakota/New_Salem",
      "America/North_Dakota/Beulah",
      "America/Denver",
      "America/Boise",
      "America/Phoenix",
      "America/Los_Angeles",
      "America/Anchorage",
      "America/Juneau",
      "America/Sitka",
      "America/Metlakatla",
      "America/Yakutat",
      "America/Nome",
      "America/Adak",
      "Pacific/Honolulu",
    ],
    countryName: "United States",
    isoAlpha2: "US",
  },
  {
    isoAlpha3: "URY",
    timeZones: ["America/Montevideo"],
    countryName: "Uruguay",
    isoAlpha2: "UY",
  },
  {
    isoAlpha3: "UZB",
    timeZones: ["Asia/Samarkand", "Asia/Tashkent"],
    countryName: "Uzbekistan",
    isoAlpha2: "UZ",
  },
  {
    isoAlpha3: "VEN",
    timeZones: ["America/Caracas"],
    countryName: "Venezuela",
    isoAlpha2: "VE",
  },
  {
    isoAlpha3: "VNM",
    timeZones: ["Asia/Ho_Chi_Minh"],
    countryName: "Vietnam",
    isoAlpha2: "VN",
  },
  {
    isoAlpha3: "YEM",
    timeZones: ["Asia/Aden"],
    countryName: "Yemen",
    isoAlpha2: "YE",
  },
  {
    isoAlpha3: "ZWE",
    timeZones: ["Africa/Harare"],
    countryName: "Zimbabwe",
    isoAlpha2: "ZW",
  },
]

let sofortCountries = [
  {
    isoAlpha3: "AUT",
    timeZones: ["Europe/Vienna"],
    countryName: "Austria",
    isoAlpha2: "AT",
  },
  {
    isoAlpha3: "BEL",
    timeZones: ["Europe/Brussels"],
    countryName: "Belgium",
    isoAlpha2: "BE",
  },
  {
    isoAlpha3: "DEU",
    timeZones: ["Europe/Berlin", "Europe/Busingen"],
    countryName: "Germany",
    isoAlpha2: "DE",
  },
  {
    isoAlpha3: "ITA",
    timeZones: ["Europe/Rome"],
    countryName: "Italy",
    isoAlpha2: "IT",
  },
  {
    isoAlpha3: "NLD",
    timeZones: ["Europe/Amsterdam"],
    countryName: "Netherlands",
    isoAlpha2: "NL",
  },
  {
    isoAlpha3: "ESP",
    timeZones: ["Europe/Madrid", "Africa/Ceuta", "Atlantic/Canary"],
    countryName: "Spain",
    isoAlpha2: "ES",
  },
]

let getCountry = paymentMethodName => {
  switch paymentMethodName {
  | "sofort" => sofortCountries
  | _ => country
  }
}
