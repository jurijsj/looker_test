view: build_version {
  sql_table_name: dbo.BuildVersion ;;

  dimension: database_version {
    type: string
    sql: ${TABLE}."Database Version" ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ModifiedDate ;;
  }

  dimension: system_information_id {
    type: number
    sql: ${TABLE}.SystemInformationID ;;
  }

  dimension_group: version {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.VersionDate ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
