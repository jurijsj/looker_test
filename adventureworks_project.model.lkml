connection: "ms_azure_sql_test"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore:  sales_order_detail{
  join: sales_order_header {
    sql_on: ${sales_order_detail.sales_order_id} = ${sales_order_header.sales_order_id};;
    relationship: many_to_one
  }
  join: product {
    sql_on: ${sales_order_detail.product_id} = ${product.product_id};;
    relationship: many_to_one
  }
}

explore:  sales_order_header {
  join: customer{
    sql_on: ${sales_order_header.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }
}
