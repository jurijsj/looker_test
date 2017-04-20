view: address {
  sql_table_name: SalesLT.Address ;;

  dimension: address_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AddressID ;;
  }

  dimension: address_line1 {
    type: string
    sql: ${TABLE}.AddressLine1 ;;
  }

  dimension: address_line2 {
    type: string
    sql: ${TABLE}.AddressLine2 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}.CountryRegion ;;
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

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: rowguid {
    type: string
    sql: ${TABLE}.rowguid ;;
  }

  dimension: state_province {
    type: string
    sql: ${TABLE}.StateProvince ;;
  }

  measure: count {
    type: count
    drill_fields: [address_id, customer_address.count]
  }
}
