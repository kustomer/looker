view: conversations {
  sql_table_name: public.conversations ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: assigned_teams {
    type: string
    sql: ${TABLE}.assigned_teams ;;
  }

  dimension: assigned_users {
    type: string
    sql: ${TABLE}.assigned_users ;;
  }

  dimension: channels {
    type: string
    sql: ${TABLE}.channels ;;
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

  dimension: created_hour {
    type: date_hour
    sql: ${TABLE}.created_at ;;

  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension: customer_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
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
      hour,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: direction {
    type: string
    sql: ${TABLE}.direction ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.external_id ;;
  }

  dimension: first_response_response_time {
    type: number
    sql: ${TABLE}.first_response_response_time ;;
  }


  dimension:  time_to_first_response {
    sql: datediff(hours, ${created_raw}, ${first_response_sent_raw}) ;;
    type: number
  }
  measure: average_time_to_first_response {
    type: average
    sql: ${time_to_first_response} ;;
    value_format_name: decimal_2
  }



  dimension_group: first_response_sent {
    type: time
    timeframes: [
      raw,
      time,
      date,
      hour,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.first_response_sent_at ;;
  }

  dimension: last_message_direction {
    type: string
    sql: ${TABLE}.last_message_direction ;;
  }

  dimension: message_count {
    type: number
    sql: ${TABLE}.message_count ;;
  }

  measure: avg_conversation_message_count {
    type: average
    sql: ${TABLE}.message_count ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      hour,
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

  dimension: note_count {
    type: number
    sql: ${TABLE}.note_count ;;
  }

  dimension: outbound_message_count {
    type: number
    sql: ${TABLE}.outbound_message_count ;;
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

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
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
      hour,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  measure: outbound_message_count_average {
    type: average
    sql: ${outbound_message_count}  ;;
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
      customers.id,
      customers.name,
      conversation_assigned_teams.count,
      conversation_assigned_users.count,
      conversation_tags.count
    ]
  }
}
