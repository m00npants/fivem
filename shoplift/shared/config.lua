--[[------------------------>FOR ASSISTANCE,SCRIPTS AND MORE JOIN OUR DISCORD<-------------------------------------
 ________   ________    ________      ___    ___      ________   _________   ___  ___   ________   ___   ________
|\   __  \ |\   ___  \ |\   __  \    |\  \  /  /|  ||  |\   ____\ |\___   ___|\  \|\  \ |\   ___ \ |\  \ |\   __  \
\ \  \|\  \\ \  \\ \  \\ \  \|\  \   \ \  \/  / /  ||  \ \  \___|_\|___ \  \_|\ \  \\\  \\ \  \_|\ \\ \  \\ \  \|\  \
 \ \   __  \\ \  \\ \  \\ \  \\\  \   \ \    / /   ||   \ \_____  \    \ \  \  \ \  \\\  \\ \  \ \\ \\ \  \\ \  \\\  \
  \ \  \ \  \\ \  \\ \  \\ \  \\\  \   /     \/    ||    \|____\  \    \ \  \  \ \  \\\  \\ \  \_\\ \\ \  \\ \  \\\  \
   \ \__\ \__\\ \__\\ \__\\ \_______\ /  /\   \    ||      ____\_\  \    \ \__\  \ \_______\\ \_______\\ \__\\ \_______\
    \|__|\|__| \|__| \|__| \|_______|/__/ /\ __\   ||     |\_________\    \|__|   \|_______| \|_______| \|__| \|_______|
                                     |__|/ \|__|   ||     \|_________|                                                
------------------------------------->(https://discord.gg/gbJ5SyBJBv)---------------------------------------------------]]

Config = {}
Config.Debug = false
Config.Framework = 'auto'
Config.Language = 'en'

Config.UISystem = {
    Notify = 'ox'
}

Config.Target = {
    distance = 1.0,
    radius = 0.5,
    debug = false,
    script = 'ox' --qb,ox
}

Config.Dispatch = {
    enabled = true,
    policeJobs = { 'police' },
    blip = {
        sprite = 161,
        color = 1,
        scale = 1.2,
        duration = 30000
    },
    notify = {
        type = 'warning',
        duration = 6000
    }
}

Config.Animation = {
    dict = 'anim@am_hold_up@male',
    clip = 'shoplift_low',
    flag = 49
}

Config.DeathAnimation = {
    {
        dict = 'dead',
        clip = 'dead_a',
        flag = 1,
        duration = -1
    },
    {
        dict = "misslamar1dead_body", 
        clip = "dead_idle",
        flag = 1,
        duration = -1
    }
}

Config.PropAttachment = {
    bone = 57005,
    pos = { x = 0.12, y = -0.02, z = -0.04 },
    rot = { x = 20.0, y = 170.0, z = 20.0 }
}

Config.Shops = {
    {
        id = 'shop1',
        label = 'Convenience Store',
        keeper = { model = 'mp_m_shopkeep_01', coords = vec3(24.5, -1345.53, 28.5), heading = 269.41 },
        npc = {
            behaviorMode = 'dump', --dump,smart
            voiceParam = 'SPEECH_PARAMS_FORCE',
            voiceLines = {
                detected = { 'GENERIC_INSULT_HIGH', 'GENERIC_CURSE_HIGH' },
                success = { 'GENERIC_SHOCKED_HIGH' }
            },
        },
        alertSpot = vec4(30.79, -1339.72, 28.5, 299.77),
        returnPos = vec4(24.5, -1345.53, 28.5, 269.41),
        storeCooldown = 300000,
        policeReset = {
            coords = vec3(31.38, -1340.73, 28.5),
            radius = 1.0,
            jobs = { 'police' }
        },
        attackExit = vec3(29.50, -1345.00, 28.5),
        rewards = {
            EasyLift = {
                { type = 'item', name = 'water', label = 'Water', min = 1, max = 2, prop = 'prop_ld_can_01' },
                { type = 'item', name = 'sandwich', label = 'Sandwich', min = 1, max = 1, prop = 'prop_sandwich_01' }
            },
            MediumLift = {
                { type = 'item', name = 'vodka', label = 'Vodka', min = 1, max = 1, prop = 'prop_vodka_bottle' },
                { type = 'item', name = 'whiskey', label = 'Whiskey', min = 1, max = 1, prop = 'prop_whiskey_bottle' }
            },
            HardLift = {
                { type = 'item', name = 'radio', label = 'Radio', min = 1, max = 1, prop = 'prop_cs_hand_radio' },
                { type = 'item', name = 'phone', label = 'Phone', min = 1, max = 1, prop = 'prop_phone_ing' },
                { type = 'money', moneyType = 'cash', label = 'Cash', min = 40, max = 80, prop = 'prop_cash_pile_01' }
            }
        },
        spots = {
            EasyLift = { coords = vec3(28.88, -1345.4, 28.5+1.0), detectionChance = 0.20, duration = 1800 },
            MediumLift = { coords = vec3(33.61, -1346.65, 28.5+1.0), detectionChance = 0.35, duration = 1800 },
            HardLift = { coords = vec3(25.72, -1346.49, 28.5+1.0), detectionChance = 0.50, duration = 1800 }
        }
    },
    {
        id = 'shop2',
        label = 'Convenience Store',
        keeper = { model = 'mp_m_shopkeep_01', coords = vec3(-3040.63, 584.01, 6.91), heading = 12.68 },
        npc = {
            behaviorMode = 'smart', --dump,smart
            voiceParam = 'SPEECH_PARAMS_FORCE',
            voiceLines = {
                detected = { 'GENERIC_INSULT_HIGH', 'GENERIC_CURSE_HIGH' },
                success = { 'GENERIC_SHOCKED_HIGH' }
            },
        },
        alertSpot = vec4(-3048.12, 587.84, 6.91, 40.91),
        returnPos = vec4(-3040.63, 584.01, 6.91, 12.68),
        storeCooldown = 300000,
        policeReset = {
            coords = vec3(-3047.49, 589.05, 6.91),
            radius = 1.0,
            jobs = { 'police' }
        },
        attackExit = vec3(-3042.7, 588.65, 6.91),
        rewards = {
            EasyLift = {
                { type = 'item', name = 'water', label = 'Water', min = 1, max = 2, prop = 'prop_ld_can_01' },
                { type = 'item', name = 'sandwich', label = 'Sandwich', min = 1, max = 1, prop = 'prop_sandwich_01' }
            },
            MediumLift = {
                { type = 'item', name = 'vodka', label = 'Vodka', min = 1, max = 1, prop = 'prop_vodka_bottle' },
                { type = 'item', name = 'whiskey', label = 'Whiskey', min = 1, max = 1, prop = 'prop_whiskey_bottle' }
            },
            HardLift = {
                { type = 'item', name = 'radio', label = 'Radio', min = 1, max = 1, prop = 'prop_cs_hand_radio' },
                { type = 'item', name = 'phone', label = 'Phone', min = 1, max = 1, prop = 'prop_phone_ing' },
                { type = 'money', moneyType = 'cash', label = 'Cash', min = 40, max = 80, prop = 'prop_cash_pile_01' }
            }
        },
        spots = {
            EasyLift = { coords = vec3(-3042.19, 588.04, 6.91+1.0), detectionChance = 0.20, duration = 1800 },
            MediumLift = { coords = vec3(-3042.3, 593.23, 6.91+1.0), detectionChance = 0.35, duration = 1800 },
            HardLift = { coords = vec3(-3040.37, 585.38, 6.91+1.0), detectionChance = 0.50, duration = 1800 }
        }
    },
    {
        id = 'shop3',
        label = 'Convenience Store',
        keeper = { model = 'mp_m_shopkeep_01', coords = vec3(-3244.66, 1000.13, 11.83), heading = 3.38 },
        npc = {
            behaviorMode = 'smart', --dump,smart
            voiceParam = 'SPEECH_PARAMS_FORCE',
            voiceLines = {
                detected = { 'GENERIC_INSULT_HIGH', 'GENERIC_CURSE_HIGH' },
                success = { 'GENERIC_SHOCKED_HIGH' }
            },
        },
        alertSpot = vec4(-3249.46, 1006.85, 11.83, 16.82),
        returnPos = vec4(-3244.66, 1000.13, 11.83+1.0, 3.38),
        storeCooldown = 300000,
        policeReset = {
            coords = vec3(-3248.35, 1007.42, 11.83),
            radius = 1.0,
            jobs = { 'police' }
        },
        attackExit = vec3(-3244.45, 1005.05, 11.83),
        rewards = {
            EasyLift = {
                { type = 'item', name = 'water', label = 'Water', min = 1, max = 2, prop = 'prop_ld_can_01' },
                { type = 'item', name = 'sandwich', label = 'Sandwich', min = 1, max = 1, prop = 'prop_sandwich_01' }
            },
            MediumLift = {
                { type = 'item', name = 'vodka', label = 'Vodka', min = 1, max = 1, prop = 'prop_vodka_bottle' },
                { type = 'item', name = 'whiskey', label = 'Whiskey', min = 1, max = 1, prop = 'prop_whiskey_bottle' }
            },
            HardLift = {
                { type = 'item', name = 'radio', label = 'Radio', min = 1, max = 1, prop = 'prop_cs_hand_radio' },
                { type = 'item', name = 'phone', label = 'Phone', min = 1, max = 1, prop = 'prop_phone_ing' },
                { type = 'money', moneyType = 'cash', label = 'Cash', min = 40, max = 80, prop = 'prop_cash_pile_01' }
            }
        },
        spots = {
            EasyLift = { coords = vec3(-3244.09, 1004.54, 11.83+1.0), detectionChance = 0.20, duration = 1800 },
            MediumLift = { coords = vec3(-3242.21, 1009.25, 11.83+1.0), detectionChance = 0.35, duration = 1800 },
            HardLift = { coords = vec3(-3243.03, 1001.28, 11.83+1.0), detectionChance = 0.50, duration = 1800 }
        }
    }        
}