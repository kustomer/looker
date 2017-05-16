view: users {
  sql_table_name: public.users ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, conversation_assigned_users.count, customer_active_users.count, customer_watchers.count]
  }
}
