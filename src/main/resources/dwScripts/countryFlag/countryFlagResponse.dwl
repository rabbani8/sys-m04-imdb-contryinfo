%dw 1.0
%output application/json
---

{
  "countryFlag": payload.CountryFlagResponse.CountryFlagResult
}