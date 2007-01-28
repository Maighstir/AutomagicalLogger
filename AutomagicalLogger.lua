function AutomagicalLogger() 
	if (LoggingChat()) then
		DEFAULT_CHAT_FRAME:AddMessage("Chat is already being logged");
	else
		DEFAULT_CHAT_FRAME:AddMessage("Chat is not being logged - starting it!");  
		LoggingChat(1);
		DEFAULT_CHAT_FRAME:AddMessage("Chat is now being logged to Logs\\WOWChatLog.txt");
	end 
--	if (LoggingCombat()) then
--		DEFAULT_CHAT_FRAME:AddMessage("Combat is already being logged");
--	else
--		DEFAULT_CHAT_FRAME:AddMessage("Combat is not being logged - starting it!");  
--		LoggingCombat(1);
--		DEFAULT_CHAT_FRAME:AddMessage("Combat is now being logged to Logs\\WOWChatLog.txt");
--	end	
end 