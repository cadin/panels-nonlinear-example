s04 = { -- Sequence 4
    title = "4: Directional Controls",

    -- list the advance controls for this sequence
    advanceControls = {
        { input = Panels.Input.UP,    target = 4, x = 180, y = 2 },
        { input = Panels.Input.RIGHT, target = 5, x = 360, y = 100 },
        { input = Panels.Input.DOWN,  target = 6, x = 180, y = 198 },
        -- only 3 directions since LEFT will conflict with scrolling back
    },

    panels = { -- a list of PANELS for Sequence 4
        { -- Panel 1
            layers = {
                -- list of layers for panel 1
                { text = "Sequence 4:", x = 20, y = 20 },
                { text = "*Directional Controls*", x = 20, y = 40}
            }
        }, 
        { -- Panel 2
            layers = {
                -- list of layers for panel 2
                { text = "Which way?", x = 150, y = 90 }
            }
        }
    }
}