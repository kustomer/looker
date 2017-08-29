connection: "prod1datastreamdemo"
# connection: "prod1-data-stream"



# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: conversation_assigned_teams {
  join: conversations {
    type: left_outer
    sql_on: ${conversation_assigned_teams.conversation_id} = ${conversations.id} ;;
    relationship: many_to_one
  }

  join: teams {
    type: left_outer
    sql_on: ${conversation_assigned_teams.team_id} = ${teams.id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${conversations.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

}

explore: conversation_assigned_users {
  join: conversations {
    type: left_outer
    sql_on: ${conversation_assigned_users.conversation_id} = ${conversations.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${conversation_assigned_users.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${conversations.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: conversation_tags {
  join: conversations {
    type: left_outer
    sql_on: ${conversation_tags.conversation_id} = ${conversations.id} ;;
    relationship: many_to_one
  }

  join: tags {
    type: left_outer
    sql_on: ${conversation_tags.tag_id} = ${tags.id} ;;
    relationship: many_to_one
  }

  join: customers {
    type: left_outer
    sql_on: ${conversations.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: conversations {
  join: customers {
    type: left_outer
    sql_on: ${conversations.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

  join: conversation_tags {
    type: left_outer
    sql_on: ${conversations.id} = ${conversation_tags.conversation_id} ;;
    relationship: one_to_many
  }

  join: tags {
    type: left_outer
    sql_on: ${conversation_tags.tag_id} = ${tags.id} ;;
    relationship: many_to_one

  }

  join: conversation_assigned_teams {
    type: left_outer
    sql_on:  ${conversations.assigned_teams} = ${conversation_assigned_teams.team_id} ;;
    relationship: one_to_many
  }

  join: teams {
    type: left_outer
    sql_on: ${conversation_assigned_teams.team_id} = ${teams.id} ;;
    relationship: many_to_one

  }

}

explore: customer_active_users {
  join: customers {
    type: left_outer
    sql_on: ${customer_active_users.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${customer_active_users.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: customer_watchers {
  join: customers {
    type: left_outer
    sql_on: ${customer_watchers.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${customer_watchers.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: customers {}

explore: events {
  join: customers {
    type: left_outer
    sql_on: ${events.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
}

explore: messages {
  join: customers {
    type: left_outer
    sql_on: ${messages.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }

  join: conversations {
    type: left_outer
    sql_on: ${messages.conversation_id} = ${conversations.id} ;;
    relationship: many_to_one
  }
}

explore: tags {}

explore: teams {}

explore: users {}
