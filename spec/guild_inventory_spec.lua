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
    end)
end)