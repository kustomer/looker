view: customer_active_users {
  sql_table_name: public.customer_active_users ;;

  dimension: customer_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [customers.id, customers.name, users.id, users.name]
  }
}
