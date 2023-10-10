TRUE = 1
FALSE = 0

-- Recursive Centaur explanation:
-- https://github.com/OakBranches/Recursive-Centaur#readme
local function centaur(level, finish)
    -- Base case: when level is less than zero, exit recursion
    if level < 0 then return end
    
    -- Recursive call for the next level
    centaur(level - 1, FALSE)

    -- Print head
    if level == 0 then
        io.write(" o\n")
        io.write("/|\\_____\n")
        io.write("|       #")
    else
        -- Print spaces for body
        for i = 1, level - 1 do
            io.write("     ")
        end
        io.write("! !  ")

        -- Print default top value
        io.write("|       #")
    end

    -- Check if it's the last level for legs
    if finish == FALSE then
        -- Print centaur's back
        io.write("____")
        io.write("\n")
    else
        io.write("\n")
        -- Print paddings
        for i = 1, level do
            io.write("     ")
        end

        -- Print legs
        io.write("! !   ! !")
    end
end

local function call_centaur()
    print("Enter level of centaur recursion: ")
    local level = tonumber(io.read())
    centaur(level, TRUE)
    return
end

call_centaur()
