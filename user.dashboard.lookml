- dashboard: Users Dashboard
  layout: newspaper
  elements:
  - name: "# of Customers Assigned to User"
    label: "# of Customers Assigned to User"
    model: kustomer
    explore: conversation_assigned_users
    type: looker_bar
    fields:
    - customers.count
    - conversation_assigned_users.user_id
    - users.name
    sorts:
    - customers.count desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: circle
    interpolation: linear
    value_labels: legend
    label_type: labPer
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - conversation_assigned_users.user_id
    listen: {}
    row: 2
    col: 0
    width: 12
    height: 8
  - name: Users Dashboard
    type: text
    title_text: Users Dashboard
    subtitle_text: User Stats for Your Kustomer Site
    row: 0
    col: 0
    width: 24
    height: 2
