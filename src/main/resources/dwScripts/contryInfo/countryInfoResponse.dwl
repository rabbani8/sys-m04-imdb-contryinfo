%dw 1.0
%output application/json
---
({
  "fullCountryInfoResponse": {
    "ISOCode": payload.FullCountryInfoResponse.FullCountryInfoResult.sISOCode ,
    "name": payload.FullCountryInfoResponse.FullCountryInfoResult.sName,
    "capitalCity": payload.FullCountryInfoResponse.FullCountryInfoResult.sCapitalCity,
    "sPhoneCode": payload.FullCountryInfoResponse.FullCountryInfoResult.sPhoneCode,
    "continentCode": payload.FullCountryInfoResponse.FullCountryInfoResult.sContinentCode,
    "currencyISOCode": payload.FullCountryInfoResponse.FullCountryInfoResult.sCurrencyISOCode,
    "countryFlag": payload.FullCountryInfoResponse.FullCountryInfoResult.sCountryFlag,
    "languages": {
    	ISOCode : payload.FullCountryInfoResponse.FullCountryInfoResult.Languages.tLanguage.sISOCode ,
    	name: payload.FullCountryInfoResponse.FullCountryInfoResult.Languages.tLanguage.sName 
    },
    expirydate: '${expirydate}'
    //contryInfo_details:flowVar.contryInfo_var 
    
    }
} ) when payload.FullCountryInfoResponse.FullCountryInfoResult.sISOCode? otherwise 
{
  "errors": [
    {
      "code": "INVALID_ISoCode",
      "description": "Country not found in the database.please valid ISOCode"
    }
  ]
}