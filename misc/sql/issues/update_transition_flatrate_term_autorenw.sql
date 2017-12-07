--set transition to autorenw
UPDATE c_flatrate_transition
set isautocompletenewterm='Y', isautorenew='Y'
WHERE name = '<condition name>' and isautocompletenewterm='N'and isautorenew='N';

--create fix table with flatrate terms affected
create table migration_data.fixtablename  as (
    SELECT
    c_flatrate_term_id,  ft.isautorenew
    FROM c_flatrate_term ft
    LEFT JOIN c_flatrate_conditions fc ON fc.c_flatrate_conditions_id = ft.c_flatrate_conditions_id
    LEFT JOIN c_flatrate_transition ftt ON ftt.c_flatrate_transition_id = fc.c_flatrate_transition_id
    WHERE TRUE
    AND ft.c_flatrate_conditions_id=<ID> AND contractstatus != 'Qu' AND ft.isautorenew='N'
    )
     ) as data
where c_flatrate_term.c_flatrate_term_id = data.c_flatrate_term_id;

-- fix flatrate terms 
update c_flatrate_term
set isautorenew='Y'
from (
    SELECT
    c_flatrate_term_id FROM migration_data.fixtablename 
     ) as data
where c_flatrate_term.c_flatrate_term_id = data.c_flatrate_term_id;