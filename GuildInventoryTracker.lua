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
    return { 123 };
end

return GuildInventory