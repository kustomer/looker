view: conversation_tags {
  sql_table_name: public.conversation_tags ;;

  dimension: conversation_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.conversation_id ;;
  }

  dimension: tag_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.tag_id ;;
  }

  measure: count {
    type: count
    drill_fields: [conversations.id, conversations.name, tags.id, tags.name]
  }
}
