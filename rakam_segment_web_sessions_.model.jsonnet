{
  name: "rakam_segment_web_sessions_",
  hidden: false,
  target: {
    database: "segment",
    schema: "rakam_ui",
    table: "rakam_segment_web_sessions_"
  },
  mappings: { },
  dimensions: {
    session_id: {
      pivot: false,
      type: "string",
      column: "session_id",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    anonymous_id: {
      pivot: false,
      type: "string",
      column: "anonymous_id",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    utm_source: {
      pivot: false,
      type: "string",
      column: "utm_source",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    utm_content: {
      pivot: false,
      type: "string",
      column: "utm_content",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    utm_medium: {
      pivot: false,
      type: "string",
      column: "utm_medium",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    utm_campaign: {
      pivot: false,
      type: "string",
      column: "utm_campaign",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    utm_term: {
      pivot: false,
      type: "string",
      column: "utm_term",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    first_page_url: {
      pivot: false,
      type: "string",
      column: "first_page_url",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    first_page_url_path: {
      pivot: false,
      type: "string",
      column: "first_page_url_path",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    first_page_url_query: {
      pivot: false,
      type: "string",
      column: "first_page_url_query",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    last_url: {
      pivot: false,
      type: "string",
      column: "last_url",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    last_path: {
      pivot: false,
      type: "string",
      column: "last_path",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    last_search: {
      pivot: false,
      type: "string",
      column: "last_search",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    session_start_tstamp: {
      pivot: false,
      type: "timestamp",
      column: "session_start_tstamp",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    session_end_tstamp: {
      pivot: false,
      type: "timestamp",
      column: "session_end_tstamp",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    duration_in_s_tier: {
      pivot: false,
      type: "string",
      column: "duration_in_s_tier",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    blended_user_id: {
      pivot: false,
      type: "string",
      column: "blended_user_id",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    }
  },
  measures: {
    all_rows: {
      label: "All Records",
      reportOptions: {
        formatNumbers: true
      },
      column: "context_campaign_name",
      aggregation: "count",
      type: "double",
      hidden: false
    }
  }
}