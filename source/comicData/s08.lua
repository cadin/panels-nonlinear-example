s08 = { -- Sequence 8
    title = "8: Choice List (with vars)",
    id = "seq8",

    advanceControl = Panels.Input.A,
    advanceControlPosition = { x = 336, y = 180 },


    panels = { -- a list of PANELS for Sequence 8
        { -- Panel 1
            layers = {
                -- list of layers for panel 1
                { text = "Sequence 8:", x = 20, y = 20 },
                { text = "*Choice list* (with vars)", x = 20, y = 40 }
            },
        }, 
        { -- Panel 2
            layers = {
                -- list of layers for panel 2
				-- these layers are conditionally rendered 
				-- based on the state of the "hasKey" variable
                { text = "*You picked up the key*", x = 20, y = 20, 
					renderCondition = { var = "hasKey", value = true },
				},
                { text = "There is a key on the table", x = 20, y = 20, 
					renderCondition = { var = "hasKey", value = false },
				}
			},
			
			-- this panel displays a choice list (a list of buttons)
			choiceList = {
				buttons = {
					{ 
						label = "Take the key", 
						-- specify a variable to set when this choice is selected
						var = { key = "hasKey", value = true }, 
						-- each button can specify a var, a target sequence, or *both*
						target = "seq7",
					},
					{ 
						label = "Leave the key", 
						var = { key = "hasKey", value = false },
						target = "seq5",
						selected = true -- make this button selected by default
                    }
				}
			}
        }
    }
}