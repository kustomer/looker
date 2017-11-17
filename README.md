# Looker Block for Kustomer
This block models common shared objects in a Kustomer implementation and is a reference implementation.

Kustomer is a CRM for Support Teams that puts the customer at the center of every interaction. By putting all of the customer's information in one place, Kustomer removes the need to tab to different applications when handling a conversation. Support team members can efficiently and effectively solve the customer's issue while navigating through the customer's timeline.

Learn more about Kustomer at http://www.kustomer.com.

## Standard Kustomer Objects
Here are some standard objects in Kustomer that we've modeled in this Looker block:

- Customers - _typically added through inbound messages_
- Conversations - _groups of one or more messages from a customer_
- Messages - _individual interactions in a conversation_
- Users - _the support team members who answer messages_

We have also added examples to show you how you might manage:

- Tags - _many companies use tags to classify their conversations_
- Teams - _conversations assigned to a team_
- Channels - _conversations arranged by channel_

## Looker Views
This implementation shows you standard tables that you can build from Kustomer's event stream into your Redshift database.

You may choose to build different views to capitalize on custom tags, custom objects (kobjects) or other data in your implementation.

We've focused the exploring in this Looker Block on typical metrics and measures you are looking to analyze in *conversations*, *customers*, and *users*.

## Dashboards
In this Looker implementation of your Kustomer site, you'll see LookML for a conversations dashboard and a users dashboard, roughly corresponding to the views in the block.

Each of these dashboards has sample Looks that demonstrate use of the Kustomer data for reporting - they are examples and will need to be customized for your implementation.

## What do I need to get started
To get data into your Redshift database (or any other database you are using to power Looker), we recommend using either our Event Stream product, our REST API, or a combination of the two. [Snowflake](https://www.snowflake.net/) integration coming soon!

To learn more about the object structure behind Kustomer and to review the API, check out http://dev.kustomer.com or our help site at http://help.kustomer.com.

## What's not included here
This is a reference implementation and not your final reporting instance. Certain items are custom to your Kustomer instance and need to be added by the support team or by your technical team as you consume the Kustomer event stream or Kustomer API.

Not included here are:
- custom objects (Kobjects)
- custom fields mapping to conversations or customers

Please contact our team at support@kustomer.com to get assistance in mapping your custom object fields and custom objects to your Looker instance, or if you need help integrating Kustomer with Looker using a different database.
