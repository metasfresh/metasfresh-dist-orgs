update c_location
set c_postal_id=data.c_postal_id
from (
  SELECT DISTINCT
    l.c_location_id,
		l.c_country_id,
    l.postal,
    l.city as l_city,
    p.city,
    p.postal,
    p.c_postal_id,
		p.ismanual

  FROM c_location l
  /* link only if postal and city matches 100% */
    left JOIN c_postal p ON trim(l.postal) = trim(p.postal) and l.c_country_id = p.c_country_id and trim(l.city) = trim(p.city)

  WHERE TRUE

) data
where c_location.c_location_id = data.c_location_id
;