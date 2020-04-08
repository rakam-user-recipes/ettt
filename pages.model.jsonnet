{
  name: "pages",
  hidden: false,
  target: {
    database: "segment",
    schema: "rakam_ui",
    table: "pages"
  },
  label: "[Segment] Pageview",
  description: "The pageview data that's collected via Segment Javascript SDK",
  category: "akif",
  mappings: {
    eventTimestamp: "received_at",
    incremental: "timestamp",
    userId: "user_id"
  },
  dimensions: {
    anonymous_id: {
      description: "The anonymous ID of the user",
      category: "Event",
      pivot: false,
      type: "string",
      column: "anonymous_id",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    context_campaign_content: {
      label: "Campaign Content",
      category: "Marketing",
      pivot: false,
      type: "string",
      column: "context_campaign_content",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    context_campaign_medium: {
      label: "Campaign Medium",
      category: "Marketing",
      pivot: false,
      type: "string",
      column: "context_campaign_medium",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    context_campaign_name: {
      label: "Campaign Name",
      category: "Marketing",
      pivot: false,
      type: "string",
      column: "context_campaign_name",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    context_campaign_source: {
      label: "Campaign Source",
      category: "Marketing",
      pivot: false,
      type: "string",
      column: "context_campaign_source",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    context_campaign_term: {
      label: "Campaign Term",
      category: "Marketing",
      pivot: false,
      type: "string",
      column: "context_campaign_term",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    context_ip: {
      label: "User Ip",
      category: "Event",
      pivot: false,
      type: "string",
      column: "context_ip",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    context_library_name: {
      label: "Segment Library Name",
      category: "Event",
      pivot: false,
      type: "string",
      column: "context_library_name",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    context_library_version: {
      label: "Segment Library Version",
      category: "Event",
      pivot: false,
      type: "string",
      column: "context_library_version",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    context_page_path: {
      category: "Website",
      pivot: false,
      type: "string",
      column: "context_page_path",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    context_page_referrer: {
      category: "Marketing",
      pivot: false,
      type: "string",
      column: "context_page_referrer",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    context_page_search: {
      category: "Website",
      pivot: false,
      type: "string",
      column: "context_page_search",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    context_page_title: {
      category: "Website",
      pivot: false,
      type: "string",
      column: "context_page_title",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    context_page_url: {
      category: "Website",
      pivot: false,
      type: "string",
      column: "context_page_url",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    context_user_agent: {
      category: "Website",
      pivot: false,
      type: "string",
      column: "context_user_agent",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    device: {
      description: "The device type",
      pivot: false,
      sql: "CASE\n    WHEN lower(context_user_agent) ~~ '%android%'::text THEN 'Android'\n    ELSE replace(split_part(split_part(context_user_agent, '(', 2), ' ', 1), ';', '')\nEND\n",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    device_category: {
      description: "The device category",
      pivot: false,
      sql: "case replace(split_part(split_part(context_user_agent, '(', 2), ' ', 1), ';', '')\n    when 'iPhone' then 'iPhone'\n    when  'Android' then 'Android'\n    when 'iPad' then 'Tablet'\n    when 'iPod' then 'Tablet'\n    when 'Windows' then 'Desktop'\n    when 'Macintosh' then 'Desktop'\n    when 'X11' then 'Desktop'\n    else 'Uncategorized'\nend\n",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    event_text: {
      description: "The name of the event.",
      pivot: false,
      column: "event_text",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    gclid: {
      description: "Google Click Identifier extracted from the referrer url",
      pivot: false,
      sql: "split_part(split_part(replace(replace(referrer, 'http://', ''), 'https://', ''), '/', 1), '?', 1)",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    id: {
      description: "An ID attached to the event at execution time and used for deduplication at the server level.",
      pivot: false,
      column: "id",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    original_timestamp: {
      description: "The original timestamp set by the Segment library at the time the event is created. Keep in mind, this timestamp can be affected by device clock skew.",
      category: "Event",
      pivot: false,
      type: "timestamp",
      column: "original_timestamp",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    page_referrer_host: {
      description: "Referrer host extracted from the referrer url",
      pivot: false,
      sql: "split_part(split_part(replace(replace(referrer, 'http://', ''), 'https://', ''), '/', 1), '?', 1)",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    page_url_host: {
      description: "Host value extracted from the url",
      pivot: false,
      sql: "split_part(split_part(replace(replace(url, 'http://', ''), 'https://', ''), '/', 1), '?', 1)",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    path: {
      label: "Page Path",
      category: "Website",
      pivot: false,
      type: "string",
      column: "path",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    received_at: {
      description: "The UTC timestamp set by the Segment API when the API receives the payload from client or server.",
      category: "Event",
      pivot: false,
      type: "timestamp",
      column: "received_at",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    referrer: {
      category: "Website",
      pivot: false,
      type: "string",
      column: "referrer",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    search: {
      label: "Page Search Parameter",
      category: "Website",
      pivot: false,
      type: "string",
      column: "search",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    sent_at: {
      description: "The UTC timestamp set by library when the Segment API call was sent. This timestamp can be affected by device clock skew.",
      pivot: false,
      column: "sent_at",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    timestamp: {
      description: "UTC-converted timestamp which is set by the Segment library.",
      category: "Event",
      pivot: false,
      type: "timestamp",
      column: "timestamp",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    title: {
      label: "Page Title",
      category: "Website",
      pivot: false,
      type: "string",
      column: "title",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    url: {
      label: "Page URL",
      category: "Website",
      pivot: false,
      type: "string",
      column: "url",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    },
    user_id: {
      category: "Event",
      pivot: false,
      type: "string",
      column: "user_id",
      reportOptions: {
        formatNumbers: true
      },
      hidden: false
    }
  }
}