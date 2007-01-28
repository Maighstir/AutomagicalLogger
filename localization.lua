local clientLanguage = GetLocale();

if(clientLanguage=="frFR") then
	-- French - Français
	AUTOLOGGER_LOG_CHAT="Log chat";
	AUTOLOGGER_LOG_COMBAT="Log combat";
	AUTOLOGGER_OPTIONS="Automagical Logger Options";
	AUTOLOGGER_HELP = {};
	AUTOLOGGER_HELP[1] = "Help Page1 line1\nline2\nline3...";
	AUTOLOGGER_HELP[2] = "Help Page2 line1\nline2\nline3...";

	AUTOLOGGER_COMBAT_ALREADY_STARTED="Combat is already being logged";
	AUTOLOGGER_COMBAT_STARTING="Combat is not being logged - starting it!";
	AUTOLOGGER_COMBAT_STARTED="Combat is now being logged to Logs\\WOWCombatLog.txt";

	AUTOLOGGER_CHAT_ALREADY_STARTED="Chat is already being logged";
	AUTOLOGGER_CHAT_STARTING="Chat is not being logged - starting it!";
	AUTOLOGGER_CHAT_STARTED="Chat is now being logged to Logs\\WOWChatLog.txt";
elseif(clientLanguage=="deDE") then
	-- German - Deutsch
	AUTOLOGGER_LOG_CHAT="Log chat";
	AUTOLOGGER_LOG_COMBAT="Log combat";
	AUTOLOGGER_OPTIONS="Automagical Logger Options";
	AUTOLOGGER_HELP = {};
	AUTOLOGGER_HELP[1] = "Help Page1 line1\nline2\nline3...";
	AUTOLOGGER_HELP[2] = "Help Page2 line1\nline2\nline3...";

	AUTOLOGGER_COMBAT_ALREADY_STARTED="Combat is already being logged";
	AUTOLOGGER_COMBAT_STARTING="Combat is not being logged - starting it!";
	AUTOLOGGER_COMBAT_STARTED="Combat is now being logged to Logs\\WOWCombatLog.txt";

	AUTOLOGGER_CHAT_ALREADY_STARTED="Chat is already being logged";
	AUTOLOGGER_CHAT_STARTING="Chat is not being logged - starting it!";
	AUTOLOGGER_CHAT_STARTED="Chat is now being logged to Logs\\WOWChatLog.txt";
elseif(clientLanguage=="esES") then
	-- Spanish - Español
	AUTOLOGGER_LOG_CHAT="Log chat";
	AUTOLOGGER_LOG_COMBAT="Log combat";
	AUTOLOGGER_OPTIONS="Automagical Logger Options";
	AUTOLOGGER_HELP = {};
	AUTOLOGGER_HELP[1] = "Help Page1 line1\nline2\nline3...";
	AUTOLOGGER_HELP[2] = "Help Page2 line1\nline2\nline3...";

	AUTOLOGGER_COMBAT_ALREADY_STARTED="Combat is already being logged";
	AUTOLOGGER_COMBAT_STARTING="Combat is not being logged - starting it!";
	AUTOLOGGER_COMBAT_STARTED="Combat is now being logged to Logs\\WOWCombatLog.txt";

	AUTOLOGGER_CHAT_ALREADY_STARTED="Chat is already being logged";
	AUTOLOGGER_CHAT_STARTING="Chat is not being logged - starting it!";
	AUTOLOGGER_CHAT_STARTED="Chat is now being logged to Logs\\WOWChatLog.txt";
else
	-- English
	AUTOLOGGER_LOG_CHAT="Log chat";
	AUTOLOGGER_LOG_COMBAT="Log combat";
	AUTOLOGGER_OPTIONS="Automagical Logger Options";
	AUTOLOGGER_HELP = {};
	AUTOLOGGER_HELP[1] = "Help Page1 line1\nline2\nline3...";
	AUTOLOGGER_HELP[2] = "Help Page2 line1\nline2\nline3...";

	AUTOLOGGER_COMBAT_ALREADY_STARTED="Combat is already being logged";
	AUTOLOGGER_COMBAT_STARTING="Combat is not being logged - starting it!";
	AUTOLOGGER_COMBAT_STARTED="Combat is now being logged to Logs\\WOWCombatLog.txt";

	AUTOLOGGER_CHAT_ALREADY_STARTED="Chat is already being logged";
	AUTOLOGGER_CHAT_STARTING="Chat is not being logged - starting it!";
	AUTOLOGGER_CHAT_STARTED="Chat is now being logged to Logs\\WOWChatLog.txt";
end