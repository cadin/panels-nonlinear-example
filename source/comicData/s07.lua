s07 = { -- Sequence 7
    title = "7: Choice List",
    id = "seq7",

    -- no target listed for advance control
    -- choice list buttons will set the target sequence
    advanceControl = Panels.Input.A,
    advanceControlPosition = { x = 336, y = 180 },


    panels = { -- a list of PANELS for Sequence 7
        { -- Panel 1
            layers = {
                -- list of layers for panel 1
                { text = "Sequence 7:", x = 20, y = 20 },
                { text = "*Choice list*", x = 20, y = 40 }
            },
        }, 
        { -- Panel 2
            layers = {
                -- list of layers for panel 2
                { text = "What's next?", x = 20, y = 20 },
            },

            -- this panel displays a choice list (a list of buttons)
            -- each button specifies the target sequence to set when selected
            -- the sequence doesn't actually advance until the user presses the advance control input (set above)
            choiceList = {
                buttons = {
                	{ label = "Sequence 8 (vars)", target = "seq8" },
                    { label = "Sequence 5 (dead end)", target = "seq5" }
                }
			}
			
        }
    }
}