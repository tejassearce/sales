connection: "demo"

# include all the views
include: "/views/**/*.view"

datagroup: sales_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sales_default_datagroup

explore: review_parquet {}

explore: review_bigquery_using_csvfile {}

explore: review_001 {}

explore: incidents_2008 {}

explore: looker_demo_main {}

explore: review_avro {}

explore: austin_2009 {}

explore: review_of_load_data_from_excel_to_big_query_using_cloud_storage {}

explore: incidents_2010 {}

explore: incidents_2009 {}


  explore: liquor_sales {

    label: "sold by city"
    join: liquor_sales_yearly {
      type: inner
      relationship: one_to_one
      sql_on: ${liquor_sales.county} = ${liquor_sales_yearly.county} ;;
  }
}

explore: incidents_2011 {}

explore: liquor_sales_yearly {}

explore: pop_2010 {}

explore: pop_2000 {}

explore: zip_codes {}
