view: events {
  sql_table_name: public.events ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: active_customers_num {
    type: number
    sql: ${TABLE}.active_customers_num ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: customer_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: location_country_name {
    type: string
    sql: ${TABLE}.location_country_name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: org_name_str {
    type: string
    sql: ${TABLE}.org_name_str ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, location_country_name, customers.id, customers.name]
  }
}
