view: sales_order_header {
  sql_table_name: SalesLT.SalesOrderHeader ;;

  dimension: account_number {
    type: string
    sql: ${TABLE}.AccountNumber ;;
  }

  dimension: bill_to_address_id {
    type: number
    sql: ${TABLE}.BillToAddressID ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.Comment ;;
  }

  dimension: credit_card_approval_code {
    type: string
    sql: ${TABLE}.CreditCardApprovalCode ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension_group: due {
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
    sql: ${TABLE}.DueDate ;;
  }

  dimension: freight {
    type: string
    sql: ${TABLE}.Freight ;;
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

  dimension: online_order_flag {
    type: string
    sql: ${TABLE}.OnlineOrderFlag ;;
  }

  dimension_group: order {
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
    sql: ${TABLE}.OrderDate ;;
  }

  dimension: purchase_order_number {
    type: string
    sql: ${TABLE}.PurchaseOrderNumber ;;
  }

  dimension: revision_number {
    type: number
    sql: ${TABLE}.RevisionNumber ;;
  }

  dimension: rowguid {
    type: string
    sql: ${TABLE}.rowguid ;;
  }

  dimension: sales_order_id {
    type: number
    sql: ${TABLE}.SalesOrderID ;;
  }

  dimension: sales_order_number {
    type: string
    sql: ${TABLE}.SalesOrderNumber ;;
  }

  dimension_group: ship {
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
    sql: ${TABLE}.ShipDate ;;
  }

  dimension: ship_method {
    type: string
    sql: ${TABLE}.ShipMethod ;;
  }

  dimension: ship_to_address_id {
    type: number
    sql: ${TABLE}.ShipToAddressID ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.Status ;;
  }

  measure: sub_total {
    type: sum
    sql: ${TABLE}.SubTotal ;;
  }

  measure: tax_amt {
    type: sum
    sql: ${TABLE}.TaxAmt ;;
  }

  measure: total_due {
    type: sum
    sql: ${TABLE}.TotalDue ;;
  }

  measure: count {
    type: count
    drill_fields: [customer.customer_id, customer.first_name, customer.middle_name, customer.last_name, customer.company_name]
  }
}
