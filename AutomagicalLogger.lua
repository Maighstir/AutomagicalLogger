function AutomagicalLogger_Start()
	AutomagicalLogger_Init();
	if (AutomagicalLoggerSettings.ChatLog==1) then
		if (LoggingChat()) then
			DEFAULT_CHAT_FRAME:AddMessage(AUTOLOGGER_CHAT_ALREADY_STARTED);
		else
			DEFAULT_CHAT_FRAME:AddMessage(AUTOLOGGER_CHAT_STARTING);  
			LoggingChat(1);
			DEFAULT_CHAT_FRAME:AddMessage(AUTOLOGGER_CHAT_STARTED);
		end
	end
	if (AutomagicalLoggerSettings.CombatLog==1) then
		if (LoggingCombat()) then
			DEFAULT_CHAT_FRAME:AddMessage(AUTOLOGGER_COMBAT_ALREADY_STARTED);
		else
			DEFAULT_CHAT_FRAME:AddMessage(AUTOLOGGER_COMBAT_STARTING);  
			LoggingCombat(1);
			DEFAULT_CHAT_FRAME:AddMessage(AUTOLOGGER_COMBAT_STARTED);
		end
	end
end

function AutomagicalLogger_Init()
	local AutomagicalLogger_Defaults={
		["chat"]=1,
		["combat"]=0,
	}

	if(not AutomagicalLoggerSettings) then
		AutomagicalLoggerSettings =  {};
	end

	if(AutomagicalLoggerSettings) then
		-- Check the chat log
		if(not AutomagicalLoggerSettings.ChatLog) then
			AutomagicalLoggerSettings.ChatLog = AutomagicalLogger_Defaults.chat;
		end

		-- Check the combat log
		if(not AutomagicalLoggerSettings.CombatLog) then
			AutomagicalLoggerSettings.CombatLog = AutomagicalLogger_Defaults.combat;
		end
	end

	-- Register in myAddOns
	if (false) then
	end
end

function AutomagicalLogger_Set()
end

AutomagicalLogger_Start();