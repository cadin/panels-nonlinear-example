s03 = { -- Sequence 3
    title = "3: Hidden Controls",
    id = "seq3",
    -- list the advance controls for this sequence
    -- these will be hidden so they don't need positions
    -- we'll add graphics or text to the final panel to instruct the user instead
    showAdvanceControls = false,
    advanceControls = {
        { input = Panels.Input.A, target = "seq1" },
        { input = Panels.Input.B, target = "seq4" },
    },
    
    panels = {

        { -- Panel 1
            layers = {
                -- list of layers for panel 1
                { text = "Sequence 3:", x = 20, y = 20 },
                { text = "Hidden Controls", x = 20, y = 40 }
            }
        }, 
        { -- Panel 2
            layers = {
                -- list of layers for panel 2
                { text = "*Press A*\nto go back to Sequence 1", x = 60, y = 60 },
                { text = "*Press B*\nfor the directional controls example", x = 60, y = 145 }
            }
        }
    }
}