- dashboard: conversation
  layout: newspaper
  elements:
  - name: Conversation Metrics
    type: text
    title_text: Conversation Metrics
    subtitle_text: Looks from Conversation Objects in Kustomer
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - name: "# of Weekly Conversations"
    label: "# of Weekly Conversations"
    model: kustomer
    explore: conversations
    type: single_value
    dimensions:
    - conversations.count
    - conversations.created_week
    filters:
      conversations.created_week: 2 weeks
    sorts:
    - conversations.created_week desc
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    hidden_fields:
    single_value_title: Weekly Conversations
    listen:
      Date: conversations.created_date
    note_state: collapsed
    note_display: below
    note_text: ''
    row: 2
    col: 12
    width: 6
    height: 4
  - name: Customers,  Conversations, Message Count (Daily)
    label: Customers,  Conversations, Message Count (Daily)
    model: kustomer
    explore: messages
    type: looker_line
    dimensions:
    - messages.created_date
    - customers.count
    - messages.count
    - conversations.count
    sorts:
    - messages.created_date
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
    show_null_points: true
    point_style: circle
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    series_types: {}
    listen:
      Date: conversations.created_date
    row: 9
    col: 0
    width: 24
    height: 8
  - name: Daily conversations by Tag - Chart
    label: Daily conversations by Tag - Chart
    model: kustomer
    explore: conversations
    type: table
    dimensions:
    - conversations.created_date
    - conversations.count
    - tags.name
    pivots:
    - tags.name
    sorts:
    - tags.name 0
    - conversations.created_date
    limit: 500
    column_limit: 50
    show_view_names: true
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
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    series_types: {}
    listen: {}
    row: 17
    col: 0
    width: 9
    height: 7
  - name: Daily Conversations by Tag
    label: Daily Conversations by Tag
    model: kustomer
    explore: conversations
    type: looker_column
    dimensions:
    - conversations.created_date
    - conversations.count
    - tags.name
    pivots:
    - tags.name
    filters:
      conversations.created_date: 14 days
      tags.name: "-NULL"
    sorts:
    - tags.name 0
    - conversations.created_date
    limit: 500
    column_limit: 50
    stacking: normal
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
    listen: {}
    row: 17
    col: 9
    width: 9
    height: 7
  - name: Conversations Created by Channel (weekly)
    label: Conversations Created by Channel (weekly)
    model: kustomer
    explore: conversations
    type: looker_column
    dimensions:
    - conversations.created_week
    - conversations.channels
    - conversations.count
    pivots:
    - conversations.channels
    filters:
      conversations.created_week: 4 weeks
      conversations.channels: ''
    sorts:
    - conversations.created_week desc
    - conversations.channels
    limit: 500
    column_limit: 50
    stacking: normal
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    point_style: none
    interpolation: linear
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    barColors:
    - red
    - blue
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    value_labels: legend
    label_type: labPer
    series_types: {}
    column_group_spacing_ratio:
    listen: {}
    row: 2
    col: 0
    width: 12
    height: 7
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 7 days
    model: kustomer
    explore:
    field:
    listens_to_filters: []
