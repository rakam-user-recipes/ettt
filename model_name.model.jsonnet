{
  name: "model_name",
  hidden: false,
  sql: "select 1",
  mappings: { },
  measures: {
    count_all_rows: {
      description: "Counts All Rows",
      aggregation: "count",
      type: "double",
      hidden: false
    },
    sum_of_column: {
      column: "?column?",
      aggregation: "sum",
      type: "double",
      hidden: false
    }
  }
}