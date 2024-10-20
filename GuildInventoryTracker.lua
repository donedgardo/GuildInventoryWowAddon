GuildInventory = {};
GuildInventory.__index = GuildInventory;

function GuildInventory:new()
  local self = setmetatable({}, GuildInventory)
  self.items = {};
  return self;
end

function GuildInventory:addItem(itemId, player)
  table.insert(self.items, { id = itemId, player = player });
  return ;
end

function GuildInventory:getItems()
  return self.items;
end

function GuildInventory:getPlayerItems(player)
  local playerItems = {};
  for i = 1, #self.items do
    if self.items[i].player == player then
      table.insert(playerItems, self.items[i]);
    end
  end
  return playerItems
end

function GuildInventory:removeItem(itemId, player)
  for i = 1, #self.items do
    local item = self.items[i];
    if item.player == player and item.id == itemId then
      table.remove(self.items, i);
    end
  end
end

return GuildInventory