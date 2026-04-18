--[[
    FiveM Police Job — QBCORE Configuration
    Generated with FiveM Jobs Creator: https://vertexmods.com/jobs-creator/builder

    Framework: QBCORE (qb-core >= 1.3)
    Job:       police
    Grades:    5 (Recruit → Chief)

    Usage:
      1. Add this table inside QBCore.Shared.Jobs in qb-core/shared/jobs.lua
      2. Or use qb-management to manage jobs dynamically
      3. Restart qb-core after adding
--]]

['police'] = {
    label       = 'Los Santos Police Department',
    defaultDuty = true,
    offdutyPay  = false,

    grades = {
        ['0'] = {
            name      = 'Recruit',
            payment   = 200,
            isboss    = false,
        },
        ['1'] = {
            name      = 'Officer',
            payment   = 350,
            isboss    = false,
        },
        ['2'] = {
            name      = 'Sergeant',
            payment   = 500,
            isboss    = false,
        },
        ['3'] = {
            name      = 'Lieutenant',
            payment   = 700,
            isboss    = false,
        },
        ['4'] = {
            name      = 'Chief of Police',
            payment   = 900,
            isboss    = true,
        },
    },
},

--[[
    Build your own QBCORE job config visually at:
    https://vertexmods.com/jobs-creator/builder
--]]
