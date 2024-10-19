local GuildInventory = require('GuildInventoryTracker')

describe("GuildInventory", function()
    describe("when adding item for player", function()
        it("increases in size by one", function()
            local fellowshipInventory = GuildInventory:new();
            local theRingId = 123;
            fellowshipInventory.addItem(theRingId);
            local items = fellowshipInventory.getItems();
            assert.True(#items == 1);
        end)
        it("has the item added", function()
            local fellowshipInventory = GuildInventory:new();
            local theRingId = 123;
            fellowshipInventory.addItem(theRingId);
            local items = fellowshipInventory.getItems();
            assert.are.same(items[1].id, theRingId);
        end)
    end)
end)