## First Test: Adding Items to Guild Inventory
1. [Failing Test Commit](https://github.com/donedgardo/GuildInventoryWowAddon/commit/306d232b74a1f185e166fe311848ec55751d0b1e)
![Error no GuildInventory exists](./images/Failing first commit.png)
2. Write enough to make it pass [commit](https://github.com/donedgardo/GuildInventoryWowAddon/commit/3dec175f4b0aa04ccca6cf5bebf6ed0ccac9de68)
3. Refactor [commit](https://github.com/donedgardo/GuildInventoryWowAddon/commit/e7ce1783dc2ba40959a24d234013ea66378eead9)
4. Fail the test by adding the addItem non-existent method[commit](https://github.com/donedgardo/GuildInventoryWowAddon/commit/f0cd4e5b5d4f6da1c2a8091da9f9ec1b155ad960);
![Error no method addItem](./images/Failing%20second.png)
5. Make the test pass by adding the method. [commit](https://github.com/donedgardo/GuildInventoryWowAddon/commit/c12268fd841cf7db1bdd7b725cee97e802c132b9)
6. Refactor? Well it may be premature but I think the signature for addItems should require who is adding the item. 
We can leave this for the next test lets finish up. Ill add this to the list.
7. Failing test on error getItems not found. [commit](https://github.com/donedgardo/GuildInventoryWowAddon/commit/8c1d6104a0829faa82b75091d58361d1a25f532e);
![Error no method getItems](./images/Failing%20third.png)
8. Make test pass by adding method [commit](70d165ccbb95e39b5d53531f37d55519559cda99)
9. Nothing to refactor imo. Lets go to red by making it fail by asserting there is a new item in the inventory.[commit]()

