s02 = { -- Sequence 2
    title = "2: Anchored Controls",
    id = "seq2",
    -- list the advance controls for this sequence
    -- these will be anchored to the panel as it scrolls (`anchor = true`)
    -- note the positions are slightly offset because of the panel margins
    advanceControls = {
        { input = Panels.Input.A, target = "seq1", x = 172, y = 12,  anchor = true },
        { input = Panels.Input.B, target = "seq4", x = 172, y = 172, anchor = true },
    },

    panels = { -- a list of PANELS for Sequence 2
        { -- Panel 1
            layers = {
                -- list of layers for panel 1
                { text = "Sequence 2:", x = 20, y = 20 },
                { text = "*Anchored Controls*", x = 20, y = 40 }
            }
        }, 
        { -- Panel 2
            layers = {
                -- list of layers for panel 2
                { text = "Go back to Sequence 1", x = 95, y = 60 },
                { text = "Show directional controls example", x = 65, y = 145 }
            }
        }
    }
}