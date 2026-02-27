with cleaned_and_renamed as(
select 
coalesce(trim(URL), 'NA') as url,
coalesce(trim(DATE), 'DD-MM-YYYY') as date_col,
coalesce(trim(TITLE), 'NA') as title,
coalesce(trim(ARTIST), 'NA') as artist,
coalesce(trim(GENDER), 'NA') as gender,
coalesce(trim(MEDIUM), 'NA') as medium,
coalesce(trim(ONVIEW), 'NA') as onview,
coalesce(trim(ENDDATE), 'NA') as end_date,
coalesce(trim(IMAGEURL), 'NA') as image_url,
coalesce(trim(OBJECTID), 'NA') as object_id,
coalesce(trim(ARTISTBIO), 'NA') as artist_bio,
coalesce(trim(BEGINDATE), 'NA') as begin_date,
coalesce(trim(CATALOGED), 'NA') as cataloged,
coalesce(trim(CREDITLINE), 'NA') as credit_line,
coalesce(trim(DEPARTMENT), 'NA') as department,
coalesce(trim("DEPTH (CM)"), 'NA') as depth_cm,
coalesce(trim(DIMENSIONS), 'NA') as dimensions,
coalesce(trim("WIDTH (CM)"), 'NA') as width_cm,
coalesce(trim("HEIGHT (CM)"), 'NA') as height_cm,
coalesce(trim("LENGTH (CM)"), 'NA') as length_cm,
coalesce(trim(NATIONALITY), 'NA') as nationality,
coalesce(trim("WEIGHT (KG)"), 'NA') as weight_kg,
coalesce(trim(DATEACQUIRED), 'NA') as date_acquired,
coalesce(trim(CONSTITUENTID), 'NA') as constituented,
coalesce(trim("DIAMETER (CM)"), 'NA') as diameter_cm,
coalesce(trim(CLASSIFICATION), 'NA') as classification,
coalesce(trim(ACCESSIONNUMBER), 'NA') as accessionnumber,
coalesce(trim("DURATION (SEC.)"), 'NA') as duration_sec,
coalesce(trim("SEAT HEIGHT (CM)"), 'NA') as seat_height_cm,
coalesce(trim("CIRCUMFERENCE (CM)"), 'NA') as circumference_cm

FROM {{ source('source_moma', 'SHEET1') }}
)
SELECT * FROM cleaned_and_renamed
