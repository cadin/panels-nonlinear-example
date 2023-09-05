local gfx = playdate.graphics

local target = nil

-- RENDER FUNCTION
-- all the drawing for this panel happens in this custom function
-- so you could have a little mini-game where the outcome determines 
-- which sequence to go to next
local function renderSeq5(panel, offset)

    -- check for button presses
	if playdate.buttonJustPressed(Panels.Input.UP) then
		target = 1
	elseif playdate.buttonJustPressed(Panels.Input.DOWN) then
		target = nil
	end

    -- draw the text
	gfx.drawText("Choose what happens next:", 20, 20)
	gfx.drawText("*Go to Sequence 1*", 50, 60)
	gfx.drawText("*End game*", 50, 100)
	gfx.drawText("Press A to advance", 20, 200)

    -- draw the arrow
	local arrowPosition = 54
	if target == nil then arrowPosition = 94 end

	local arrow = panel.layers[1].img
	arrow:draw( 20, arrowPosition)
end

-- RESET FUNCTION 
-- reset `target` var after panel exits
local function resetSeq5()
	target = nil
end

-- TARGET SEQUENCE FUNCTION
-- this will be called when the panel exits to get the target sequence (if any)
-- if the target is nil, the comic will proceed normally to the next sequence
-- (or end if this is the last sequence)
local function getTargetForSeq5()
	return target
end

-- SEQUENCE DATA 


s05 = { -- Sequence 5
    title = "5: Custom Functions",

    -- set a single advance control for this sequence
    -- target will be controlled with custom functions
    advanceControl = Panels.Input.A,
    showAdvanceControl = false,

    panels = { -- a list of PANELS for Sequence 5
        { -- Panel 1
            layers = {
                -- list of layers for panel 1
                { text = "Sequence 5:", x = 20, y = 20 },
                { text = "*Custom Functions*", x = 20, y = 40 }
            }
        }, 
        { -- Panel 2
            layers = {
                -- list of layers for panel 2
                { image = "arrow" }
            },

            -- list custom functions (defined above)
            renderFunction = renderSeq5,
            resetFunction = resetSeq5,
            targetSequenceFunction = getTargetForSeq5
        }
    },

}