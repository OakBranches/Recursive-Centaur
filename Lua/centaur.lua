TRUE = 1
FALSE = 0

-- Recursive Centaur explanation:
-- https://github.com/OakBranches/Recursive-Centaur#readme
local function centaur(level, finish)
    -- Base case: when level is zero, print the head
    if level == 0 then
        print(" o")
        print("/|\\_____")
        print("|       #")
        return
    end

    -- Recursive call for the next level
    centaur(level - 1, FALSE)

    -- Print spaces for body
    for i = 1, level do
        io.write("     ")
    end

    io.write("! !``\n")

    -- Print default top value
    print("|       #")

    -- Check if it's the last level for legs
    if finish == FALSE then
        -- Print centaur's back
        print("____")
    else
        -- Print default bottom value
        print()

        -- Print paddings
        for i = 1, level do
            io.write("     ")
        end

        -- Print legs
        print("! !```! !")
    end
end

local function call_centaur()
    print("Enter level of centaur recursion: ")
    local level = tonumber(io.read())
    centaur(level, TRUE)
end

call_centaur()
