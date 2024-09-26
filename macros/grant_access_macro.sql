-- macros/grant_access_macro.sql
{% macro grant_access_macro(user) %}
{% for table in dbt_utils.get_relations_by_prefix(schema=target.schema, prefix='') %}
grant select on {{ table }} to {{ user }};
{% endfor %}
{% endmacro %}
