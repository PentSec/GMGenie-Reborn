GMGenie.MasterHelper = {};

local tierIDs = {
    ["MeleeT1"] = {58030, 58031, 58032, 58033, 58034, 58035, 58036, 58037, 58064, 58070, 58071, 58074, 58075, 58078},
    ["SpellT1"] = {58040, 58041, 58042, 58043, 58044, 58045, 58046, 58047, 58065, 58072, 58073, 58076, 58077, 58079},
    ["MeleeT2"] = {58090, 58091, 58092, 58093, 58094, 58095, 58096, 58097, 58110, 58111, 58114, 58115, 58118, 58121},
    ["MeleeT3"] = {58150, 58151, 58152, 58153, 58154, 58155, 58156, 58157, 58170, 58171, 58174, 58175, 58178, 58181},
    ["MeleeT4"] = {58220, 58221, 58222, 58223, 58224, 58225, 58226, 58227, 58240, 58241, 58244, 58245, 58248, 58251},
    ["MeleeT5"] = {58320, 58321, 58322, 58323, 58324, 58325, 58326, 58327, 58340, 58341, 58344, 58345, 58348, 58351},
    ["SpellT2"] = {58100, 58101, 58102, 58103, 58104, 58105, 58106, 58107, 58113, 58116, 58117, 58119, 58120, 58112},
    ["SpellT3"] = {58160, 58161, 58162, 58163, 58164, 58165, 58166, 58167, 58172, 58173, 58176, 58177, 58179, 58180},
    ["SpellT4"] = {58230, 58231, 58232, 58233, 58234, 58235, 58236, 58237, 58242, 58243, 58246, 58247, 58249, 58250},
    ["SpellT5"] = {58330, 58331, 58332, 58333, 58334, 58335, 58336, 58337, 58342, 58343, 58346, 58347, 58349, 58350},
    ["WeaponT1"] = {58050, 58051, 58052, 58053, 58054, 58055, 58056, 58057, 58058, 58059, 58060, 58061, 58062, 58063},
    ["WeaponT2"] = {58130, 58131, 58132, 58133, 58134, 58135, 58136, 58137, 58138, 58139, 58140, 58141, 58142, 58143},
    ["WeaponT3"] = {58200, 58201, 58202, 58203, 58204, 58205, 58206, 58207, 58208, 58209, 58210, 58211, 58212, 58213,
                    58214},
    ["WeaponT4"] = {58260, 58261, 58262, 58263, 58264, 58265, 58266, 58267, 58268, 58269, 58270, 58271, 58272, 58273,
                    58274},
    ["WeaponT5"] = {58360, 58361, 58362, 58363, 58364, 58365, 58366, 58367, 58368, 58369, 58370, 58371, 58372, 58373,
                    58374}
}

function AddTier(tierType)
    local ids = tierIDs[tierType]
    if not ids then
        GMGenie.showGMMessage("Invalid tier type: " .. tostring(tierType))
        return
    end
    if UnitName("target") == UnitName("player") or UnitName("target") == nil then
        GemsAmmount:ClearFocus()
        for _, tierIDs in ipairs(ids) do
            SendChatMessage(".additem " .. tierIDs, "GUILD")
        end
    else
        GMGenie.showGMMessage("Be sure to target yourself before clicking.")
    end
end

function OnPoint()
    if UnitName("target") == UnitName("player") or UnitName("target") == nil then
        GemsAmmount:ClearFocus()
        SendChatMessage(".level 10")
        SendChatMessage(".mod money 50000000")
        SendChatMessage(".additem 58378 4")
        SendChatMessage(".additem 58379 4")
        SendChatMessage(".additem 110001 999")
        SendChatMessage(".additem 58376")
        SendChatMessage(".additem 58377")
        SendChatMessage(".additem 58375")
    else
        GMGenie.showGMMessage("Be sure to target yourself before clicking.")
    end
end

function BuffMe()
    if UnitName("target") == UnitName("player") or UnitName("target") == nil then
        GemsAmmount:ClearFocus()
        SendChatMessage(".aura 82020")
        -- SendChatMessage(".aura 82086")
        SendChatMessage(".aura 82084")
        SendChatMessage(".aura 82083")
        SendChatMessage(".aura 82082")
        SendChatMessage(".aura 82081")
        SendChatMessage(".aura 82096")
        SendChatMessage(".aura 82098")
        GMGenie.showGMMessage("right click to remove buffs")
    else
        GMGenie.showGMMessage("Be sure to target yourself before clicking.")
    end
end

function RemoveBuffs()
    if UnitName("target") == UnitName("player") or UnitName("target") == nil then
        GemsAmmount:ClearFocus()
        SendChatMessage(".unaura 82020")
        SendChatMessage(".unaura 82086")
        SendChatMessage(".unaura 82084")
        SendChatMessage(".unaura 82083")
        SendChatMessage(".unaura 82082")
        SendChatMessage(".unaura 82081")
        SendChatMessage(".unaura 82096")
        SendChatMessage(".unaura 82098")
    else
        GMGenie.showGMMessage("Be sure to target yourself before clicking.")
    end
end

-- COMMANDS lookup
local function LookupCommand(command, query)
    SendChatMessage(".lookup " .. command .. " " .. query, "GUILD");
end

local commands = {
    ls = "spell",
    lc = "creature",
    li = "item",
    lo = "object",
    lm = "map",
    lt = "tele"
};

SLASH_LS1 = "/ls";
SLASH_LC1 = "/lc";
SLASH_LI1 = "/li";
SLASH_LO1 = "/lo";
SLASH_LM1 = "/lm";
SLASH_LT1 = "/lt";

local function HandleLookupCommand(commandKey, msg)
    local query = msg:match("^%s*(.-)%s*$");
    local command = commands[commandKey];
    if command and query and query ~= "" then
        LookupCommand(command, query);
    else
        DEFAULT_CHAT_FRAME:AddMessage("Uso: /" .. commandKey .. " [query]", 1.0, 0.5, 0.0);
    end
end

SlashCmdList["LS"] = function(msg) HandleLookupCommand("Lookup Spell", msg) end;
SlashCmdList["LC"] = function(msg) HandleLookupCommand("Lookup Creature", msg) end;
SlashCmdList["LI"] = function(msg) HandleLookupCommand("Lookup Item", msg) end;
SlashCmdList["LO"] = function(msg) HandleLookupCommand("Lookup Object", msg) end;
SlashCmdList["LM"] = function(msg) HandleLookupCommand("Lookup Map", msg) end;
SlashCmdList["LT"] = function(msg) HandleLookupCommand("Lookup tele", msg) end;

function GMGenie.MasterHelper.toggle()
    local frame = GMGenie_MasterHelper_Main;
    if frame:IsVisible() then
        frame:Hide()
    else
        frame:Show()
    end
end
