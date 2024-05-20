GMGenie.Gems = {};

local gemIDs = {
    ["Strenght"] = 75000,
    ["AttackPower"] = 75001,
    ["Agility"] = 75002,
    ["Spellp"] = 75003,
    ["Stamina"] = 75004,
    ["Resilience"] = 75005,
    ["Haste"] = 75006,
    ["Hit"] = 75007,
    ["Critical"] = 75008,
    ["HasteStamina"] = 75009
}

function AddGem(gemType)
    local gemID = gemIDs[gemType]
    if not gemID then
        GMGenie.showGMMessage("Invalid gem type: " .. tostring(gemType))
        return
    end
    if UnitName("target") == UnitName("player") or UnitName("target") == nil then
        local gammount = GemsAmmount:GetText()
        GemsAmmount:ClearFocus()
        SendChatMessage(".additem " .. gemID .. " " .. gammount, "GUILD")
    else
        GMGenie.showGMMessage("Be sure to target yourself before clicking.")
    end
end

function DelGemsBags()
    if UnitName("target") == UnitName("player") or UnitName("target") == nil then
        local gammount = GemsAmmount:GetText();
        GemsAmmount:ClearFocus();
        SendChatMessage(".additem 75006 -1000" .. gammount, "GUILD");
        SendChatMessage(".additem 75002 -1000" .. gammount, "GUILD");
        SendChatMessage(".additem 75009 -1000" .. gammount, "GUILD");
        SendChatMessage(".additem 75000 -1000" .. gammount, "GUILD");
        SendChatMessage(".additem 75001 -1000" .. gammount, "GUILD");
        SendChatMessage(".additem 75003 -1000" .. gammount, "GUILD");
        SendChatMessage(".additem 75005 -1000" .. gammount, "GUILD");
        SendChatMessage(".additem 75007 -1000" .. gammount, "GUILD");
        SendChatMessage(".additem 75008 -1000" .. gammount, "GUILD");
        SendChatMessage(".additem 75004 -1000" .. gammount, "GUILD");
    else
        GMGenie.showGMMessage("Be sure to target yourself before click.");
    end
end

function GMGenie.Gems.toggle()
    local frame = GMGenie_Gems_Main;
    if frame:IsVisible() then
        frame:Hide();
    else
        frame:Show();
    end
end

