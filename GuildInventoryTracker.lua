GuildInventory = {};
GuildInventory.__index = GuildInventory;

function GuildInventory:new()
    local self = setmetatable({}, GuildInventory)
    return self;
end

function GuildInventory:addItem(itemId)
    return;
end

function GuildInventory:getItems()
    return { "item" };
end

return GuildInventory