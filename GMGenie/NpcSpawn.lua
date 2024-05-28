GMGenie.NpcSpawn = {};

local type_Display = false;
function mk_morph(ID)
    SendChatMessage(".demorph");
    SendChatMessage(".morph " .. ID);
end

local currentID = nil
local function SendChatMessageDelayed(message, delay)
    C_Timer.After(delay, function()
        SendChatMessage(message)
    end)
end

function mk_aura()
    local DisPID = _G["DisPID"]
    local id = tonumber(DisPID:GetText())
    if currentID then
        SendChatMessageDelayed(".unaura " .. currentID, 0)
    end
    currentID = id
    SendChatMessageDelayed(".aura " .. currentID, 0.5)
    local newID = currentID + 1
    DisPID:SetText(tostring(newID))
end

local function AddItemAndIncreaseID()
    local StatusAdd = _G["StatusAdd"]
    local DisPID = _G["DisPID"]
    if not StatusAdd or not DisPID then
        print("StatusAdd or DisPID not found")
        return
    end
    local Status = StatusAdd:GetText()
    local MyID = tonumber(DisPID:GetText())
    if not MyID then
        print("MyID is not a valid number")
        return
    end
    if Status == "1" then
        StatusAdd:SetText("0")
        local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemCount, itemEquipLoc,
            itemTexture = GetItemInfo(MyID)
        DressUpItemLink(MyID)
        print("|cffff00ff|Hitem:" .. MyID .. "::::::::::::|h[Item: " .. MyID .. "]|h|r")
        SendChatMessage(".add " .. MyID .. " -1")
        MyID = MyID + 1
        DisPID:SetText(tostring(MyID))
    else
        StatusAdd:SetText("1")
        local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemCount, itemEquipLoc,
            itemTexture = GetItemInfo(MyID)
        SendChatMessage(".add " .. MyID)
    end
end

_G["AddItemAndIncreaseID"] = AddItemAndIncreaseID

function GMGenie.NpcSpawn.toggle()
    local frame = GMGenie_NpcSpawn_Main;
    if frame:IsVisible() then
        frame:Hide();
    else
        frame:Show();
    end
end

