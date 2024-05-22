select id, name
from {{ ref('characters') }}
where name ilike 'prof. %' or name ilike 'professor %'
