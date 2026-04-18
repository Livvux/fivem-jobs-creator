--[[
    FiveM Police Job — ESX Configuration
    Generated with FiveM Jobs Creator: https://vertexmods.com/jobs-creator/builder

    Framework: ESX (es_extended >= 1.9)
    Job:       police
    Grades:    5 (Recruit → Chief)

    Usage:
      1. Place in your server's ESX jobs table or use esx_society
      2. Adjust salaries and grade labels to fit your server economy
      3. Restart `es_extended` or run `refresh` + `ensure esx_society`
--]]

ESX.RegisterJob('police', {
    label = 'Los Santos Police Department',
    defaultDuty = true,
    offDutyPay = false,

    grades = {
        -- Grade 0: Entry-level recruit, no command authority
        [0] = {
            label = 'Recruit',
            salary = 200,
            skin_male   = {},
            skin_female = {},
        },

        -- Grade 1: Standard patrol officer
        [1] = {
            label = 'Officer',
            salary = 350,
            skin_male   = {},
            skin_female = {},
        },

        -- Grade 2: Field supervisor
        [2] = {
            label = 'Sergeant',
            salary = 500,
            skin_male   = {},
            skin_female = {},
        },

        -- Grade 3: Watch commander
        [3] = {
            label = 'Lieutenant',
            salary = 700,
            skin_male   = {},
            skin_female = {},
        },

        -- Grade 4: Department head (boss grade — access to society funds)
        [4] = {
            label = 'Chief of Police',
            salary = 900,
            isBoss = true,
            skin_male   = {},
            skin_female = {},
        },
    },
})

--[[
    To customise officer skins, add component/prop overrides inside
    the skin_male / skin_female tables, e.g.:

    skin_male = {
        sex        = 0,
        components = {
            { component_id = 1, drawable = 35, texture = 0 }, -- mask
            { component_id = 4, drawable = 36, texture = 0 }, -- upper body
            { component_id = 6, drawable = 25, texture = 0 }, -- shoes
            { component_id = 8, drawable = 58, texture = 0 }, -- accessories
            { component_id = 9, drawable = 35, texture = 0 }, -- task
            { component_id = 11,drawable = 55, texture = 0 }, -- torso
        },
    },

    Build your own job config visually at:
    https://vertexmods.com/jobs-creator/builder
--]]
