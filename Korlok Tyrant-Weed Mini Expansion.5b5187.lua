local locations =
{
    HeartClamLoc = {42.89, 0.97, 17.35},
    HeartClamRot = {0.00, 150.00, 0.00},
    HeartClamInfoCardLoc = {42.53, 0.98, 14.56},
    HeartClamInfoCardRot = {0.00, 180.00, 0.00},

    SproutLoc = {46.19, 0.97, 17.35},
    SproutRot = {0.00, 150.00, 0.00},
    SproutInfoCardLoc = {45.77, 0.98, 14.53},
    SproutInfoCardRot = {0.00, 180.00, 0.00},

    HealingPodLoc = {49.49, 0.97, 17.35},
    HealingPodRot = {0.00, 150.00, 0.00},
    HealingPodInfoCard = {49.01, 0.98, 14.58},
    HealingPodInfoCardRot = {0.00, 180.00, 0.00}
}

local GUIDs =
{
    expansionBox = '5b5187',

    heartClamBag = '6b2359',
    heartClamMini = '72f13b',
    heartClamInfoCard = '20304c',

    sproutBag = '5b120d',
    sproutMinis = {'3d6c16','e9453a'},
    sproutInfoCard = 'c63531',

    healingPodBag = 'ade8ab',
    healingPodMinis = {'e79649','68118b'},
    healingPodInfoCard = '553b44',

    hiddenCaveSegment = '26792c'
}

local XpacBags =
{
    expansionBox = getObjectFromGUID(GUIDs.expansionBox),
    heartClamBag = getObjectFromGUID(GUIDs.heartClamBag),
    sproutBag = getObjectFromGUID(GUIDs.sproutBag),
    healingPodBag = getObjectFromGUID(GUIDs.healingPodBag),
}

function onLoad()
    self.clearButtons()

    if Global.call('getKorlokExpansionToggle') then
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
            position={-5.0,0.0,0.0},
            rotation={0.0,-90.0, 0.0},
            width=1100,
            height=360,
            font_size=150,
            font_color='White',
            color='Green',
            tooltip='Enable Korlok Tyrant-Weed - Mini Expansion'
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
            position={-5.0,0.0,0.0},
            rotation={0.0,-90.0, 0.0},
            width=1100,
            height=360,
            font_size=150,
            font_color='White',
            color='Red',
            tooltip='Disable Korlok Tyrant-Weed - Mini Expansion'
        }
    )
end

function ConfirmSetupButton()
    self.createButton(
        {
            click_function='EnableExpansion',
            function_owner=self,
            label="Yes",
            position={-4.0,0.0,0.5},
            rotation={0.0,-90.0, 0.0},
            width=500,
            height=350,
            font_size=150,
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
            position={-4.0,0.0,-0.5},
            rotation={0.0,-90.0, 0.0},
            width=500,
            height=350,
            font_size=150,
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
            position={-4.0,0.0,0.5},
            rotation={0.0,-90.0, 0.0},
            width=500,
            height=350,
            font_size=150,
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
            position={-4.0,0.0,-0.5},
            rotation={0.0,-90.0, 0.0},
            width=500,
            height=350,
            font_size=150,
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
        printToAll('Unable to set up: Korlok Tyrant-Weed Mini Expansion', 'Red')
        printToAll('Mission in progress detected, cleanup mission before enabling expansion\n', 'Red')
        return
    end

    printToAll('Setting up: Korlok Tyrant-Weed Mini Expansion', 'Yellow')

    Global.Call('setKorlokExpansionToggle',true)


    -- Info Card setups
    params={
        bag = expansionBox,
        ID = GUIDs.heartClamInfoCard,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.HeartClamInfoCardLoc,
            rotation = locations.HeartClamInfoCardRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Korlok Tyrant-Weed Heart Clam info card, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.sproutInfoCard,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.SproutInfoCardLoc,
            rotation = locations.SproutInfoCardRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Korlok Tyrant-Weed Sprout info card, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.healingPodInfoCard,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.HealingPodInfoCard,
            rotation = locations.HealingPodInfoCardRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Korlok Tyrant-Weed Healing Pod info card, it's not in the expansion box", 'Red')
    end

    -- Bag Setups
    params={
        bag = expansionBox,
        ID = GUIDs.heartClamBag,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.HeartClamLoc,
            rotation = locations.HeartClamRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Korlok Tyrant-Weed Heart Clam bag, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.sproutBag,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.SproutLoc,
            rotation = locations.SproutRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Korlok Tyrant-Weed Healing Sprout bag, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.healingPodBag,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.HealingPodLoc,
            rotation = locations.HealingPodRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Korlok Tyrant-Weed Healing Pod bag, it's not in the expansion box", 'Red')
    end

    -- Hidden cave segment setup
    params={
        bag = expansionBox,
        ID = GUIDs.hiddenCaveSegment,
    }

    if Global.call('isInBag',params) then
        params.bag.takeObject({
            guid = params.ID,
            callback_function = function(takenObj)
                Global.Call('getHiddenCaveBag').putObject(takenObj)
            end
        })
    else
        printToAll("Warning: Unable to set up Korlok hidden cave segment, it's not in the expansion box", 'Red')
    end

    Global.call('KorlokXpacIDs')
end

function DisableExpansion()
    self.clearButtons()

    Wait.time(function()
        ShowEnableExpansionButton()
    end,2)

    -- Checking to see if player minis are on the board (in the middle of a mission)
    if (Global.Call('getMissionCleanupScript').Call('CheckForPlayersInCleanupZone')) then
        printToAll('Unable to clean up: Korlok Tyrant-Weed Mini Expansion', 'Red')
        printToAll('\nMission in progress detected, cleanup mission before disabling expansion\n', 'Red')
        return
    end

    printToAll('Cleaning up: Korlok Tyrant-Weed Mini Expansion', 'Yellow')

    Global.Call('setKorlokExpansionToggle',false)

    -- // Expansion Cleanup //
    local objects = getAllObjects()
    -- instead of long if else statements use dictionary or more sophisticated table.find

    caveSegmentWasCleanedUp = false

    for _, object in ipairs(objects) do

        objGUID = object.GetGUID()

        -- Put minis into bags
        sproutParams =
        {
            table = GUIDs.sproutMinis,
            value = objGUID
        }

        healingPodParams =
        {
            table = GUIDs.healingPodMinis,
            value = objGUID
        }

        if objGUID == GUIDs.heartClamMini then
            XpacBags.heartClamBag.putObject(object)
        elseif Global.Call('TableContains', sproutParams) then
            getObjectFromGUID(GUIDs.sproutBag).putObject(object)
        elseif Global.Call('TableContains', healingPodParams) then
            getObjectFromGUID(GUIDs.healingPodBag).putObject(object)

        elseif object.type == "Deck" then
            deckPosition = object.getPosition()
            for _, containedObject in ipairs(object.getObjects()) do
                -- have to take the object out of the deck to be able to read
                -- it's info
                obj = object.takeObject({smooth = false})
                if (obj.getGUID() == GUIDs.heartClamInfoCard)
                or (obj.getGUID() == GUIDs.sproutInfoCard)
                or (obj.getGUID() == GUIDs.healingPodInfoCard)
                then
                    XpacBags.expansionBox.putObject(obj)
                else
                    -- if the object in the deck is not in part of the expansion
                    -- put it back where it was (note: this will shuffle the decks around)
                    obj.setPosition(deckPosition)
                end
            end

        elseif objGUID == GUIDs.hiddenCaveSegment then
            XpacBags.expansionBox.putObject(object)
        elseif objGUID == GUIDs.heartClamInfoCard then
            XpacBags.expansionBox.putObject(object)
        elseif objGUID == GUIDs.sproutInfoCard then
            XpacBags.expansionBox.putObject(object)
        elseif objGUID == GUIDs.healingPodInfoCard then
            XpacBags.expansionBox.putObject(object)
        end
    end

    -- If the hidden cave segment was not cleaned up, find it in the cave segment bag
    if not caveSegmentWasCleanedUp then
        Global.Call('getHiddenCaveBag').takeObject({
            guid=GUIDs.hiddenCaveSegment,
            smooth = false,
            callback_function = function(takenObj)
                XpacBags.expansionBox.putObject(takenObj)
            end
        })
    end
    
    Wait.time(function()
        -- second pass once everything is properly put back in bags
        -- to put the mini bags away
        objects = getAllObjects()
        for _, object in ipairs(objects) do
            if (object.getGUID() == GUIDs.heartClamBag)
            or (object.getGUID() == GUIDs.sproutBag)
            or (object.getGUID() == GUIDs.healingPodBag)
            then
                XpacBags.expansionBox.putObject(object)
            end
        end
    end,2) -- wait two seconds before running the cleanup
end