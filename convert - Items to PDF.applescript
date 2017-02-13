----	Created by: Erik Tollefsrud--	Created on: 2/13/17----	Copyright (c) 2017--	All Rights Reserved--	Script is based on Apple's sample code found in the /Library/Scripts/Folder Actions Scripts/use AppleScript version "2.4" -- Yosemite (10.10) or lateruse scripting additionsproperty done_foldername : "Original Images"on adding folder items to theFolder after receiving theNewItems	-- CHECK FOR THE DESTINATION FOLDER WITHIN THE ATTACHED FOLDER	-- IF IT DOESN'T EXIST, THEN CREATE IT	tell application "Finder"		if not (exists folder done_foldername of theFolder) then			make new folder at theFolder with properties {name:done_foldername}			set current view of container window of theFolder to list view		end if		set the target_folder to folder done_foldername of theFolder	end tell	-- PROCESS EACH OF THE ITEMS ADDED TO THE ATTACHED FOLDER			try		repeat with i from 1 to number of items in theNewItems			set this_item to item i of theNewItems			-- set the item_info to info for this_item			-- CHECK TO SEE IF THE ITEM IS AN IMAGE FILE OF THE ACCEPTED FILE TYPE			tell application "Finder"				-- LOOK FOR EXISTING MATCHING ITEMS IN THE DESTINATION FOLDER				-- IF THERE ARE MATCHES, THEN RENAME THE CONFLICTING FILES INCREMENTALLY				my resolve_conflicts(this_item, target_folder)				set the target_file to (move this_item to the target_folder with replacing) as alias			end tell			-- PROCESS THE ITEM			process_item(target_file, theFolder)		end repeat	on error error_message number error_number		if the error_number is not -128 then			tell application "Finder"				activate				display dialog error_message buttons {"Cancel"} default button 1 giving up after 120			end tell		end if	end tryend adding folder items toon resolve_conflicts(this_item, target_folder)	tell application "Finder"		set the file_name to the name of this_item		if (exists document file file_name of target_folder) then			set file_extension to the name extension of this_item			if file_extension is "" then				set the trimmed_name to the file_name			else				set the trimmed_name to text 1 thru -((length of file_extension) + 2) of the file_name			end if			set the name_increment to 1			repeat				set the new_name to (the trimmed_name & "." & (name_increment as string) & "." & file_extension) as string				if not (exists document file new_name of the target_folder) then					-- rename to conflicting file					set the name of document file file_name of the target_folder to the new_name					exit repeat				else					set the name_increment to the name_increment + 1				end if			end repeat		end if	end tellend resolve_conflicts-- this sub-routine processes files on process_item(this_item, dest_folder)	-- NOTE that the variable this_item is a file reference in alias format 	-- FILE PROCESSING STATEMENTS GOES HERE 	try		set terminalCommand to ""		set convertCommand to "/usr/sbin/cupsfilter "		tell application "Finder"			set the file_name to the name of this_item			set the file_extension to the name extension of this_item			if file_extension is "" then				set the trimmed_name to the file_name			else				set the trimmed_name to text 1 thru -((length of file_extension) + 2) of the file_name			end if		end tell		set newFileName to trimmed_name & ".pdf"		set terminalCommand to convertCommand & (quoted form of (POSIX path of this_item)) & " > " & (quoted form of (POSIX path of dest_folder)) & (quoted form of newFileName)				do shell script terminalCommand	on error error_message number error_number		tell application "Finder"			activate			display dialog error_message buttons {"Cancel"} default button 1 giving up after 120		end tell	end tryend process_item