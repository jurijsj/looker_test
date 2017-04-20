view: product_model {
  sql_table_name: SalesLT.ProductModel ;;

  dimension: product_model_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductModelID ;;
  }

  dimension: catalog_description {
    type: string
    sql: ${TABLE}.CatalogDescription ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: rowguid {
    type: string
    sql: ${TABLE}.rowguid ;;
  }

  measure: count {
    type: count
    drill_fields: [product_model_id, name, product.count, product_model_product_description.count, v_product_model_catalog_description.count]
  }
}
