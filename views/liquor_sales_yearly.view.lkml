view: liquor_sales_yearly {
  sql_table_name: `review_01.liquor sales yearly`
    ;;

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: date {
    type: number
    sql: ${TABLE}.Date ;;
  }

  dimension: sale__dollars_ {
    type: number
    sql: ${TABLE}.Sale__Dollars_ ;;
  }

  dimension: volume_sold__gallons_ {
    type: number
    sql: ${TABLE}.Volume_Sold__Gallons_ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
