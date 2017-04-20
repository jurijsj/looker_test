view: product_category {
  sql_table_name: SalesLT.ProductCategory ;;

  dimension: parent_product_category_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ParentProductCategoryID ;;
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

  dimension: product_category_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductCategoryID ;;
  }

  dimension: rowguid {
    type: string
    sql: ${TABLE}.rowguid ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      parent_product_category_id,
      name,
      product_category.parent_product_category_id,
      product_category.name,
      product.count,
      product_category.count,
      v_get_all_categories.count
    ]
  }
}
