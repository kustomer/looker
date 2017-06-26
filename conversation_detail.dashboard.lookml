- dashboard: conversation_detail
  title: Conversation Detail
  layout: newspaper
  elements:
  - name: Conversation Detail
    title: Conversation Detail
    model: kustomer
    explore: messages
    type: table
    fields:
    - messages.id
    - messages.sent_time
    - messages.customer_id
    - customers.name
    - messages.channel
    - messages.direction
    - messages.status
    - messages.response_time
    sorts:
    - messages.sent_time
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Conversation ID: conversations.id
    row: 0
    col: 7
    width: 17
    height: 8
  - name: Conversation Info
    title: Conversation Info
    model: kustomer
    explore: conversations
    type: looker_single_record
    fields:
    - conversations.name
    - conversations.outbound_message_count
    - conversations.status
    - conversations.tags
    - conversations.assigned_teams
    - conversations.assigned_users
    sorts:
    - conversations.name
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Conversation ID: conversations.id
    row: 0
    col: 0
    width: 7
    height: 8
  filters:
  - name: Conversation ID
    title: Conversation ID
    type: field_filter
    default_value: ''
    model: kustomer
    explore: conversations
    field: conversations.id
    listens_to_filters: []
    allow_multiple_values: true
