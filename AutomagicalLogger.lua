function AutomagicalLogger()
	if (AutoLogChat == true) then
		if (LoggingChat()) then
			DEFAULT_CHAT_FRAME:AddMessage("Chat is being logged");
		else
			DEFAULT_CHAT_FRAME:AddMessage("Chat is not being logged yet - starting it!");
			LoggingChat(1);
			DEFAULT_CHAT_FRAME:AddMessage("Chat is now being logged to Logs/WOWChatLog.txt");
		end
	else
		if (LoggingChat()) then
			DEFAULT_CHAT_FRAME:AddMessage("Chat is being logged - stopping it!");
			LoggingChat(0);
			DEFAULT_CHAT_FRAME:AddMessage("Chat is no longer being logged");
		else
			DEFAULT_CHAT_FRAME:AddMessage("Chat is not being logged");
		end
	end

	if (AutoLogCombat == true) then
		if (LoggingCombat()) then
			DEFAULT_CHAT_FRAME:AddMessage("Combat is being logged");
		else
			DEFAULT_CHAT_FRAME:AddMessage("Combat is not being logged yet - starting it!");
			LoggingCombat(1);
			DEFAULT_CHAT_FRAME:AddMessage("Combat is now being logged to Logs/WOWCombatLog.txt");
		end
	else
		if (LoggingCombat()) then
			DEFAULT_CHAT_FRAME:AddMessage("Combat is being logged - stopping it!");
			LoggingCombat(0);
			DEFAULT_CHAT_FRAME:AddMessage("Combat is no longer being logged");
		else
			DEFAULT_CHAT_FRAME:AddMessage("Combat is not being logged");
		end
	end
end

function AutomagicalLogger_SlashCommand(msg)
	local LogType, DoLog = AutomagicalLogger_GetCmd(msg);
	if (LogType == "chat") then
		if ((DoLog == "on") or (DoLog == "1") or (DoLog == "true") or (DoLog == "yes")) then
			AutoLogChat = true;
		elseif ((DoLog == "off") or (DoLog == "0") or (DoLog == "false") or (DoLog == "no")) then
			AutoLogChat = false;
		end
	elseif ((LogType == "combat") or (LogType == "battle")) then
		if ((DoLog == "on") or (DoLog == "1") or (DoLog == "true") or (DoLog == "yes")) then
			AutoLogCombat = true;
		elseif ((DoLog == "off") or (DoLog == "0") or (DoLog == "false") or (DoLog == "no")) then
			AutoLogCombat = false;
		end
	end
	AutomagicalLogger();
end

function AutomagicalLogger_GetCmd(msg)
-- blatantly snipped from http://www.wowwiki.com/Extracting_info_from_a_slash_command
	if msg then
		local a,b,c=strfind(msg, "(%S+)"); --contiguous string of non-space characters
		if a then
			return c, strsub(msg, b+2);
		else	
			return "";
		end
	end
end

function AutomagicalLogger_OnLoad()
	-- Register slashcommands
	SlashCmdList["AUTOMAGICALLOGGER"] = function(msg)
		AutomagicalLogger_SlashCommand(msg);
	end
	SLASH_AUTOMAGICALLOGGER1 = "/automagicallogger";
	SLASH_AUTOMAGICALLOGGER2 = "/autolog";
	
	

	-- if the saved variables have not yet been initialized
	if (AutoLogCombat == nil) then
		AutoLogCombat = false; --Don't log combat by default
	end
	if (AutoLogChat == nil) then
		AutoLogChat = true; --Log chat by default
	end

	AutomagicalLogger();
end

AutomagicalLogger_OnLoad();