GMGenie.MasterHelper = {};
function GMGenie.MasterHelper.onLoad()
    UIDropDownMenu_(GMGenie_MasterHelper_Main_T1melee)
end
function GMGenie.Spawns.runMacro()
    GMGenie.Spawns.macroScheduleTime = 0;
    local macroText = GMGenie_Spawns_Macro_Macro_Frame_Text:GetText();
    macroText = string.gsub(macroText, "go", "GMGenie.Spawns.scheduleGo");
    GMGenie.showGMMessage("Running spawn macro, do not interfere!");
    RunScript(macroText);
end

function MeleeT1()
    SendChatMessage(".additem 58031");
    SendChatMessage(".additem 58032");
    SendChatMessage(".additem 58033");
    SendChatMessage(".additem 58034");
    SendChatMessage(".additem 58035");
    SendChatMessage(".additem 58036");
    SendChatMessage(".additem 58037");
    SendChatMessage(".additem 58030");
    SendChatMessage(".additem 58064");
    SendChatMessage(".additem 58070");
    SendChatMessage(".additem 58071");
    SendChatMessage(".additem 58074");
    SendChatMessage(".additem 58075");
    SendChatMessage(".additem 58078");
end

function SpellT1()
    SendChatMessage(".additem 58040");
    SendChatMessage(".additem 58041");
    SendChatMessage(".additem 58042");
    SendChatMessage(".additem 58043");
    SendChatMessage(".additem 58044");
    SendChatMessage(".additem 58045");
    SendChatMessage(".additem 58046");
    SendChatMessage(".additem 58047");
    SendChatMessage(".additem 58065");
    SendChatMessage(".additem 58072");
    SendChatMessage(".additem 58073");
    SendChatMessage(".additem 58076");
    SendChatMessage(".additem 58077");
    SendChatMessage(".additem 58079");
end

function MeleeT2()
    SendChatMessage(".additem 58090");
    SendChatMessage(".additem 58091");
    SendChatMessage(".additem 58092");
    SendChatMessage(".additem 58093");
    SendChatMessage(".additem 58094");
    SendChatMessage(".additem 58095");
    SendChatMessage(".additem 58096");
    SendChatMessage(".additem 58097");
    SendChatMessage(".additem 58110");
    SendChatMessage(".additem 58111");
    SendChatMessage(".additem 58114");
    SendChatMessage(".additem 58115");
    SendChatMessage(".additem 58118");
    SendChatMessage(".additem 58121");
end

function MeleeT3()
    SendChatMessage(".additem 58150");
    SendChatMessage(".additem 58151");
    SendChatMessage(".additem 58152");
    SendChatMessage(".additem 58153");
    SendChatMessage(".additem 58154");
    SendChatMessage(".additem 58155");
    SendChatMessage(".additem 58156");
    SendChatMessage(".additem 58157");
    SendChatMessage(".additem 58170");
    SendChatMessage(".additem 58171");
    SendChatMessage(".additem 58174");
    SendChatMessage(".additem 58175");
    SendChatMessage(".additem 58178");
    SendChatMessage(".additem 58181");
end

function MeleeT4()
    SendChatMessage(".additem 58220");
    SendChatMessage(".additem 58221");
    SendChatMessage(".additem 58222");
    SendChatMessage(".additem 58223");
    SendChatMessage(".additem 58224");
    SendChatMessage(".additem 58225");
    SendChatMessage(".additem 58226");
    SendChatMessage(".additem 58227");
    SendChatMessage(".additem 58240");
    SendChatMessage(".additem 58241");
    SendChatMessage(".additem 58244");
    SendChatMessage(".additem 58245");
    SendChatMessage(".additem 58248");
    SendChatMessage(".additem 58251");
end

function MeleeT5()
    SendChatMessage(".additem 58320");
    SendChatMessage(".additem 58321");
    SendChatMessage(".additem 58322");
    SendChatMessage(".additem 58323");
    SendChatMessage(".additem 58324");
    SendChatMessage(".additem 58325");
    SendChatMessage(".additem 58326");
    SendChatMessage(".additem 58327");
    SendChatMessage(".additem 58340");
    SendChatMessage(".additem 58341");
    SendChatMessage(".additem 58344");
    SendChatMessage(".additem 58345");
    SendChatMessage(".additem 58348");
    SendChatMessage(".additem 58351");
end

function SpellT3()
    SendChatMessage(".additem 58160");
    SendChatMessage(".additem 58161");
    SendChatMessage(".additem 58162");
    SendChatMessage(".additem 58163");
    SendChatMessage(".additem 58164");
    SendChatMessage(".additem 58165");
    SendChatMessage(".additem 58166");
    SendChatMessage(".additem 58167");
    SendChatMessage(".additem 58172");
    SendChatMessage(".additem 58173");
    SendChatMessage(".additem 58176");
    SendChatMessage(".additem 58177");
    SendChatMessage(".additem 58179");
    SendChatMessage(".additem 58180");
end

function SpellT4()
    SendChatMessage(".additem 58230");
    SendChatMessage(".additem 58231");
    SendChatMessage(".additem 58232");
    SendChatMessage(".additem 58233");
    SendChatMessage(".additem 58234");
    SendChatMessage(".additem 58235");
    SendChatMessage(".additem 58236");
    SendChatMessage(".additem 58237");
    SendChatMessage(".additem 58242");
    SendChatMessage(".additem 58243");
    SendChatMessage(".additem 58246");
    SendChatMessage(".additem 58247");
    SendChatMessage(".additem 58249");
    SendChatMessage(".additem 58250");
end

function SpellT5()
    SendChatMessage(".additem 58330");
    SendChatMessage(".additem 58331");
    SendChatMessage(".additem 58332");
    SendChatMessage(".additem 58333");
    SendChatMessage(".additem 58334");
    SendChatMessage(".additem 58335");
    SendChatMessage(".additem 58336");
    SendChatMessage(".additem 58337");
    SendChatMessage(".additem 58342");
    SendChatMessage(".additem 58343");
    SendChatMessage(".additem 58346");
    SendChatMessage(".additem 58347");
    SendChatMessage(".additem 58349");
    SendChatMessage(".additem 58350");
end

function WeaponT1()
    SendChatMessage(".additem 58050");
    SendChatMessage(".additem 58051");
    SendChatMessage(".additem 58052");
    SendChatMessage(".additem 58053");
    SendChatMessage(".additem 58054");
    SendChatMessage(".additem 58055");
    SendChatMessage(".additem 58056");
    SendChatMessage(".additem 58057");
    SendChatMessage(".additem 58058");
    SendChatMessage(".additem 58059");
    SendChatMessage(".additem 58060");
    SendChatMessage(".additem 58061");
    SendChatMessage(".additem 58062");
    SendChatMessage(".additem 58063");
end

function WeaponT2()
    SendChatMessage(".additem 58130");
    SendChatMessage(".additem 58131");
    SendChatMessage(".additem 58132");
    SendChatMessage(".additem 58133");
    SendChatMessage(".additem 58134");
    SendChatMessage(".additem 58135");
    SendChatMessage(".additem 58136");
    SendChatMessage(".additem 58137");
    SendChatMessage(".additem 58138");
    SendChatMessage(".additem 58139");
    SendChatMessage(".additem 58140");
    SendChatMessage(".additem 58141");
    SendChatMessage(".additem 58142");
    SendChatMessage(".additem 58143");
end

function WeaponT3()
    SendChatMessage(".additem 58200");
    SendChatMessage(".additem 58201");
    SendChatMessage(".additem 58202");
    SendChatMessage(".additem 58203");
    SendChatMessage(".additem 58204");
    SendChatMessage(".additem 58205");
    SendChatMessage(".additem 58206");
    SendChatMessage(".additem 58207");
    SendChatMessage(".additem 58208");
    SendChatMessage(".additem 58209");
    SendChatMessage(".additem 58210");
    SendChatMessage(".additem 58211");
    SendChatMessage(".additem 58212");
    SendChatMessage(".additem 58213");
    SendChatMessage(".additem 58214");
end

function WeaponT4()
    SendChatMessage(".additem 58260");
    SendChatMessage(".additem 58261");
    SendChatMessage(".additem 58262");
    SendChatMessage(".additem 58263");
    SendChatMessage(".additem 58264");
    SendChatMessage(".additem 58265");
    SendChatMessage(".additem 58266");
    SendChatMessage(".additem 58267");
    SendChatMessage(".additem 58268");
    SendChatMessage(".additem 58269");
    SendChatMessage(".additem 58270");
    SendChatMessage(".additem 58271");
    SendChatMessage(".additem 58272");
    SendChatMessage(".additem 58273");
    SendChatMessage(".additem 58274");
end

function WeaponT5()
    SendChatMessage(".additem 58360");
    SendChatMessage(".additem 58361");
    SendChatMessage(".additem 58362");
    SendChatMessage(".additem 58363");
    SendChatMessage(".additem 58364");
    SendChatMessage(".additem 58365");
    SendChatMessage(".additem 58366");
    SendChatMessage(".additem 58367");
    SendChatMessage(".additem 58368");
    SendChatMessage(".additem 58369");
    SendChatMessage(".additem 58370");
    SendChatMessage(".additem 58371");
    SendChatMessage(".additem 58372");
    SendChatMessage(".additem 58373");
    SendChatMessage(".additem 58374");
end

function OnPoint()
    if UnitName("target") == UnitName("player") or UnitName("target") == nil then
        GemsAmmount:ClearFocus()
        SendChatMessage(".level 10");
        SendChatMessage(".mod money 50000000");
        SendChatMessage(".additem 58378 4");
        SendChatMessage(".additem 58379 4");
        SendChatMessage(".additem 110001 999");
        SendChatMessage(".additem 58376");
        SendChatMessage(".additem 58377");
        SendChatMessage(".additem 58375");
    else
        GMGenie.showGMMessage("Be sure to target yourself before clicking.")
    end
end

function BuffMe()
    if UnitName("target") == UnitName("player") or UnitName("target") == nil then
        GemsAmmount:ClearFocus()
        SendChatMessage(".aura 82020");
        SendChatMessage(".aura 82086");
        SendChatMessage(".aura 82086");
        SendChatMessage(".aura 82084");
        SendChatMessage(".aura 82083");
        SendChatMessage(".aura 82082");
        SendChatMessage(".aura 82081");
        SendChatMessage(".aura 82096");
        SendChatMessage(".aura 82098");
    else
        GMGenie.showGMMessage("Be sure to target yourself before clicking.")
    end

end

function GMGenie.MasterHelper.toggle()
    local frame = GMGenie_MasterHelper_Main;
    if frame:IsVisible() then
        frame:Hide();
    else
        frame:Show();
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

