%dw 1.0
%output application/xml
%namespace web http://www.oorsprong.org/websamples.countryinfo
---
{
	web#CapitalCity: {
		web#sCountryISOCode: inboundProperties.'http.uri.params'.isocode as :string
	}
} 