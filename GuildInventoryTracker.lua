GuildInventory = {};
GuildInventory.__index = GuildInventory;

function GuildInventory:new()
    local self = setmetatable({}, GuildInventory)
    return self;
end

function GuildInventory:addItem(itemId)
    return;
end

return GuildInventory