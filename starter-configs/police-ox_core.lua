--[[
    FiveM Police Job — OX_CORE Configuration
    Generated with FiveM Jobs Creator: https://vertexmods.com/jobs-creator/builder

    Framework: OX_CORE (ox_core >= 2.x)
    Job:       police
    Grades:    5 (Recruit → Chief)

    Usage:
      1. Use the ox_core lib.addJob API, or seed via your database seeder
      2. OX_CORE uses a database-first approach — run the INSERT below or
         call Ox.CreateGroup() from a server script
      3. Restart ox_core after seeding
--]]

-- Option A: Lua API (server-side, requires ox_core loaded)
local groups = {
    {
        name  = 'police',
        label = 'Los Santos Police Department',
        grades = {
            { name = 'Recruit',        salary = 200 },
            { name = 'Officer',        salary = 350 },
            { name = 'Sergeant',       salary = 500 },
            { name = 'Lieutenant',     salary = 700 },
            { name = 'Chief of Police',salary = 900 },
        },
    },
}

for _, group in ipairs(groups) do
    Ox.CreateGroup(group.name, {
        label  = group.label,
        grades = group.grades,
    })
end

--[[
    Option B: Raw SQL seed (MariaDB / MySQL)

    INSERT INTO `ox_groups` (`name`, `label`) VALUES ('police', 'Los Santos Police Department');

    INSERT INTO `ox_group_grades` (`group`, `grade`, `label`, `salary`) VALUES
        ('police', 1, 'Recruit',         200),
        ('police', 2, 'Officer',         350),
        ('police', 3, 'Sergeant',        500),
        ('police', 4, 'Lieutenant',      700),
        ('police', 5, 'Chief of Police', 900);

    Build your own OX_CORE job config visually at:
    https://vertexmods.com/jobs-creator/builder
--]]
