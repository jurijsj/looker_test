view: error_log {
  sql_table_name: dbo.ErrorLog ;;

  dimension: error_log_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ErrorLogID ;;
  }

  dimension: error_line {
    type: number
    sql: ${TABLE}.ErrorLine ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.ErrorMessage ;;
  }

  dimension: error_number {
    type: number
    sql: ${TABLE}.ErrorNumber ;;
  }

  dimension: error_procedure {
    type: string
    sql: ${TABLE}.ErrorProcedure ;;
  }

  dimension: error_severity {
    type: number
    sql: ${TABLE}.ErrorSeverity ;;
  }

  dimension: error_state {
    type: number
    sql: ${TABLE}.ErrorState ;;
  }

  dimension_group: error {
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
    sql: ${TABLE}.ErrorTime ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.UserName ;;
  }

  measure: count {
    type: count
    drill_fields: [error_log_id, user_name]
  }
}
