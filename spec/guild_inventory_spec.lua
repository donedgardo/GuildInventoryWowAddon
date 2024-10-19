local GuildInventory = require('GuildInventoryTracker')

describe("GuildInventory", function()
  local fellowshipInventory;
  before_each(function()
    fellowshipInventory = GuildInventory:new();
  end)
  describe("when adding item for player", function()
    local theRingId = 123;
    before_each(function()
      fellowshipInventory.addItem(theRingId);
    end)
    describe("getting items", function()
      local items;
      before_each(function()
        items = fellowshipInventory.getItems();
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
        fellowshipInventory.addItem(stingSwordId);
        items = fellowshipInventory.getItems();
      end)
      it('increases in size by one', function()
        assert.are.same(#items, 2);
      end)
    end)

  end)
end)