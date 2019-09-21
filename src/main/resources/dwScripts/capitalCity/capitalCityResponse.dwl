%dw 1.0
%output application/json
---
{
  "capitalCity": payload.CapitalCityResponse.CapitalCityResult
}
