# Making a List

When practicing TDD it is useful to do very light design upfront.

Here is the story that encapsulates what the addon we are going to write
is solving.

> As a guild playing classic hardcore with a rule that only trades are 
possible between guild members, no auction house or mailbox allowed,
I want to be able to track what recipes have dropped across guild members 
so that I can safely decide if I should vendor or trade it with a guild crafter.

Based on  this story lets generate a few list of test we can create:
- Be able to add items to local guild inventory for player.
- Be able to remove items to local guild inventory from player.
- When character receives item broadcast it to other players.
- When receiving broadcast of items received from other player update local guild inventory.
- When character removes item broadcast it to other players.
- When receiving broadcast of items removed from other player update local guild inventory.
- Periodically broadcast local guild inventory hash and last updated timestamp.
- When receiving guild inventory hash that doesn't match my local state request inventory state.



