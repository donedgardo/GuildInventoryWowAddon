local GuildInventory = require('GuildInventoryTracker')

describe("GuildInventory", function()
    describe("when adding item for player", function()
        it("can be found inside inventory", function()
            local fellowshipInventory = GuildInventory:new();
            local theRingId = 123;
            fellowshipInventory.addItem(theRingId);
            local items = fellowshipInventory.getItems();
        end)
    end)
end)