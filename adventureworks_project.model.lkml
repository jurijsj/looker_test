connection: "ms_azure_sql_test"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: build_version {}

explore: error_log {}
