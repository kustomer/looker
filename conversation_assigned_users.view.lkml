view: conversation_assigned_users {
  sql_table_name: public.conversation_assigned_users ;;

  dimension: conversation_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.conversation_id ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: name {
    type: string
    # hidden: yes
    sql: ${users.name} ;;
  }


  measure: count {
    type: count
    drill_fields: [conversations.id, conversations.name, users.id, users.name]
  }
}
