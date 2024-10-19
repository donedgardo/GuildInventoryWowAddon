GuildInventory = {};
GuildInventory.__index = GuildInventory;

function GuildInventory:new()
    local self = setmetatable({}, GuildInventory)
    self.items = {};
    return self;
end

function GuildInventory:addItem(itemId)
    table.insert(self.items, {id = itemId});
    return;
end

function GuildInventory:getItems()
    return self.items;
end

return GuildInventory