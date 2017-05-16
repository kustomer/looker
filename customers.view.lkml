view: customers {
  sql_table_name: public.customers ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: active_users {
    type: string
    sql: ${TABLE}.active_users ;;
  }

  dimension: conversation_counts_all {
    type: number
    sql: ${TABLE}.conversation_counts_all ;;
  }

  dimension: conversation_counts_done {
    type: number
    sql: ${TABLE}.conversation_counts_done ;;
  }

  dimension: conversation_counts_open {
    type: number
    sql: ${TABLE}.conversation_counts_open ;;
  }

  dimension: conversation_counts_snoozed {
    type: number
    sql: ${TABLE}.conversation_counts_snoozed ;;
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

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension: deleted {
    type: yesno
    sql: ${TABLE}.deleted ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.external_id ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension_group: last_activity {
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
    sql: ${TABLE}.last_activity_at ;;
  }

  dimension_group: last_customer_activity {
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
    sql: ${TABLE}.last_customer_activity_at ;;
  }

  dimension_group: last_seen {
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
    sql: ${TABLE}.last_seen_at ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified_at ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.modified_by ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: presence {
    type: string
    sql: ${TABLE}.presence ;;
  }

  dimension: progressive_status {
    type: string
    sql: ${TABLE}.progressive_status ;;
  }

  dimension: rev {
    type: number
    sql: ${TABLE}.rev ;;
  }

  dimension: sentiment_confidence {
    type: number
    sql: ${TABLE}.sentiment_confidence ;;
  }

  dimension: sentiment_polarity {
    type: number
    sql: ${TABLE}.sentiment_polarity ;;
  }

  dimension_group: signed_up {
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
    sql: ${TABLE}.signed_up_at ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: watchers {
    type: string
    sql: ${TABLE}.watchers ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      conversations.count,
      customer_active_users.count,
      customer_watchers.count,
      events.count,
      messages.count
    ]
  }
}
