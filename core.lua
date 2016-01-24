---------------------------------------------------------------------------------------
-- Name:    KeyUI
-- Author:  Keyndin
-- Contact: F.Lang@keyndin.com
-- Version: 0.0.1a
---------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------
-- Includes
---------------------------------------------------------------------------------------

KeyUI = LibStub("AceAddon-3.0"):NewAddon("KeyUI", "AceConsole-3.0")


---------------------------------------------------------------------------------------
-- Variables
---------------------------------------------------------------------------------------

local addon_name = "KeyUI";

---------------------------------------------------------------------------------------
-- Init
---------------------------------------------------------------------------------------

function KeyUI:OnInitialize()
  self.db = LibStub("AceDB-3.0"):New("KeyUIDB")
  KeyUI:Print("Addon loaded");
end


---------------------------------------------------------------------------------------
-- Slash commands
---------------------------------------------------------------------------------------

-- KeyUI:RegisterChatCommand(addon_name, "SlashProcessor")


-- function KeyUI:SlashProcessor(input)
--   KeyUI:Print(string.format("You said: \"%s\".", input));
--   -- string.format("%s %q", "Hello", "Lua user!")
-- end


---------------------------------------------------------------------------------------
-- Options
---------------------------------------------------------------------------------------

local options = {
    name = "KeyUI",
    handler = KeyUI,
    type = 'group',
    args = {
        msg = {
            type = 'input',
            name = 'My Message',
            desc = 'The message for my addon',
            set = 'SetMyMessage',
            get = 'GetMyMessage',
        },
    },
}

function KeyUI:GetMyMessage(info)
    return myMessageVar
end

function KeyUI:SetMyMessage(info, input)
    myMessageVar = input
end

LibStub("AceConfig-3.0"):RegisterOptionsTable(addon_name, options, nil)