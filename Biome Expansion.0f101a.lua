local locations =
{
    rulebookLoc = {-59.99, 0.97, -50.50},
    rulebookRot = {0.0, 180.0, 0.0},

    biomeCaveBagLoc = {16.50, 0.95, 4.01},
    biomeCaveBagRot = {0.0, 60.0, 0.0},

    -- tokens
    frozenTokenBagLoc = {0.00, 0.87, 0.00},
    frozenTokenBagRot = {0.0, 180.0, 0.0},

    glyphidEggTokenBagLoc = {-12.65, 1.25, -4.56},
    glyphidEggTokenBagRot = {0.00, 180.00, 180.00},
    fungusBogTokenBagLoc = {-12.65, 0.97, -6.47},
    fungusBogTokenBagRot = {0.0, 180.0, 0.0},

    muleTokenBagLoc = {16.50, 0.97, -5.52},
    muleTokenBagRot = {0.0,0.0,0.0},
    muleLegTokenBagLoc = {17.05, 0.97, -6.47},
    muleLegTokenBagRot = {0.0,0.0,0.0},

    neurotoxinGrenadeTokenLoc = {17.05, 1.07, 6.87},
    neurotoxinGrenadeTokenRot = {0.0, 180.0, 0.0},

    dreadHealthTrackerLoc = {31.35, 1.13, 10.68},
    dreadHealthTrackerRot = {0.0, 180.0, 0.0},

    acidSludgeTokenLoc = {{6.05, 1.07, -23.61},{7.15, 1.07, -23.61},{8.25, 1.07, -23.61},
    {5.50, 1.07, -24.57},{6.60, 1.07, -24.57},{7.70, 1.07, -24.57}},
    acidSludgeTokenRot = {0.00, 180.00, 0.00},

    -- Primary Alternates
    primaryAltGunnerLoc = {-27.05, 1.09, -21.54},
    primaryAltGunnerRot = {0.0, 180.0, 0.0},
    primaryAltScoutLoc = {-11.33, 1.02, -21.37},
    primaryAltScoutRot = {0.0, 180.0, 0.0},
    primaryAltDrillerLoc = {3.77, 1.02, -21.47},
    primaryAltDrillerRot = {0.0, 180.0, 0.0},
    primaryAltEngiLoc = {18.95, 1.02, -21.56},
    primaryAltEngiRot = {0.0, 180.0, 0.0},

    --Info Cards
    infoCardHatchlingLoc = {14.28, 0.98, 14.56},
    infoCardBreederLoc = {17.69, 0.98, 14.52},
    infoCardShellbackLoc = {20.80, 0.98, 14.48},
    infoCardRammerLoc = {23.79, 0.98, 14.52},
    infoCardStingtailLoc = {27.04, 1.05, 14.54},
    infoCardDreadLoc = {30.17, 1.05, 14.48},
    infoCardRot = {0.0, 180.0, 0.0},

    -- Rulebook Snippets
    glyphidSnippetLoc1 = {14.94, 1.01, 23.24},
    glyphidSnippetLoc2 = {20.70, 1.01, 23.24},
    glyphidSnippetDreadLoc = {30.80, 1.03, 23.49},
    glyphidSnippetRot = {0.0, 180.0, 0.0},

    -- Glyphid Bags
    hatchlingBagLoc = {14.30, 0.96, 17.35},
    hatchingBagRot = {0.0, 150.0, 0.0},
    breederBagLoc = {17.60, 0.96, 17.35},
    breederBagRot = {0.0, 150.0, 0.0},
    shellbackBagLoc = {20.90, 0.96, 17.35},
    shellbackBagRot = {0.0, 150.0, 0.0},
    rammerBagLoc = {24.20, 0.96, 17.35},
    rammerBagRot = {0.0, 150.0, 0.0},
    stingtailBagLoc = {27.50, 1.04, 17.35},
    stingtailBagRot = {0.0, 150.0, 0.0},
    dreadBagLoc = {30.79, 0.99, 17.35},
    dreadBagRot = {0.0, 180.0, 0.0},

    -- Props
    explodingPlantBagLoc = {-12.65, 0.96, 3.06},
    explodingPlantBagRot = {0.0, 180.0, 0.0},
    geyserBagLoc = {-12.65, 0.97, -2.66},
    geyserBagRot = {0.0, 180.0, 0.0},
    cryoBulbBagLoc = {-12.65, 0.97, 1.15},
    cryoBulbBagRot = {0.0, 180.0, 0.0},
    glowingPillarBagLoc = {-12.65, 0.97, -0.75},
    glowingPillarBagRot = {0.0, 180.0, 0.0}
}

local GUIDs =
{
    expansionBox = '0f101a',
    rulebook = '0f1838',

    -- Cave Tiles
    biomeCaveBag = 'b17808',
    biomeCaveL = 'd460dd',
    biomeCaveLong = '571c73',
    biomeCaveBig = 'c647a9',
    biomeCaveMid1 = '0438f7',
    biomeCaveMid2 = '9fcc36',
    biomeCaveThin = '8005d9',
    biomeCaveSmall = 'c91a14',
    biomeCaveMagic = '7f914b',
    biomeCaveCocoon = '3c82c8',

    -- tokens
    frozenTokenBag = 'a7d977',

    glyphidEggTokenBag = '6d901c',
    fungusBogTokenBag = '31336f',

    muleTokenBag = '2b80fe',
    muleLegTokenBag = '9ec2da',

    neurotoxinGrenadeToken = 'fadad0',

    acidSludgeTokens = {'6048e9','c6acf8','c49a6e','145057','5e932a','7ea5a3'},

    dreadHealthTracker = '71b3e1',

    -- Cards
    -- Secondary Weapon Cards
    secondaryLokICard = '72fc34',
    secondaryBoltsharkCard = '8d7517',
    secondaryBoltgunCard = 'b1a5fa',
    secondaryWaveCookerCard = '0c6e62',

    -- Throwables Weapon Cards
    neurotoxinGrenadeCard = '5404b5',
    boomrangCard = '915702',
    pheremoneCard = '724ac1',
    ripperCard = 'cfa007',
    shredderCard = '9dca3d',
    leadbursterCard = 'b42c0d',

    -- Rock & Stone Cards
    biomeRockAndStoneCard1 = '503c57',
    biomeRockAndStoneCard2 = 'f5e40d',

    -- Swarm Cards
    biomeSwarmCard1 = '560409',
    biomeSwarmCard2 = '3eeda2',
    biomeSwarmCard3 = '2d2117',
    biomeSwarmCard4 = 'e51a2e',

    -- Primary Weapon Alts
    biomePrimaryAltGunner = '5a7277',
    biomePrimaryAltScout = '25be38',
    biomePrimaryAltDriller = '440e56',
    biomePrimaryAltEngi = '75742f',

    -- Glyphid Info Cards
    infoCardHatchling = '4abaf0',
    infoCardBreeder = 'd946d4',
    infoCardShellback = 'c56d88',
    infoCardRammer = '15f43b',
    infoCardStingtail = 'a191a8',
    infoCardDread = '89d1e2',

    -- Glyphid Snippets
    glyphidSnippet1 = 'dcedab',
    glyphidSnippet2 = 'b61fb1',
    glyphidSnippetDread = '8ad902',

    -- Glyphid Bags
    hatchingBag = '5b74ba',
    breederBag = '79d59b',
    shellbackBag = '28e956',
    rammerBag = '5874bd',
    stingtailBag = '664a84',
    dreadBag = 'a15ee2',

    -- Props
    explodingPlantBag = '10bb36',
    geyserBag = '1feb7d',
    cryoBulbBag = 'a94e55',
    glowingPillarBag = '351d41',

    -- Dreadnought Cards
    dreadNoughtCards = {'a20560','86d6b5','692528','e5421b','c037da','4d6efa','405641','805640'}
}

function onLoad()
    self.clearButtons()

    if Global.call('getBiomeExpansionToggle') then
        ShowDisableExpansionButton()
    else
        ShowEnableExpansionButton()
    end

    expansionBox = getObjectFromGUID(GUIDs.expansionBox)
end

function ShowEnableExpansionButton()
    self.clearButtons()

    self.createButton(
        {
            click_function='ConfirmSetupButton',
            function_owner=self,
            label="Enable\n Expansion",
            position={0.0,1.0,-5.0},
            rotation={0.0,0.0, 0.0},
            width=1100*1.5,
            height=360*1.5,
            font_size=150*1.5,
            font_color='White',
            color='Green',
            tooltip='Enable Biome Expansion'
        }
    )
end

function ShowDisableExpansionButton()
    self.clearButtons()

    self.createButton(
        {
            click_function='ConfirmCleanupButton',
            function_owner=self,
            label="Disable\n Expansion",
            position={0.0,1.0,-5.0},
            rotation={0.0,0.0, 0.0},
            width=1100*1.5,
            height=360*1.5,
            font_size=150*1.5,
            font_color='White',
            color='Red',
            tooltip='Disable Biome Expansion'
        }
    )
end

function ConfirmSetupButton()
    self.createButton(
        {
            click_function='EnableExpansion',
            function_owner=self,
            label="Yes",
            position={-1.0,1.0,-3.5},
            rotation={0.0,0.0, 0.0},
            width=500*1.5,
            height=350*1.5,
            font_size=150*1.5,
            font_color='White',
            color='Green',
            tooltip='Yes - Continue Setup'
        }
    )

    self.createButton(
        {
            click_function='ShowEnableExpansionButton',
            function_owner=self,
            label="No",
            position={1.0,1.0,-3.5},
            rotation={0.0,0.0, 0.0},
            width=500*1.5,
            height=350*1.5,
            font_size=150*1.5,
            font_color='White',
            color='Red',
            tooltip='No - Cancel Setup'
        }
    )
end

function ConfirmCleanupButton()
    self.createButton(
        {
            click_function='DisableExpansion',
            function_owner=self,
            label="Yes",
            position={-1.0,1.0,-3.5},
            rotation={0.0,0.0, 0.0},
            width=500*1.5,
            height=350*1.5,
            font_size=150*1.5,
            font_color='White',
            color='Green',
            tooltip='Yes - Continue Cleanup'
        }
    )

    self.createButton(
        {
            click_function='ShowDisableExpansionButton',
            function_owner=self,
            label="No",
            position={1.0,1.0,-3.5},
            rotation={0.0,0.0, 0.0},
            width=500*1.5,
            height=350*1.5,
            font_size=150*1.5,
            font_color='White',
            color='Red',
            tooltip='No - Cancel Cleanup'
        }
    )
end

function EnableExpansion()
    self.clearButtons()

    Wait.time(function()
        ShowDisableExpansionButton()
    end,2)

    -- Checks if there are players minis in the cleanup zone (on a mission)
    if (Global.Call('getMissionCleanupScript').Call('CheckForPlayersInCleanupZone')) then
        printToAll('Unable to set up: Biome Expansion', 'Red')
        printToAll('Mission in progress detected, cleanup mission before enabling expansion\n', 'Red')
        return
    end

    printToAll('Setting up: Biome Expansion', 'Yellow')

    Global.Call('setBiomeExpansionToggle',true)

    -- Biome Cave Bag Setup
    params={
        bag = expansionBox,
        ID = GUIDs.biomeCaveBag,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.biomeCaveBagLoc,
            rotation = locations.biomeCaveBagRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Biome Cave Bag, it's not in the expansion box", 'Red')
    end

    --Token Setup
    params={
        bag = expansionBox,
        ID = GUIDs.frozenTokenBag,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.frozenTokenBagLoc,
            rotation = locations.frozenTokenBagRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Frozen Token Bag, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.glyphidEggTokenBag,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.glyphidEggTokenBagLoc,
            rotation = locations.glyphidEggTokenBagRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Glyphid Cocoon Bag, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.fungusBogTokenBag,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.fungusBogTokenBagLoc,
            rotation = locations.fungusBogTokenBagRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Poison Spore Fungus Bag, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.muleTokenBag,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.muleTokenBagLoc,
            rotation = locations.muleTokenBagRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Mini Mule Bag, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.muleLegTokenBag,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.muleLegTokenBagLoc,
            rotation = locations.muleLegTokenBagRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Mini Mule Leg Bag, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.neurotoxinGrenadeToken,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.neurotoxinGrenadeTokenLoc,
            rotation = locations.neurotoxinGrenadeTokenRot,
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up Neurotoxin Grenade Token, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.dreadHealthTracker,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.dreadHealthTrackerLoc,
            rotation = locations.dreadHealthTrackerRot,
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up Dreadnought Health Tracker, it's not in the expansion box", 'Red')
    end


    -- Sludge Tokens
    for i=1, 6 do
        params={
            bag = expansionBox,
            ID = GUIDs.acidSludgeTokens[i],
        }
        if Global.call('isInBag',params) then
            params.bag.takeObject({
                position = locations.acidSludgeTokenLoc[i],
                rotation = locations.acidSludgeTokenRot,
                guid = params.ID,
            })
        else
            printToAll("Warning: Unable to set up Acid Sludge Token, it's not in the expansion box", 'Red')
        end
    end

    -- Secondary Weapon Cards
    params={
        bag = expansionBox,
        ID = GUIDs.secondaryLokICard,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = Global.call('getSecondariesDeckZone').GetPosition(),
            rotation = {0.0, 180.0, 0.0},
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up LOK-I Smart Rifle Card, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.secondaryBoltsharkCard,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = Global.call('getSecondariesDeckZone').GetPosition(),
            rotation = {0.0, 180.0, 0.0},
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up Nishanka Boltshark X-60 Card, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.secondaryBoltgunCard,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = Global.call('getSecondariesDeckZone').GetPosition(),
            rotation = {0.0, 180.0, 0.0},
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up Armskore Bolt Gun Card, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.secondaryWaveCookerCard,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = Global.call('getSecondariesDeckZone').GetPosition(),
            rotation = {0.0, 180.0, 0.0},
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up Colette Wave Cooker Card, it's not in the expansion box", 'Red')
    end

    -- Throwables
    params={
        bag = expansionBox,
        ID = GUIDs.neurotoxinGrenadeCard,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = Global.call('getThrowablesDeckZone').GetPosition(),
            rotation = {0.0, 180.0, 180.0},
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up Neurotoxin Grenade Card, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.boomrangCard,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = Global.call('getThrowablesDeckZone').GetPosition(),
            rotation = {0.0, 180.0, 180.0},
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up Voltaic Stun Sweeper Card, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.pheremoneCard,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = Global.call('getThrowablesDeckZone').GetPosition(),
            rotation = {0.0, 180.0, 180.0},
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up Pheromone Canister Card, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.ripperCard,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = Global.call('getThrowablesDeckZone').GetPosition(),
            rotation = {0.0, 180.0, 180.0},
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up Springloaded Ripper Card, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.shredderCard,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = Global.call('getThrowablesDeckZone').GetPosition(),
            rotation = {0.0, 180.0, 180.0},
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up Shredder Swarm Grenade Card, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.leadbursterCard,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = Global.call('getThrowablesDeckZone').GetPosition(),
            rotation = {0.0, 180.0, 180.0},
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up Tactical Leadburster Card, it's not in the expansion box", 'Red')
    end

    -- Rock & Stone Cards
    params={
        bag = expansionBox,
        ID = GUIDs.biomeRockAndStoneCard1,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = Global.call('getRockAndStoneDeckZone').GetPosition(),
            rotation = {0.0, 90.0, 180.0},
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up 'I actually think we're gonna make it' Rock & Stone Card, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.biomeRockAndStoneCard2,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = Global.call('getRockAndStoneDeckZone').GetPosition(),
            rotation = {0.0, 90.0, 180.0},
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up 'Lights Up!' Rock & Stone Card, it's not in the expansion box", 'Red')
    end

    -- Biome Swarm Cards
    params={
        bag = expansionBox,
        ID = GUIDs.biomeSwarmCard1,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = Global.call('getSwarmDeckZone').GetPosition(),
            rotation = {0.0, 90.0, 180.0},
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up 'Get out of the way!' Swarm Card, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.biomeSwarmCard2,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = Global.call('getSwarmDeckZone').GetPosition(),
            rotation = {0.0, 90.0, 180.0},
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up 'Don't get caught up!' Swarm Card, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.biomeSwarmCard3,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = Global.call('getSwarmDeckZone').GetPosition(),
            rotation = {0.0, 90.0, 180.0},
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up 'Rolling Creep' Swarm Card, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.biomeSwarmCard4,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = Global.call('getSwarmDeckZone').GetPosition(),
            rotation = {0.0, 90.0, 180.0},
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up 'It's going to hit us!' Swarm Card, it's not in the expansion box", 'Red')
    end

    -- Primary Weapon Alts
    params={
        bag = expansionBox,
        ID = GUIDs.biomePrimaryAltGunner,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.primaryAltGunnerLoc,
            rotation = locations.primaryAltGunnerRot,
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up 'Hurricane' Guided Rocket System alternate gunner primary token, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.biomePrimaryAltScout,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.primaryAltScoutLoc,
            rotation = locations.primaryAltScoutRot,
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up Drak-25 Plasma Carabine alternate scout primary token, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.biomePrimaryAltDriller,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.primaryAltDrillerLoc,
            rotation = locations.primaryAltDrillerRot,
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up Corrosive Sludge Pump alternate driller primary token, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.biomePrimaryAltEngi,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.primaryAltEngiLoc,
            rotation = locations.primaryAltEngiRot,
            guid = params.ID,
        })
    else
        printToAll("Warning: Unable to set up Shard Diffractor alternate engineer primary token, it's not in the expansion box", 'Red')
    end

    -- Glyphid Info Cards
    params={
        bag = expansionBox,
        ID = GUIDs.infoCardHatchling,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.infoCardHatchlingLoc,
            rotation = locations.infoCardRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Naedocyte Hatchling Info Card, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.infoCardBreeder,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.infoCardBreederLoc,
            rotation = locations.infoCardRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Naedocyte Breeder Info Card, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.infoCardShellback,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.infoCardShellbackLoc,
            rotation = locations.infoCardRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Q'Ronar Shellback Info Card, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.infoCardRammer,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.infoCardRammerLoc,
            rotation = locations.infoCardRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Rammer Info Card, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.infoCardStingtail,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.infoCardStingtailLoc,
            rotation = locations.infoCardRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Stingtail Info Card, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.infoCardDread,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.infoCardDreadLoc,
            rotation = locations.infoCardRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Dreadnought Info Card, it's not in the expansion box", 'Red')
    end

    -- Glyphid Info Snippets
    params={
        bag = expansionBox,
        ID = GUIDs.glyphidSnippet1,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.glyphidSnippetLoc1,
            rotation = locations.glyphidSnippetRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Biome Glyphids Info PDF 1, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.glyphidSnippet2,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.glyphidSnippetLoc2,
            rotation = locations.glyphidSnippetRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Biome Glyphids Info PDF 2, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.glyphidSnippetDread,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.glyphidSnippetDreadLoc,
            rotation = locations.glyphidSnippetRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Dreadnought Info PDF, it's not in the expansion box", 'Red')
    end

    -- Glyphid Mini Bags
    params={
        bag = expansionBox,
        ID = GUIDs.hatchingBag,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.hatchlingBagLoc,
            rotation = locations.hatchingBagRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Naedocyte Hatchling Bag, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.breederBag,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.breederBagLoc,
            rotation = locations.breederBagRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Naedocyte Breeder Bag, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.shellbackBag,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.shellbackBagLoc,
            rotation = locations.shellbackBagRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Q'Ronar Shellback Bag, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.rammerBag,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.rammerBagLoc,
            rotation = locations.rammerBagRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Rammer Bag, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.stingtailBag,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.stingtailBagLoc,
            rotation = locations.stingtailBagRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Stingtail Bag, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.dreadBag,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.dreadBagLoc,
            rotation = locations.dreadBagRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Dreadnought Bag, it's not in the expansion box", 'Red')
    end

    -- Prop Bags
    params={
        bag = expansionBox,
        ID = GUIDs.explodingPlantBag,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.explodingPlantBagLoc,
            rotation = locations.explodingPlantBagRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Exploding Plant Bag, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.geyserBag,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.geyserBagLoc,
            rotation = locations.geyserBagRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Lava Geyser Bag, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.cryoBulbBag,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.cryoBulbBagLoc,
            rotation = locations.cryoBulbBagRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Cryo Bulb Bag, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.glowingPillarBag,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.glowingPillarBagLoc,
            rotation = locations.glowingPillarBagRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Glowing Pillar Bag, it's not in the expansion box", 'Red')
    end


    -- Iterate through everything else in the box, 
    -- This is for things that can't be referenced by GUIDs such as decks and PDFs
    index = #expansionBox.getObjects()
    for i = 1, index do
        obj = expansionBox.TakeObject()

        obj.lock()
        
        dCardParams = {table = GUIDs.dreadNoughtCards, value = obj.getGUID()}
        if obj.type == "Deck" then
            -- looks for the deck containing dread cards
            for _, containedObject in ipairs(obj.getObjects()) do
                if (containedObject.gm_notes == "dreadCard") then
                    obj.setLock(false)
                    obj.setRotation({0.0, 180.0, 180.0})
                    obj.setPosition(Global.Call('getDreadDeckZone').GetPosition())
                    break
                else
                    -- if it's not the right deck put it back in the box
                    expansionBox.putObject(obj)
                end
            end
        elseif Global.Call('TableContains', dCardParams) then
            obj.setPosition(Global.Call('getDreadDeckZone').GetPosition())
            obj.setRotation({0.0, 180.0, 180.0})
            obj.setLock(false)         
            
        elseif obj.getGMNotes() == "dreadCard" then
            obj.setPosition(Global.Call('getDreadDeckZone').GetPosition())
            obj.setRotation({0.0, 180.0, 180.0})
            obj.setLock(false)      

        elseif obj.getGUID() == GUIDs.rulebook then
            obj.setLock(false)
            obj.setRotation(locations.rulebookRot)
            obj.setPosition(locations.rulebookLoc)
        end
    end

end

function DisableExpansion()
    self.clearButtons()

    Wait.time(function()
        ShowEnableExpansionButton()
    end,2)

    -- Checking to see if player minis are on the board (in the middle of a mission)
    if (Global.Call('getMissionCleanupScript').Call('CheckForPlayersInCleanupZone')) then
        printToAll('Unable to clean up: Biome Expansion', 'Red')
        printToAll('\nMission in progress detected, cleanup mission before disabling expansion\n', 'Red')
        return
    end

    printToAll('Cleaning up: Biome Expansion', 'Yellow')

    Global.Call('setBiomeExpansionToggle',false)

    -- // Expansion Cleanup //
    local objects = getAllObjects()
    -- instead of long if else statements use dictionary or more sophisticated table.find


    for _, object in ipairs(objects) do

        objGUID = object.GetGUID()

        sludgeTokenParams =
        {
            table = GUIDs.acidSludgeTokens,
            value = objGUID
        }

        if objGUID == GUIDs.rulebook then
            expansionBox.putObject(object)

        -- Put cave segments in the cave bag
        elseif (objGUID == GUIDs.biomeCaveL or
            objGUID == GUIDs.biomeCaveLong or
            objGUID == GUIDs.biomeCaveBig or
            objGUID == GUIDs.biomeCaveMid1 or
            objGUID == GUIDs.biomeCaveMid2 or
            objGUID == GUIDs.biomeCaveThin or
            objGUID == GUIDs.biomeCaveSmall or
            objGUID == GUIDs.biomeCaveMagic or
            objGUID == GUIDs.biomeCaveCocoon) then
                Global.call('getBiomeCaveBag').putObject(object)

        elseif object.getGMNotes() == "Frozen" then -- put frozen token in frozen token bag
            Global.call('getFrozenBag').putObject(object)
        elseif object.getGMNotes() == "pSpore" then -- put spore token in spore token bag
            Global.call('getPoisonSporeBag').putObject(object)
        elseif object.getGMNotes() == "mMule" then
            Global.call('getMiniMuleBag').putObject(object)
        elseif object.getGMNotes() == "muleLeg" then
            Global.call('getMuleLegBag').putObject(object)
        elseif objGUID == GUIDs.neurotoxinGrenadeToken then
            expansionBox.putObject(object)
        elseif object.getGMNotes() == "cocoon" then
            Global.call('getEggBag').putObject(object)
        elseif Global.Call('TableContains', sludgeTokenParams) then
            expansionBox.putObject(object)

        -- Cleaning up cards
        elseif objGUID == GUIDs.secondaryLokICard then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.secondaryBoltsharkCard then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.secondaryBoltgunCard then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.secondaryWaveCookerCard then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.neurotoxinGrenadeCard then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.boomrangCard then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.pheremoneCard then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.ripperCard then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.shredderCard then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.leadbursterCard then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.biomeRockAndStoneCard1 then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.biomeRockAndStoneCard2 then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.biomeSwarmCard1 then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.biomeSwarmCard2 then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.biomeSwarmCard3 then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.biomeSwarmCard4 then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.infoCardHatchling then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.infoCardBreeder then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.infoCardShellback then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.infoCardRammer then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.infoCardStingtail then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.infoCardDread then
            expansionBox.putObject(object)
        elseif object.getGMNotes() == "dreadCard" then
            expansionBox.putObject(object)

        -- Searching decks for cards
        elseif object.type == "Deck" then
            deckPosition = object.getPosition()
            for _, containedObject in ipairs(object.getObjects()) do
                -- have to take the object out of the deck to be able to read
                -- it's info
                obj = object.takeObject({smooth = false})
                if (obj.getGUID() == GUIDs.secondaryLokICard)
                or (obj.getGUID() == GUIDs.secondaryBoltsharkCard)
                or (obj.getGUID() == GUIDs.secondaryBoltgunCard)
                or (obj.getGUID() == GUIDs.secondaryWaveCookerCard)
                or (obj.getGUID() == GUIDs.neurotoxinGrenadeCard)
                or (obj.getGUID() == GUIDs.boomrangCard)
                or (obj.getGUID() == GUIDs.pheremoneCard)
                or (obj.getGUID() == GUIDs.ripperCard)
                or (obj.getGUID() == GUIDs.shredderCard)
                or (obj.getGUID() == GUIDs.leadbursterCard)
                or (obj.getGUID() == GUIDs.biomeRockAndStoneCard1)
                or (obj.getGUID() == GUIDs.biomeRockAndStoneCard2)
                or (obj.getGUID() == GUIDs.biomeSwarmCard1)
                or (obj.getGUID() == GUIDs.biomeSwarmCard2)
                or (obj.getGUID() == GUIDs.biomeSwarmCard3)
                or (obj.getGUID() == GUIDs.biomeSwarmCard4)
                or (obj.getGUID() == GUIDs.infoCardHatchling)
                or (obj.getGUID() == GUIDs.infoCardBreeder)
                or (obj.getGUID() == GUIDs.infoCardShellback)
                or (obj.getGUID() == GUIDs.infoCardRammer)
                or (obj.getGUID() == GUIDs.infoCardStingtail)
                or (obj.getGUID() == GUIDs.infoCardDread)
                or (obj.getGMNotes() == "dreadCard")
                then
                    expansionBox.putObject(obj)
                else
                    -- if the object in the deck is not in part of the expansion
                    -- put it back where it was (note: this will shuffle the decks around)
                    obj.setPosition(deckPosition)
                end
            end

        -- Cards put into box
        elseif objGUID == GUIDs.dreadHealthTracker then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.biomePrimaryAltGunner then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.biomePrimaryAltScout then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.biomePrimaryAltDriller then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.biomePrimaryAltEngi then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.glyphidSnippet1 then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.glyphidSnippet2 then
            expansionBox.putObject(object)
        elseif objGUID == GUIDs.glyphidSnippetDread then
            expansionBox.putObject(object)

        -- Minis put into bags
        elseif object.getGMNotes() == "stingtail" then
            Global.call('getStingtailBag').putObject(object)
        elseif object.getGMNotes() == "nBreeder" then
            Global.call('getNaedoBreederBag').putObject(object)
        elseif object.getGMNotes() == "nHatchlings" then
            Global.call('getNaedoHatchlingBag').putObject(object)
        elseif object.getGMNotes() == "qShellback" then
            Global.call('getQShellbackBag').putObject(object)
        elseif object.getGMNotes() == "rammer" then
            Global.call('getRammersBag').putObject(object)
        elseif object.getGMNotes() == "dread" then
            Global.call('getDreadBag').putObject(object)

        -- Props put into bags
        elseif object.getGMNotes() == "explodingPlants" then
            Global.call('getExplodingPlantsBag').putObject(object)
        elseif object.getGMNotes() == "cBulb" then
            Global.call('getCryoBulbBag').putObject(object)
        elseif object.getGMNotes() == "gCrystal" then
            Global.call('getGlowingCrystalBag').putObject(object)
        elseif object.getGMNotes() == "geyser" then
            Global.call('getGeyserBag').putObject(object)
        end
    end

    -- Wait a few seconds for objects to be placed into bags and then
    -- clean up the bags
    Wait.time(function()
        objects = getAllObjects()
        for _, object in ipairs(objects) do
            if (object.getGUID() == GUIDs.biomeCaveBag)
            or (object.getGUID() == GUIDs.frozenTokenBag)
            or (object.getGUID() == GUIDs.fungusBogTokenBag)
            or (object.getGUID() == GUIDs.glyphidEggTokenBag)
            or (object.getGUID() == GUIDs.muleTokenBag)
            or (object.getGUID() == GUIDs.muleLegTokenBag)
            or (object.getGUID() == GUIDs.hatchingBag)
            or (object.getGUID() == GUIDs.breederBag)
            or (object.getGUID() == GUIDs.shellbackBag)
            or (object.getGUID() == GUIDs.rammerBag)
            or (object.getGUID() == GUIDs.stingtailBag)
            or (object.getGUID() == GUIDs.dreadBag)
            or (object.getGUID() == GUIDs.explodingPlantBag)
            or (object.getGUID() == GUIDs.geyserBag)
            or (object.getGUID() == GUIDs.cryoBulbBag)
            or (object.getGUID() == GUIDs.glowingPillarBag)
            then
                expansionBox.putObject(object)
            end
        end
    end, 2)
end