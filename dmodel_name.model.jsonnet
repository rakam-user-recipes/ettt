{
  name: "dmodel_name",
  hidden: false,
  target: {
    database: "segment",
    schema: "rakam_ui",
    table: "dtest"
  },
  dbt: {
    config: {
      materialized: "table"
    },
    model: "select 1",
    updateInterval: "PT1H"
  },
  mappings: { }
}