update ad_language
set issystemlanguage = 'N'
where ad_language in ('nl_NL', 'en_US');
update ad_language
set issystemlanguage = 'Y'
where ad_language in ('fr_CH', 'it_CH');
