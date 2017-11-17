view: conversation_assigned_teams {
  sql_table_name: public.conversation_assigned_teams ;;

  dimension: conversation_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.conversation_id ;;
  }

  dimension: team_name {
    type: string
    sql: ${teams.name} ;;

  }

  dimension: team_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.team_id ;;
  }

  measure: count {
    type: count
    drill_fields: [conversations.id, conversations.name, teams.id, teams.name]
  }
}
