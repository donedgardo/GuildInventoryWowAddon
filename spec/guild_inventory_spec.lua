local GuildInventory = require('GuildInventoryTracker')

describe("GuildInventory", function()
  local fellowshipInventory;
  before_each(function()
    fellowshipInventory = GuildInventory:new();
  end)
  describe("when adding item for player", function()
    local theRingId = 123;
    local bilbo = "Bilbo Baggins"
    before_each(function()
      fellowshipInventory:addItem(theRingId, bilbo);
    end)
    describe("getting all items", function()
      local items;
      before_each(function()
        items = fellowshipInventory:getItems();
      end)
      it("increases in size by one", function()
        assert.True(#items == 1);
      end)
      it("has the item added", function()
        assert.are.same(items[1].id, theRingId);
      end)
    end)
    describe("adding a second item", function()
      local stingSwordId = 321;
      before_each(function()
        fellowshipInventory:addItem(stingSwordId, bilbo);
        items = fellowshipInventory:getItems();
      end)
      it('increases in size by one', function()
        assert.are.same(#items, 2);
      end)
    end)
    describe("getting items from player", function()
      it("can find added items for player", function()
        local items = fellowshipInventory:getPlayerItems(bilbo);
        assert.are.same(items[1].id, theRingId);
      end)
      it("wont get items from other players", function()
        fellowshipInventory:addItem(444, "Sauron");
        local items = fellowshipInventory:getPlayerItems(bilbo);
        assert.are.same(#items, 1);
      end)
    end)
    describe("removing item from player", function()
      it("decreases guild inventory by one", function()
        fellowshipInventory:removeItem(123, bilbo);
        local items = fellowshipInventory:getItems();
        assert.are.same(#items, 0);
      end)
    end)
  end)
end)