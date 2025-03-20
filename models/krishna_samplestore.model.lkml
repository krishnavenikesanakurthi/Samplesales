connection: "bigquery_samplestore"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: krishna_samplestore_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: krishna_samplestore_default_datagroup

explore: superstore_sales {}

