- dashboard: conversation_dashboard
  title: Conversation Dashboard
  layout: newspaper
  elements:
  - name: Customers,  Conversations, Message Count (Daily)
    title: Customers,  Conversations, Message Count (Daily)
    model: kustomer
    explore: messages
    type: looker_line
    fields:
    - messages.created_date
    - customers.count
    - messages.count
    - conversations.count
    fill_fields:
    - messages.created_date
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
    show_view_names: false
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
    row: 30
    col: 0
    width: 13
    height: 6
  - name: "# of Weekly Conversations"
    title: "# of Weekly Conversations"
    model: kustomer
    explore: conversations
    type: single_value
    fields:
    - conversations.count
    filters:
      conversations.created_week: 7 days
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    hidden_fields:
    single_value_title: Conversations in the past 7 days
    note_state: collapsed
    note_display: below
    note_text: ''
    row: 0
    col: 0
    width: 6
    height: 4
  - name: Weekly Conversation Metrics
    type: text
    title_text: Weekly Conversation Metrics
    subtitle_text: ''
    body_text: ''
    row: 4
    col: 0
    width: 24
    height: 2
  - name: Tag Usage, Last 4 Weeks - Chart
    title: Tag Usage, Last 4 Weeks - Chart
    model: kustomer
    explore: conversations
    type: table
    fields:
    - tags.name
    - conversations.count
    filters:
      conversations.created_week: 4 weeks
      tags.name: "-NULL"
    sorts:
    - conversations.count desc
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
    value_labels: legend
    label_type: labPer
    show_null_points: true
    point_style: circle
    interpolation: linear
    series_types: {}
    hidden_fields: []
    listen:
      Date: conversations.created_date
    row: 36
    col: 13
    width: 11
    height: 4
  - name: Daily Conversations by Tag
    title: Daily Conversations by Tag
    model: kustomer
    explore: conversations
    type: looker_column
    fields:
    - conversations.created_date
    - conversations.count
    - tags.name
    pivots:
    - tags.name
    fill_fields:
    - conversations.created_date
    filters:
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
    listen:
      Date: conversations.created_date
    row: 30
    col: 13
    width: 11
    height: 6
  - name: Conversations Created by Channel (weekly)
    title: Conversations Created by Channel (weekly)
    model: kustomer
    explore: conversations
    type: looker_column
    fields:
    - conversations.created_week
    - conversations.channels
    - conversations.count
    pivots:
    - conversations.channels
    fill_fields:
    - conversations.created_week
    filters:
      conversations.channels: "-NULL"
      conversations.created_week: 4 weeks
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
    show_view_names: false
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
    listen:
      Date: conversations.created_date
    row: 6
    col: 0
    width: 11
    height: 7
  - name: Conversation Status by Week
    title: Conversation Status by Week
    model: kustomer
    explore: conversations
    type: looker_column
    fields:
    - conversations.created_week
    - conversations.count
    - conversations.status
    pivots:
    - conversations.status
    fill_fields:
    - conversations.created_week
    filters:
      conversations.created_time: 4 weeks
    sorts:
    - conversations.created_week desc
    - conversations.status
    limit: 500
    column_limit: 50
    stacking: percent
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: circle
    interpolation: linear
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
    hidden_fields: []
    listen:
      Date: conversations.created_date
    row: 6
    col: 11
    width: 13
    height: 7
  - name: Daily Inbound Conversation by Channel
    title: Daily Inbound Conversation by Channel
    model: kustomer
    explore: conversations
    type: table
    fields:
    - conversations.created_date
    - conversations.channels
    - conversations.count
    pivots:
    - conversations.channels
    filters:
      conversations.channels: "-NULL"
      conversations.created_time: 4 days
    sorts:
    - conversations.count desc 0
    - conversations.channels
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
      Date: conversations.created_date
    row: 36
    col: 0
    width: 13
    height: 4
  - name: Week over Week Change in Conversation Count
    title: Week over Week Change in Conversation Count
    model: kustomer
    explore: conversations
    type: looker_line
    fields:
    - conversations.created_week
    - conversations.count
    fill_fields:
    - conversations.created_week
    filters:
      conversations.channels: ''
      conversations.created_week: 4 weeks
    sorts:
    - conversations.created_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: change_wow
      label: change WoW
      expression: "(${conversations.count}-offset(${conversations.count},1))/offset(${conversations.count},1)"
      value_format:
      value_format_name: percent_0
    - table_calculation: conversation_count
      label: Conversation Count
      expression: "${conversations.count}"
      value_format:
      value_format_name:
    stacking: ''
    show_value_labels: true
    label_density: 24
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
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
    series_types:
      conversations.count: column
      conversation_count: column
    y_axes:
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: true
      valueFormat:
      series:
      - id: change_wow
        name: change WoW
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: true
      valueFormat:
      series:
      - id: conversation_count
        name: Conversation Count
    hidden_series: []
    colors:
    - 'palette: Looker Classic'
    series_colors: {}
    show_dropoff: false
    hide_legend: true
    x_axis_reversed: true
    reference_lines: []
    hidden_fields:
    - conversations.count
    listen:
      Date: conversations.created_date
    row: 13
    col: 0
    width: 11
    height: 8
  - name: Average Hours to Respond and Conversation Count
    title: Average Hours to Respond and Conversation Count
    model: kustomer
    explore: conversations
    type: looker_column
    fields:
    - conversations.created_week
    - conversations.average_time_to_first_response
    - conversations.count
    fill_fields:
    - conversations.created_week
    filters:
      conversations.channels: "-NULL"
      conversations.created_week: 4 weeks
    sorts:
    - conversations.created_week
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    series_types:
      conversations.average_time_to_first_response: line
    hidden_fields: []
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: conversations.count
        name: Conversations Count
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: conversations.average_time_to_first_response
        name: Conversations Average Time to First Response
    listen:
      Date: conversations.created_date
    row: 13
    col: 11
    width: 13
    height: 8
  - name: Conversations Avg Minutes to 1st Completion
    title: Conversations Avg Minutes to 1st Completion
    model: kustomer
    explore: conversations
    type: looker_line
    fields:
    - conversations.modified_week
    - conversations.average_time_to_first_completion
    - conversations.count
    filters:
      conversations.created_time: 6 weeks
      conversations.status: done
      conversations.time_to_first_completion: ">0"
      conversations.count: ">0"
    sorts:
    - conversations.modified_week
    limit: 100
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
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
    hidden_fields:
    - conversations.time_to_first_completion_m
    series_types:
      conversations.count: column
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: conversations.count
        name: Conversations Count
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: conversations.average_time_to_first_completion
        name: Conversations Average Time to First Completion
    listen:
      Date: conversations.created_date
    row: 21
    col: 0
    width: 24
    height: 7
  - name: Conversations Done
    title: Conversations Done
    model: kustomer
    explore: conversations
    type: single_value
    fields:
    - conversations.count_done
    - conversations.count
    filters:
      conversations.created_date: 7 days
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
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
    series_types: {}
    row: 0
    col: 6
    width: 6
    height: 4
  - name: Conversations Snoozed
    title: Conversations Snoozed
    model: kustomer
    explore: conversations
    type: single_value
    fields:
    - conversations.count_snoozed
    - conversations.count
    filters:
      conversations.created_date: 7 days
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
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
    series_types: {}
    row: 0
    col: 12
    width: 6
    height: 4
  - name: Conversations Last Week
    title: Conversations Last Week
    model: kustomer
    explore: conversations
    type: single_value
    fields:
    - conversations.count
    - conversations.created_week
    fill_fields:
    - conversations.created_week
    filters:
      conversations.created_week: 2 weeks ago for 2 weeks
    sorts:
    - conversations.created_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: weekly_change
      label: Weekly Change
      expression: "${conversations.count} - offset(${conversations.count},1)"
      value_format:
      value_format_name:
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields:
    single_value_title: Conversations Last Week
    row: 0
    col: 18
    width: 6
    height: 4
  - name: Daily Conversation Metrics
    type: text
    title_text: Daily Conversation Metrics
    row: 28
    col: 0
    width: 24
    height: 2
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 4 weeks
    model: kustomer
    explore:
    field:
    listens_to_filters: []
    allow_multiple_values: true
