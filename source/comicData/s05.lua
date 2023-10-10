s05 = { -- Sequence 5
	title = "5: Dead End",
	
	-- there are no more sequences after this one in the story
	-- even though there may be others listed after this in the comicData 
	-- (because the story is nonlinear)
	
	-- set this as an end sequence to have the user return to the menu after this sequence
	endSequence = true, 

	panels = { -- a list of PANELS for Sequence 5
		
		{ -- Panel 1
			layers = {
				-- list of layers for panel 1
				{ text = "Sequence 5:", x = 20, y = 20 },
				{ text = "*Dead End*", x = 20, y = 40}
			}
		}, 
		{ -- Panel 2
			layers = {
				-- list of layers for panel 2
				{ text = "Game over", x = 150, y = 90 }
			}
		}
	}
}