-- CHOICE LIST CALLBACK FUNCTION
-- this function will be called when a choice is selected in Sequence 9
-- you can perform more complex logic based on the selection if needed
local function onSeq9ChoiceSelected(index, button)
	print("User selected the choice: " .. button.label)
	
	-- here we'll determine the outcome based on the user's current choice 
	-- and existing variables based on prior choices
	if button.label == "Break down the door" then
		-- breaking the door requires either having a hammer or having taken a strength potion
		if Panels.vars.hasHammer == true or Panels.vars.tookStrengthPotion == true then
			Panels.vars.openedDoor = true
		end
	else -- "Pick the lock" chosen
		-- picking the lock requires having taken the lock-picking class
		if Panels.vars.tookLockPickingClass == true then
			Panels.vars.openedDoor = true
		end
	end
end

-- TARGET SEQUENCE FUNCTION
-- this will be called when the panel exits to get the target sequence (if any)
-- if the target is nil, the comic will proceed normally to the next sequence
-- (or end if this is the last sequence)
local function targetSequenceForSeq9()
	-- determine the target sequence based on whether the door was opened
	if Panels.vars.openedDoor == true then
		return "seq1" -- go to Sequence 1 if the door was opened
	else
		return "seq5" -- go to Dead End if the door remains locked
	end
end

-- SEQUENCE DATA 


s09 = { -- Sequence 9
    title = "9: Choice List (with callback function)",
    id = "seq9",

    advanceControl = Panels.Input.A,
    advanceControlPosition = { x = 336, y = 180 },

	

    panels = { -- a list of PANELS for Sequence 9
        { -- Panel 1
            layers = {
                -- list of layers for panel 1
                { text = "Sequence 9:", x = 20, y = 20 },
                { text = "*Choice list* (with callback function)", x = 20, y = 40 }
            },
        }, 
        { -- Panel 2
            layers = {
                -- list of layers for panel 2
                { text = "The door is locked!", x = 20, y = 20 },
			},
			
			-- this panel displays a choice list (a list of buttons)
			choiceList = {
				-- specify a callback function to be called when a choice is selected
				onChoiceSelected = onSeq9ChoiceSelected,
				buttons = {
					-- we're not setting target sequences or variables for these buttons
					-- that will be handled in the callback function instead
					{ label = "Break down the door" },
					{ label = "Pick the lock" }
				}
			},

			-- specify a target sequence function (defined above)
			targetSequenceFunction = targetSequenceForSeq9,
        }
    }
}