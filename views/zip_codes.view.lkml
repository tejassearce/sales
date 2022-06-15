view: zip_codes {
  sql_table_name: `review_01.zip_codes`
    ;;

  dimension_group: _partitiondate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }

  dimension: area_land_meters {
    type: number
    sql: ${TABLE}.area_land_meters ;;
  }

  dimension: area_water_meters {
    type: number
    sql: ${TABLE}.area_water_meters ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: fips_class_code {
    type: string
    sql: ${TABLE}.fips_class_code ;;
  }

  dimension: functional_status {
    type: string
    sql: ${TABLE}.functional_status ;;
  }

  dimension: internal_point_geom {
    type: string
    sql: ${TABLE}.internal_point_geom ;;
  }

  dimension: internal_point_lat {
    type: number
    sql: ${TABLE}.internal_point_lat ;;
  }

  dimension: internal_point_lon {
    type: number
    sql: ${TABLE}.internal_point_lon ;;
  }

  dimension: mtfcc_feature_class_code {
    type: string
    sql: ${TABLE}.mtfcc_feature_class_code ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.state_code ;;
  }

  dimension: state_fips_code {
    type: string
    sql: ${TABLE}.state_fips_code ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }

  dimension: zip_code_geom {
    type: string
    sql: ${TABLE}.zip_code_geom ;;
  }

  measure: count {
    type: count
    drill_fields: [state_name]
  }
}
