s01 = { -- Sequence 1
    title = "1: Basic Example",
    id = "seq1",

    -- SEQUENCE advance controls
    -- these appear on the last panel of the sequence (unless hidden)
    -- target defines the sequence number to advance to
    advanceControls = {
        { input = Panels.Input.A, target = "seq2", x = 180, y = 20},
        { input = Panels.Input.B, target = "seq4", x = 180, y = 180},
    },

    panels = { -- a list of PANELS for Sequence 1
        { -- Panel 1
            layers = {
                -- list of layers for panel 1
                { text = "Sequence 1:", x = 20, y = 20 },
                { text = "*Basic example*", x = 20, y = 40 }
            }
        }, 
        { -- Panel 2
            layers = {
                -- list of layers for panel 2
                { text = "Show controls anchored to panel", x = 68, y = 60 },
                { text = "Show directional controls example", x = 65, y = 145 }
            }
        }
    }
}