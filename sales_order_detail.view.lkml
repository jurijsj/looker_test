view: sales_order_detail {
  sql_table_name: SalesLT.SalesOrderDetail ;;

  dimension: sales_order_detail_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SalesOrderDetailID ;;
  }

  dimension: line_total {
    type: number
    sql: ${TABLE}.LineTotal ;;
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

  dimension: order_qty {
    type: number
    sql: ${TABLE}.OrderQty ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
  }

  dimension: rowguid {
    type: string
    sql: ${TABLE}.rowguid ;;
  }

  dimension: sales_order_id {
    type: number
    sql: ${TABLE}.SalesOrderID ;;
  }

  dimension: unit_price {
    type: string
    sql: ${TABLE}.UnitPrice ;;
  }

  dimension: unit_price_discount {
    type: string
    sql: ${TABLE}.UnitPriceDiscount ;;
  }

  measure: count {
    type: count
    drill_fields: [sales_order_detail_id, product.product_id, product.name, product.thumbnail_photo_file_name]
  }
}
