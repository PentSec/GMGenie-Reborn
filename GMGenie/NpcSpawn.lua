GMGenie.NpcSpawn = {};

function mk_morph()
    local DisPID = _G["DisPID"]
    local currentID = tonumber(DisPID:GetText())
    local recentAura = currentID - 1
    SendChatMessage(".demorph")
    currentID = currentID + 1
    SendChatMessage(".demorph")
    SendChatMessage(".morph " .. currentID)
    DisPID:SetText(tostring(currentID))
end

function mk_reversemorph()
    local DisPID = _G["DisPID"]
    local currentID = tonumber(DisPID:GetText())
    local recentAura = currentID
    SendChatMessage(".demorph")
    currentID = currentID - 1
    SendChatMessage(".demorph")
    SendChatMessage(".morph " .. currentID)
    DisPID:SetText(tostring(currentID))
end

local function SendChatMessageDelayed(message, delay)
    C_Timer.After(delay, function()
        SendChatMessage(message)
    end)
end

function mk_aura()
    local DisPID = _G["DisPID"]
    local currentID = tonumber(DisPID:GetText())
    local recentAura = currentID - 1
    SendChatMessage(".unaura " .. recentAura)
    SendChatMessage(".aura " .. currentID)
    currentID = currentID + 1
    DisPID:SetText(tostring(currentID))
end

function reverse_aura()
    local DisPID = _G["DisPID"]
    local currentID = tonumber(DisPID:GetText())
    local recentAura = currentID
    SendChatMessage(".unaura " .. recentAura)
    currentID = currentID - 1
    SendChatMessage(".aura " .. currentID)
    DisPID:SetText(tostring(currentID))
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

