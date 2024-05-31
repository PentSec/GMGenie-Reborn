-- copy name and id
_G.BINDING_HEADER_IDCOPY = 'ID Copy Addon'
_G.BINDING_NAME_IDCOPY_COPY_ITEM = 'Copy ID to clipboard'
_G.BINDING_HEADER_NAMECOPY = 'NameCopy Addon'
_G.BINDING_NAME_NAMECOPY_COPY_ITEM = 'Copy item to clipboard'
local db

function _G.ID_COPY_ITEM()
    if _G.GameTooltip:NumLines() > 0 then
        local itemLink = select(2, _G.GameTooltip:GetItem())
        if itemLink then
            local itemID = itemLink:match("item:(%d+)")
            if itemID then
                local e = DEFAULT_CHAT_FRAME.editBox
                ChatEdit_ActivateChat(e)
                e:SetText(itemID)
                e:HighlightText()
            end
        end
    end
end

function _G.NAME_COPY_ITEM()
    if _G.GameTooltip:NumLines() > 0 then
        local text = _G['GameTooltipTextLeft1']:GetText()
        local e = DEFAULT_CHAT_FRAME.editBox
        ChatEdit_ActivateChat(e)
        e:SetText(text)
        e:HighlightText()
    end
end

local function SafeSetBinding(key, action)
    if key == '' then
        local oldkey = _G.GetBindingKey(action)
        if oldkey then
            _G.SetBinding(oldkey, nil)
        end
    else
        _G.SetBinding(key, action)
    end
    _G.SaveBindings(_G.GetCurrentBindingSet())
end

local function SetDefaultBinding(key, action)
    local ourkey1, ourkey2 = _G.GetBindingKey(action)
    if (ourkey1 == nil) and (ourkey2 == nil) then
        local possibleAction = _G.GetBindingByKey(key)
        local okToSet = true
        if possibleAction then
            local key1, key2 = _G.GetBindingKey(possibleAction)
            if (key1 == key) or (key2 == key) then
                okToSet = false
            end
        end
        if okToSet then
            SafeSetBinding(key, action)
        end
    end
end
local function entering_world()
    SetDefaultBinding('CTRL-SHIFT-C', 'NAMECOPY')
    SetDefaultBinding('CTRL-C', 'IDCOPY')
end

local frame = _G.CreateFrame('FRAME')
frame:RegisterEvent('ADDON_LOADED')
frame:RegisterEvent('PLAYER_ENTERING_WORLD')
frame:RegisterEvent('PLAYER_LEAVING_WORLD')

local function eventHandler(_, event, arg1)
    if event == 'ADDON_LOADED' then
        if arg1 == 'NameCopy' then
            addon_loaded()
        end
    elseif event == 'PLAYER_ENTERING_WORLD' then
        entering_world()
        save_variables()
    elseif event == 'PLAYER_LEAVING_WORLD' then
        save_variables()
    end
end

local function save_variables()
    if db ~= _G.NameCopyTooltipTextBool then
        _G.NameCopyTooltipTextBool = db
    end
end

frame:SetScript('OnEvent', eventHandler)
