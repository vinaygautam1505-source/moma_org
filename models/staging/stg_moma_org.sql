with cleaned as(
select 
coalesce(trim(URL), 'NA'),
coalesce(trim(DATE), 'DD-MM-YYYY'),
coalesce(trim(TITLE), 'NA'),
coalesce(trim(ARTIST), 'NA'),
coalesce(trim(GENDER), 'NA'),
coalesce(trim(MEDIUM), 'NA'),
coalesce(trim(ONVIEW), 'NA'),
coalesce(trim(ENDDATE), 'NA'),
coalesce(trim(IMAGEURL), 'NA'),
coalesce(trim(OBJECTID), 'NA'),
coalesce(trim(ARTISTBIO), 'NA'),
coalesce(trim(BEGINDATE), 'NA'),
coalesce(trim(CATALOGED), 'NA'),
coalesce(trim(CREDITLINE), 'NA'),
coalesce(trim(DEPARTMENT), 'NA'),
coalesce(trim("DEPTH (CM)"), 'NA'),
coalesce(trim(DIMENSIONS), 'NA'),
coalesce(trim("WIDTH (CM)"), 'NA'),
coalesce(trim("HEIGHT (CM)"), 'NA'),
coalesce(trim("LENGTH (CM)"), 'NA'),
coalesce(trim(NATIONALITY), 'NA'),
coalesce(trim("WEIGHT (KG)"), 'NA'),
coalesce(trim(DATEACQUIRED), 'NA'),
coalesce(trim(CONSTITUENTID), 'NA'),
coalesce(trim("DIAMETER (CM)"), 'NA'),
coalesce(trim(CLASSIFICATION), 'NA'),
coalesce(trim(ACCESSIONNUMBER), 'NA'),
coalesce(trim("DURATION (SEC.)"), 'NA'),
coalesce(trim("SEAT HEIGHT (CM)"), 'NA'),
coalesce(trim("CIRCUMFERENCE (CM)"), 'NA')

FROM {{ source('source_moma', 'SHEET1') }}
)
SELECT * FROM cleaned
