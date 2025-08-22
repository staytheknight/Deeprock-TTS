function GetterCalls()
    cleanupButton()
    swarmBlock_GUID = '60a4ea'
    swarmBlock = getObjectFromGUID(swarmBlock_GUID)
    swarmEndScriptBox_GUID = '54c7e7'
    swarmEndScriptBox = getObjectFromGUID(swarmEndScriptBox_GUID)

    missionBook = Global.call('getMissionBook')
    missionBookB1 = Global.call('getMissionBookB1')
    missionBookB2 = Global.call('getMissionBookB2')
    missionBookSR1 = Global.call('getMissionBookSR1')
    missionBookSR2 = Global.call('getMissionBookSR2')

    missionBoard_GUID = 'd8201c'
    missionBoard = getObjectFromGUID(missionBoard_GUID)

    explorationBag = Global.call('getExplorationBag')
    mineralShuffleBag = Global.call('getMineralBag')

    exclaimTilesBag = Global.call('getExclamationTilesBag')
    frozenBag = Global.call('getFrozenBag')
    webbedBag = Global.call('getWebbedBag')
    stunnedBag = Global.call('getStunnedBag')

    caveBag = Global.call('getCaveBag')
    biomeCaveBag = Global.call('getBiomeCaveBag')
    hiddenCaveBag = Global.call('getHiddenCaveBag')
    miniHiddenCaveBag = Global.call('getMiniHiddenCaveBag')

    geyserBag = Global.call('getGeyserBag')
    explodingPlantsBag = Global.call('getExplodingPlantsBag')
    glowingCrystalBag = Global.call('getGlowingCrystalBag')
    cryoBulbBag = Global.call('getCryoBulbBag')
    poisonSporeBag = Global.call('getPoisonSporeBag')
    glyphidCocoonBag = Global.call('getGlyphidCocoonBag')

    pAmmoBag = getObjectFromGUID('8d7660')
    sAmmoBag = getObjectFromGUID('9d2b2f')
    wUpgradeBag = Global.call('getWeaponUpgradeBag')

    apocaBloomBag = Global.call('getApocaBloomBag')
    barleyBulbBag = Global.call('getBarleyBulbBag')
    fossilBag = Global.call('getFossilBag')
    redSugarBag = Global.call('getRedSugarBag')
    lootBugBag = Global.call('getLootBugBag')
    eggBag = Global.call('getEggBag')

    miniMuleBag = Global.call('getMiniMuleBag')
    muleLegBag = Global.call('getMuleLegBag')

    abandonedGearBag = Global.call('getAbandonedGearBag')
    goldLootBugBag = Global.call('getGoldLootBugBag')
    maltStarBag = Global.call('getMaltStarBag')
    yeastConesBag = Global.call('getYeastConesBag')

    nitraBag = Global.call('getNitraBag')
    goldBag = Global.call('getGoldBag')
    morkiteBag = Global.call('getMorkiteBag')
    aquardBag = Global.call('getAquardBag')

    -- Base game Glypids
    spitballerBag = Global.call('getSpitballerBag')
    broodNexusBag = Global.call('getbroodNexusBag')
    webspitterBag = Global.call('getWebSpitterBag')
    gruntBag = Global.call('getGruntBag')
    slasherBag = Global.call('getSlasherBag')
    exploderBag = Global.call('getExploderBag')
    macteraBag = Global.call('getMacteraBag')
    wardenBag = Global.call('getWardenBag')
    praetorianBag = Global.call('getPraetorianBag')
    opressorBag = Global.call('getOpressorBag')

    -- Goo from Above Glyphids
    gooBomberBag = Global.call('getGooBomberBag')
    menaceBag = Global.call('getMenaceBag')
    gooBag = Global.call('getGooBag')

    -- Biome Glypids
    naedocyteHatchlingsBag = Global.call('getNaedoHatchlingBag')
    naedocyteBreederBag = Global.call('getNaedoBreederBag')
    qronarShellbackBag = Global.call('getQShellbackBag')
    rammerBag = Global.call('getRammersBag')
    stingtailBag = Global.call('getStingtailBag')
    dreadnoughtBag = Global.call('getDreadBag')

    -- Bulk Detonator
    bulkBag = Global.call("getBulkBag")
    kHeartBag = Global.call("getKHeartBag")
    kSproutBag = Global.call("getKSproutBag")
    kHealingBag = Global.call("getKHealingBag")
end

function swarmBlockCheck()
    objectsInSwarmZone = swarmEndScriptBox.getObjects()
    blockFound = false

    -- Checks to see if the swarm threat token is in the final spot
    for _, object in ipairs(objectsInSwarmZone) do
        if object == swarmBlock then
            blockFound = true
        end
    end

    -- This boolean was set up since it can't be put inside the
    -- object pair check for some reason (maybe because it's inside a for loop)
    if blockFound == true then
        return true
    else
        return false
    end
end

function cleanupButton()
    self.clearButtons()
    Global.call('showMissionSelectButton')
    self.createButton(
        {click_function='confirmationButton', function_owner=self, label='Cleanup ?',
        position={0.0 , 0.01 , 0.0}, rotation={0,0,0}, width=1000, height=700, font_size=200,
        scale={0.9,0.9,0.9}, color={0.0, 0.0, 0.0, 255.0}, font_color={252.8,245.0,0.0,255.0},
        tooltip='Cleanup current mission ?'}
    )
end

function confirmationButton()

    -- Checks to see if the swarm threat token is in the last spot
    -- If it is, bring up the cleanup buttons
    if swarmBlockCheck() then

        self.clearButtons()

        print("Place all objects on the playmat you wish to be returned to original positions before pressing confirm\n")

        self.createButton(
            {click_function='emptyExploreBags', function_owner=self, label='Confirm',
            position={0.0 , 0.01 , -0.8}, rotation={0,0,0}, width=1000, height=700, font_size=200,
            scale={0.9,0.9,0.9}, color={0.0, 0.0, 0.0, 255.0}, font_color={252.8,245.0,0.0,255.0},
            tooltip='Confirm cleanup'}
        )

        self.createButton(
            {click_function='cleanupButton', function_owner=self, label='Cancel',
            position={0.0 , 0.01 , 0.8}, rotation={0,0,0}, width=1000, height=700, font_size=200,
            scale={0.9,0.9,0.9}, color={0.0, 0.0, 0.0, 255.0}, font_color={252.8,245.0,0.0,255.0},
            tooltip='Cancel cleanup'}
            )
    else
        print("Please place the swarm threat track token on the final spot of the swarm threat track in order to perform a cleanup function")
        print("It's the black cube\n")
    end
end

-- Function empties the explore bags first and places objects on the board before doing mission cleanup
-- Waits a few moments for the objects to travel to the board as an issue happened before
-- where the objects travel time to the cleanup zone would take too long and the cleanup
-- algorithm would happen before the objects hit the table
function emptyExploreBags()
    while not Global.call('isBagEmpty',explorationBag)
    do
        explorationBag.takeObject({
            position = {0.10, 3.20, -1.71},
            rotation = {0.0,0.0,180.0},
            smooth = false
        })
    end

    while not Global.call('isBagEmpty',mineralShuffleBag)
    do
        mineralShuffleBag.takeObject({
            position = {2.10, 3.20, -1.71},
            smooth = false
        })
    end

    -- check if the space rig expansion is enabled to prevent an infinite loop
    if Global.Call('getSpaceRigExpansionToggle') then
        while not Global.call('isBagEmpty',Global.call('getMiniExploreTokenBag'))
        do
            spaceRigExploreBag.takeObject({
                position = {1.10, 3.20, -1.71},
                rotation = {0.0,0.0,180.0},
                smooth = false
            })
        end
    end

    Wait.frames(Cleanup, 30)
end

function Cleanup()
    GetterCalls()
    
    print("Performing Cleanup\n")

    self.clearButtons()

    local zone = Global.call('getCleanupZone')
    local objectsInZone = zone.getObjects()

    for _, object in ipairs(objectsInZone) do

        -- TODO: Turn this into a k,v database
        -- name / gm note of object ,,, where it goes back to

        -- unlocks the object (this is to prevent locked objects from being put
        -- back in bags, and when they're locked and pulled out they can't move)
        object.locked = false

        -- Single hex tiles
        if object.getGMNotes() == "single" then
            object.destruct()

        -- Cleanup Cave Segments
        elseif object.getGMNotes() == "caveSeg" then
            caveBag.putObject(object)

        elseif object.getGMNotes() == "BCaveSeg" then
            biomeCaveBag.putObject(object)

        elseif object.getGMNotes() == "HiddenCave" then
            object.setRotation({0.0,0.0,0.0})
            hiddenCaveBag.putObject(object)

        elseif object.getGMNotes() == "miniHiddenCave" then
            object.setRotation({0.0,0.0,0.0})
            miniHiddenCaveBag.putObject(object)

        -- Cleanup Exploration Tiles
        elseif object.getGMNotes() == "ApocaBloom" then
            object.setRotation({0.0,0.0,180.0})
            apocaBloomBag.putObject(object)

        elseif object.getGMNotes() == "StarchNut" then
            object.setRotation({0.0,0.0,180.0})
            barleyBulbBag.putObject(object)

        elseif object.getGMNotes() == "Fossil" then
            object.setRotation({0.0,0.0,180.0})
            fossilBag.putObject(object)

        elseif object.getGMNotes() == "RedSugar" then
            object.setRotation({0.0,0.0,180.0})
            redSugarBag.putObject(object)

        elseif object.getGMNotes() == "LootBugs" then
            object.setRotation({0.0,0.0,180.0})
            lootBugBag.putObject(object)

        elseif object.getGMNotes() == "Eggs" then
            object.setRotation({0.0,0.0,180.0})
            eggBag.putObject(object)

        elseif object.getGMNotes() == "mMule" then
            object.setRotation({0.0,0.0,180.0})
            miniMuleBag.putObject(object)

        elseif object.getGMNotes() == "muleLeg" then
            object.setRotation({0.0,0.0,180.0})
            muleLegBag.putObject(object)

        -- Space rig explore pickups
        elseif object.getGMNotes() == "abandonedGear" then
            object.setRotation({0.0,0.0,180.0})
            abandonedGearBag.putObject(object)

        elseif object.getGMNotes() == "gLootbug" then
            object.setRotation({0.0,0.0,180.0})
            goldLootBugBag.putObject(object)

        elseif object.getGMNotes() == "yeastCone" then
            object.setRotation({0.0,0.0,180.0})
            yeastConesBag.putObject(object)

        elseif object.getGMNotes() == "maltStar" then
            object.setRotation({0.0,0.0,180.0})
            maltStarBag.putObject(object)

        -- Cleanup Minerals
        elseif object.getName() == "Morkite" then
            morkiteBag.putObject(object)

        elseif object.getName() == "Nitra" then
            nitraBag.putObject(object)

        elseif object.getName() == "Gold" then
            goldBag.putObject(object)

        elseif object.getName() == "Aquarq" then
            aquardBag.putObject(object)

        -- Cleanup Glyphids
        elseif object.getName() == "Grunt" then
            gruntBag.putObject(object)

        elseif object.getName() == "Brood Nexus" then
            broodNexusBag.putObject(object)

        elseif object.getName() == "Spitball Infector" then
            spitballerBag.putObject(object)

        elseif object.getName() == "Webspitter" then
            webspitterBag.putObject(object)

        elseif object.getName() == "Exploder" then
            exploderBag.putObject(object)

        elseif object.getName() == "Slasher" then
            slasherBag.putObject(object)

        elseif object.getName() == "Mactera Spawn" then
            macteraBag.putObject(object)

        elseif object.getName() == "Warden" then
            wardenBag.putObject(object)

        elseif object.getName() == "Praetorian" then
            praetorianBag.putObject(object)

        elseif object.getName() == "Oppressor" then
            opressorBag.putObject(object)

        elseif object.getName() == "Goo Bomber" then
            gooBomberBag.putObject(object)

        elseif object.getName() == "Menace" then
            menaceBag.putObject(object)

        elseif object.getGMNotes() == "goo" then
            gooBag.putObject(object)

        elseif object.getName() == "Rammer" then
            rammerBag.putObject(object)

        elseif object.getName() == "Naedocyte Hatchlings" then
            naedocyteHatchlingsBag.putObject(object)

        elseif object.getName() == "Naedocyte Breeder" then
            naedocyteBreederBag.putObject(object)

        elseif object.getName() == "Q'ronar Shellback" then
            qronarShellbackBag.putObject(object)

        elseif object.getName() == "Stingtail" then
            stingtailBag.putObject(object)

        elseif object.getName() == "Dreadnought" then
            dreadnoughtBag.putObject(object)

        elseif object.getGMNotes() == "kHeart" then
            kHeartBag.putObject(object)

        elseif object.getGMNotes() == "kSprout" then
            kSproutBag.putObject(object)

        elseif object.getGMNotes() == "kHeal" then
            kHealingBag.putObject(object)

        elseif object.getGMNotes() == "bulk" then
            bulkBag.putObject(object)

        -- Cleanup Stalagmite (destroy, since infinite bag, don't need to put back)
        elseif object.getName() == "Stalagmite" then
            object.destruct()

        elseif object.getName() == "Geyser" then
            geyserBag.putObject(object)

        elseif object.getName() == "Exploding Plant" then
            explodingPlantsBag.putObject(object)

        elseif object.getName() == 'Glowing Crystal' then
            glowingCrystalBag.putObject(object)

        elseif object.getName() == 'Cryo Bulb' then
            cryoBulbBag.putObject(object)

        elseif object.getGMNotes() == "pSpore" then
            poisonSporeBag.putObject(object)

        elseif object.getGMNotes() == "cocoon" then
            glyphidCocoonBag.putObject(object)

        -- Misc Tiles
        elseif object.getGMNotes() == "MiscToken" then
            exclaimTilesBag.putObject(object)

        elseif object.getGMNotes () == "Frozen" then
            frozenBag.putObject(object)

        elseif object.getGMNotes () == "Webbed" then
            webbedBag.putObject(object)

        elseif object.getGMNotes () == "Stunned" then
            stunnedBag.putObject(object)

        -- Character stuff
        elseif object.getGMNotes() == "bosco" then
            object.setPositionSmooth({-21.45, 0.97, -4.56},true,false)

        elseif object.getName() == "Resupply Pod" then
            object.setPosition{11.55, 0.97, 8.77}

        elseif object.getName() == "Engineer" then
            object.setPosition({21.45, 1.11, -15.99})

        elseif object.getName() == "Sentry Gun" then
            object.setPositionSmooth({20.90, 0.97, -20.76},true,false)

        elseif object.getName() == "Platform" then
            object.setPositionSmooth({22.00, 1.07, -20.76},true,false)

        elseif object.getName() == "Driller" then
            object.setPosition{6.05, 1.07, -15.99}

        elseif object.getName() == "Flame" then
            object.setPositionSmooth({5.50, 1.07, -20.76},true,false)

        elseif object.getName() == "Acid Sludge" then
            object.setPositionSmooth({6.05, 1.07, -23.61},true,false)

        elseif object.getName() == "Gunner" then
            object.setPosition{-24.75, 1.12, -15.99}

        elseif object.getName() == "Shield" then
            object.setPosition{-25.30, 1.07, -20.76}

        elseif object.getName() == "Zipline" then
            object.setPositionSmooth({-24.20, 1.04, -20.76},true,false)

        elseif object.getName() == "Scout" then
            object.setPosition{-9.35, 1.07, -15.99}

        elseif object.getName() == "Flare" then
            object.setPositionSmooth({-8.80, 1.07, -20.76},true,false)

        elseif object.getGMNotes() == "PAmmo" then
            pAmmoBag.putObject(object)

        elseif object.getGMNotes() == "SAmmo" then
            sAmmoBag.putObject(object)

        elseif object.getGMNotes() == "gCube" then
            object.destruct()

        elseif object.getGMNotes() == "rCube" then
            object.destruct()

        elseif object.getGMNotes() == "wUpgrade" then
            object.setRotation({0.0,0.0,180.0})
            wUpgradeBag.putObject(object)

        -- Card cleanups
        elseif object.getGMNotes() == "swarmCard" then
            object.setPosition({-3.66, 2.22, 7.92})
            object.setRotation({0.00, 90.03, 180.00})

        elseif object.getGMNotes() == "eventCard" then
            object.setPosition({-7.16, 2.37, 7.91})
            object.setRotation({0.00, 90.03, 180.00})

        elseif object.getGMNotes() == "rockAndStoneCard" then
            object.setPosition({3.69, 1.13, 8.01})
            object.setRotation({0.00, 90.03, 180.00})

        elseif object.getGMNotes() == "resupplyCard" then
            object.setPosition({7.21, 1.13, 7.99})
            object.setRotation({0.00, 90.03, 180.00})

        elseif object.getGMNotes() == "secondariesCard" then
            object.setPosition({22.30, 2.03, 6.57})
            object.setRotation({0.00, 180.0, 0.00})

        elseif object.getGMNotes() == "throwableCard" then
            object.setPosition({25.01, 2.07, 6.59})
            object.setRotation({0.00, 180.0, 180.00})

        elseif object.getGMNotes() == "oHeartCard" then
            object.setPosition({-21.45, 2.02, 4.96})
            object.setRotation({0.00, 180.0, 180.00})

        elseif object.getGMNotes() == "dreadCard" then
            object.setPosition({33.55, 1.03, 14.49})
            object.setRotation({0.00, 180.00, 180.00})

        -- If the cards are in decks, search the deck for card tags
        -- to decide where to place these decks
        elseif object.type == "Deck" then
            for _, containedObject in ipairs(object.getObjects()) do
                if containedObject.gm_notes == "swarmCard" then
                    object.setPosition({-3.66, 2.22, 7.92})
                    object.setRotation({0.00, 90.03, 180.00})
                elseif containedObject.gm_notes == "eventCard" then
                    object.setPosition({-7.16, 2.37, 7.91})
                    object.setRotation({0.00, 90.03, 180.00})
                elseif containedObject.gm_notes == "rockAndStoneCard" then
                    object.setPosition({3.69, 1.13, 8.01})
                    object.setRotation({0.00, 90.03, 180.00})
                elseif containedObject.gm_notes == "resupplyCard" then
                    object.setPosition({7.21, 1.13, 7.99})
                    object.setRotation({0.00, 90.03, 180.00})
                elseif containedObject.gm_notes == "secondariesCard" then
                    object.setPosition({22.30, 2.03, 6.57})
                    object.setRotation({0.00, 180.0, 0.00})
                elseif containedObject.gm_notes == "throwableCard" then
                    object.setPosition({25.01, 2.07, 6.59})
                    object.setRotation({0.00, 180.0, 180.00})
                elseif containedObject.gm_notes == "oHeartCard" then
                    object.setPosition({-21.45, 2.02, 4.96})
                    object.setRotation({0.00, 180.0, 180.00})
                elseif containedObject.gm_notes == "dreadCard" then
                    object.setPosition({33.55, 1.03, 14.49})
                    object.setRotation({0.00, 180.00, 180.00})
                elseif containedObject.gm_notes == "challengeCard" then
                    object.setPosition({-46.00, 2.25, 3.84})
                    object.setRotation({0.00, 180.00, 180.00})
                elseif containedObject.gm_notes == "beerCard" then
                    object.setPosition({-38.03, 1.23, 3.50})
                    object.setRotation({0.00, 180.00, 180.00})                
                end
            end

        -- Misc token cleanup
        elseif object.getGMNotes() == "sCharge" then
            object.setPosition({17.60, 1.07, 7.82})

        elseif object.getGMNotes() == "iField" then
            object.setPosition({18.70, 1.07, 7.82})

        elseif object.getGMNotes() == "Lure" then
            object.setPosition({18.15, 1.07, 6.87})

        elseif object.getGMNotes() == "pMine" then
            object.setPosition({19.25, 1.07, 6.87})

        elseif object.getGMNotes() == "nGrenade" then
            object.setPosition({17.05, 1.07, 6.87})

        -- Spacerig component cleanup
        elseif object.getGMNotes() == "refinery" then
            object.setPosition({-15.95, 1.13, -2.66})
            object.setRotation({0.00, 300.00, 180.00})

        elseif object.getGMNotes() == "pJack" then
            Global.call('getPumpjackBag').putObject(object)

        elseif object.getGMNotes() == "sPipe" then
            object.setRotation({0.00, 0.00, 0.00})
            Global.call('getSPipeBag').putObject(object)

        elseif object.getGMNotes() == "cPipe" then
            object.setRotation({0.00, 0.00, 0.00})
            Global.call('getCPipeBag').putObject(object)

        elseif object.getGMNotes() == "dDozer" then
            object.setPosition({-24.75, 0.98, 1.15})
            object.setRotation({357.75, 270.13, 0.01})

        elseif object.getGMNotes() == "beamer" then
            Global.call('getBreamersBag').putObject(object)

        elseif object.getGMNotes() == "cHeart" then
            object.setPosition({-21.45, 0.96, 1.15})

        elseif object.getGMNotes() == "oHeart" then
            object.setState(1)
            object.setPosition({-21.45, 0.96, 1.15})

        elseif object.getGMNotes() == "heartGem" then
            object.setPosition({-21.45, 1.96, 1.15})

        -- Dice cleanups
        elseif object.getGMNotes() == "eDie1" then
            object.setPosition({21., 1.30, -2.15})
            object.setRotation({0.0,0.0,0.0})

        elseif object.getGMNotes() == "eDie2" then
            object.setPosition({22.00, 1.30, -2.15})
            object.setRotation({0.0,0.0,0.0})

        elseif object.getGMNotes() == "mDie1" then
            object.setPosition({24.0, 1.30, -2.15})
            object.setRotation({0.0,0.0,0.0})

        elseif object.getGMNotes() == "pDie1" then
            object.setPosition({21.5, 1.30, -7.10})
            object.setRotation({0.0,0.0,0.0})

        elseif object.getGMNotes() == "bDie1" then
            object.setPosition({20.0, 1.30, -3.8})
            object.setRotation({0.0,0.0,0.0})

        elseif object.getGMNotes() == "bDie2" then
            object.setPosition({21.0, 1.30, -3.8})
            object.setRotation({0.0,0.0,0.0})

        elseif object.getGMNotes() == "bDie3" then
            object.setPosition({22.0, 1.30, -3.8})
            object.setRotation({0.0,0.0,0.0})

        elseif object.getGMNotes() == "aDie1" then
            object.setPosition({21.0, 1.30, -5.4})
            object.setRotation({0.0,0.0,0.0})

        elseif object.getGMNotes() == "aDie2" then
            object.setPosition({22.0, 1.30, -5.4})
            object.setRotation({0.0,0.0,0.0})

        elseif object.getGMNotes() == "exDie1" then
            object.setPosition({24.0, 1.30, -5.4})
            object.setRotation({0.0,0.0,0.0})

        elseif object.getGMNotes() == "exDie2" then
            object.setPosition({25.0, 1.30, -5.4})
            object.setRotation({0.0,0.0,0.0})

        elseif object.getGMNotes() == "fDie1" then
            object.setPosition({24.0, 1.30, -3.8})
            object.setRotation({0.0,0.0,0.0})

        elseif object.getGMNotes() == "fDie2" then
            object.setPosition({25.0, 1.30, -3.8})
            object.setRotation({0.0,0.0,0.0})

        elseif object.getGMNotes() == "fDie3" then
            object.setPosition({26.00, 1.30, -3.8})
            object.setRotation({0.0,0.0,0.0})
        end

    end

    Global.call('ShuffleDeckZones')

    swarmBlock.setPosition({-8.24, 1.37, -8.91})
    swarmBlock.setRotation({0.0,0.0,0.0})

    -- Brings the mission book back to the first page
    missionBook.Book.setPage(0)

    missionBookB1.setScale({0.0,0.0,0.0})
    missionBookB2.setScale({0.0,0.0,0.0})
    missionBookB1.setPosition({-73.31, 0.97, -6.43})
    missionBookB2.setPosition({-67.20, 0.97, -6.49})
    missionBookSR1.setScale({0.0,0.0,0.0})
    missionBookSR2.setScale({0.0,0.0,0.0})
    missionBookSR1.setPosition({-73.64, 0.97, -16.55})
    missionBookSR2.setPosition({-67.53, 0.97, -16.61})

    -- relocks the mission board as it gets unlocked during the cleanup process
    missionBoard.locked = true

    -- Puts the cleanup button back
    cleanupButton()
end

-- Boolean check if any player figures are in the cleanup zone
function CheckForPlayersInCleanupZone()
    local zone = Global.call('getCleanupZone')
    local objectsInZone = zone.getObjects()

    local playerInZone = false
    for _, object in ipairs(objectsInZone) do
        if (object.getName() == "Engineer")
        or (object.getName() == "Driller")
        or (object.getName() == "Gunner")
        or (object.getName() == "Scout")
        then
            playerInZone = true
        end
    end

    return playerInZone
end