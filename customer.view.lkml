view: customer {
  sql_table_name: SalesLT.Customer ;;

  dimension: customer_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.CompanyName ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.EmailAddress ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.MiddleName ;;
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

  dimension: name_style {
    type: string
    sql: ${TABLE}.NameStyle ;;
  }

  dimension: password_hash {
    type: string
    sql: ${TABLE}.PasswordHash ;;
  }

  dimension: password_salt {
    type: string
    sql: ${TABLE}.PasswordSalt ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: rowguid {
    type: string
    sql: ${TABLE}.rowguid ;;
  }

  dimension: sales_person {
    type: string
    sql: ${TABLE}.SalesPerson ;;
  }

  dimension: suffix {
    type: string
    sql: ${TABLE}.Suffix ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      customer_id,
      first_name,
      middle_name,
      last_name,
      company_name,
      customer_address.count,
      sales_order_header.count
    ]
  }
}
