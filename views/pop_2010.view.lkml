view: pop_2010 {
  sql_table_name: `review_01.pop_2010`
    ;;

  dimension: gender {
    type: string
    description: "male or female. If empty, the row is a total population summary."
    sql: ${TABLE}.gender ;;
  }

  dimension: geo_id {
    type: string
    description: "Geo code"
    sql: ${TABLE}.geo_id ;;
  }

  dimension: maximum_age {
    type: number
    description: "The maximum age in the age range. If null, this indicates the row as having no maximum (such as 85 and over) or the row is a total of the male, female, or overall population."
    sql: ${TABLE}.maximum_age ;;
  }

  dimension: minimum_age {
    type: number
    description: "The minimum age in the age range. If null, this indicates the row as a total for male, female, or overall population."
    sql: ${TABLE}.minimum_age ;;
  }

  dimension: population {
    type: number
    description: "The total count of the population for this segment."
    sql: ${TABLE}.population ;;
  }

  dimension: zipcode {
    type: zipcode
    description: "Five digit ZIP Code Tabulation Area Census Code"
    sql: ${TABLE}.zipcode ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
