local locations =
{
    bulkDetonatorMiniBagLoc = {37.94, 0.97, 18.30},
    bulkDetonatorMiniBagRot = {359.50, 149.98, 0.23},
    infoCardLoc = {38.00, 1.00, 14.59},
    infoCardRot = {0.00, 179.86, 0.00}
}

local GUIDs =
{
    expansionBox = '619342',
    bulkDetonatorMiniBag = '8caff9',
    bulkDetonatorMini = 'd9404d',
    bulkDetonatorInfoCard = 'cf0871',
    bulkDetonatorSwarmCard = '004e7b'
}

local XpacBags =
{
    expansionBox = getObjectFromGUID(GUIDs.expansionBox),
    bulkDetonatorMiniBag = getObjectFromGUID(GUIDs.bulkDetonatorMiniBag)
}

function onLoad()
    self.clearButtons()

    if Global.call('getBulkDetonatorExpansionToggle') then
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
            position={0.0,4.0,0.0},
            rotation={0.0,-90.0,90.0},
            width=1000,
            height=350,
            font_size=150,
            font_color='White',
            color='Green',
            tooltip='Enable Bulk Detonator - Mini Expansion'
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
            position={0.0,4.0,0.0},
            rotation={0.0,-90.0,90.0},
            width=1000,
            height=350,
            font_size=150,
            font_color='White',
            color='Red',
            tooltip='Disable Bulk Detonator - Mini Expansion'
        }
    )
end

function ConfirmSetupButton()
    self.createButton(
        {
            click_function='EnableExpansion',
            function_owner=self,
            label="Yes",
            position={0.0,3.0,0.5},
            rotation={0.0,-90.0,90.0},
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
            position={0.0,3.0,-0.5},
            rotation={0.0,-90.0,90.0},
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
            position={0.0,3.0,0.5},
            rotation={0.0,-90.0,90.0},
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
            position={0.0,3.0,-0.5},
            rotation={0.0,-90.0,90.0},
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
    if Global.call('getMissionActive') then
        printToAll('Unable to set up: Bulk Detonator Mini Expansion', 'Red')
        printToAll('\nMission in progress detected, cleanup mission before enabling expansion\n', 'Red')
        return
    end

    self.clearButtons()

    Wait.time(function()
        ShowDisableExpansionButton()
    end,2)

    printToAll('Setting up: Bulk Detonator Mini Expansion', 'Yellow')

    Global.Call('setBulkDetonatorExpansionToggle',true)

    params={
        bag = expansionBox,
        ID = GUIDs.bulkDetonatorInfoCard,
    }
    if Global.call('isInBag',params) then
        expansionBox.takeObject({
            position = locations.infoCardLoc,
            rotation = locations.infoCardRot,
            guid = GUIDs.bulkDetonatorInfoCard,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Bulk Detonator info card, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.bulkDetonatorMiniBag,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = locations.bulkDetonatorMiniBagLoc,
            rotation = locations.bulkDetonatorMiniBagRot,
            guid = params.ID,
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Bulk Detonator bag, it's not in the expansion box", 'Red')
    end

    params={
        bag = expansionBox,
        ID = GUIDs.bulkDetonatorSwarmCard,
    }
    if Global.call('isInBag',params) then
        params.bag.takeObject({
            position = {-3.66, 2.22, 7.92},
            rotation = {0.00, 90.03, 180.00},
            guid = params.ID,
            -- Lock tiles afer spawn
            --callback="afterSpawnLock", callback_owner=Global
        })
    else
        printToAll("Warning: Unable to set up Bulk Detonator swarm card, it's not in the expansion box", 'Red')
    end

    Global.call('BulkDetonatorXpacIDs')
end

function DisableExpansion()
    --if (Global.Call('getMissionCleanupScript').Call('CheckForPlayersInCleanupZone')) then
    if Global.call('getMissionActive') then
        printToAll('Unable to clean up: Bulk Detonator Mini Expansion', 'Red')
        printToAll('\nMission in progress detected, cleanup mission before disabling expansion\n', 'Red')
        return
    end

    self.clearButtons()

    Wait.time(function()
        ShowEnableExpansionButton()
    end,2)

    printToAll('Cleaning up: Bulk Detonator Mini Expansion', 'Yellow')

    Global.Call('setBulkDetonatorExpansionToggle',false)


    -- // Expansion Cleanup //
    local objects = getAllObjects()
    -- instead of long if else statements use dictionary or more sophisticated table.find

    for _, object in ipairs(objects) do
        if object.getGUID() == GUIDs.bulkDetonatorMini then
            XpacBags.bulkDetonatorMiniBag.putObject(object)

        -- Checks the decks to see if there are any cards from the xpac in those decks
        -- NOTE: may need to check bags too?
        elseif object.type == "Deck" then
            deckPosition = object.getPosition()
            for _, containedObject in ipairs(object.getObjects()) do
                -- have to take the object out of the deck to be able to read
                -- it's info
                obj = object.takeObject({smooth = false})
                if (obj.getGUID() == GUIDs.bulkDetonatorInfoCard)
                or (obj.getGUID() == GUIDs.bulkDetonatorSwarmCard)
                then
                    XpacBags.expansionBox.putObject(obj)
                else
                    -- if the object in the deck is not in part of the expansion
                    -- put it back where it was (note: this will shuffle the decks around)
                    obj.setPosition(deckPosition)
                end
            end
        end
    end

    Wait.time(function()
        -- second pass once everything is properly put back in bags
        objects = getAllObjects()
        for _, object in ipairs(objects) do
            if (object.getGUID() == GUIDs.bulkDetonatorMiniBag)
            or (object.getGUID() == GUIDs.bulkDetonatorInfoCard)
            or (object.getGUID() == GUIDs.bulkDetonatorSwarmCard)
            then
                XpacBags.expansionBox.putObject(object)
            end
        end
    end,2) -- wait two seconds before running the cleanup

end