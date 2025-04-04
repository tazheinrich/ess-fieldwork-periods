# European Social Survey Fieldwork Periods

The [European Social Survey](https://www.europeansocialsurvey.org) (ESS) is a cross-national study conducted every two years in European countries (except for Round 11 in 2023, which was released three years after the previous round). The survey measures attitudes, beliefs, and behavioral patterns among participating populations. Additionally, it includes administrative variables that provide information on fieldwork processes and interview settings.

Many research questions focus on how specific events influence attitudes and behaviors. Fieldwork periods should used to determine the most appropriate survey round for each research purpose. Additionally, fieldwork periods can be used for impute missing interview dates, thereby improving data quality.

This repository provides a reference table with official fieldwork dates for each round and country combination. The data was collected from the official [documentation](https://ess.sikt.no/en/) of the integrated ESS datasets, which include only country-round-combinations that meet predefined data quality standards.

## Fieldwork Periods by ESS round and Country

![European Social Survey fieldwork periods by rounds and country.](output/ess_fieldwork_periods.png)

## Codebook

| Name | Type | Description |
| --- | --- | --- 
| essround | integer | ESS round |
| cntry | string | Country |
| field_start | date | Date when fieldwork started |
| field_end | date | Date when fieldwork ended |




