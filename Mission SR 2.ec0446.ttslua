missionSR2Positions = {
    hiddenCaveLoc1 = {{-3.85, 1.09, -4.56},{-4.95, 1.09, -4.56},{-4.40, 1.09, -3.61}},
    hiddenCaveRot1 = {{0.03, 300.00, 0.09},{359.91, 60.02, 359.99},{0.06, 179.96, 359.93}},
    hiddenCaveLoc2 = {{-1.65, 1.10, 3.06},{-2.75, 1.10, 3.06},{-2.20, 1.10, 4.01}},
    hiddenCaveRot2 = {{0.03, 300.00, 0.09},{359.91, 60.02, 359.99},{0.06, 179.96, 359.93}},
    hiddenCaveLoc3 = {{5.50, 1.10, -3.61},{4.40, 1.10, -3.61},{4.95, 1.10, -2.66}},
    hiddenCaveRot3 = {{0.03, 300.00, 0.09},{359.91, 60.02, 359.99},{0.06, 179.96, 359.93}},
    miniHiddenCaveLoc1 = {{2.20, 1.11, 5.92},{2.75, 1.11, 4.96},{1.65, 1.11, 4.96}},
    miniHiddenCaveRot1 = {{359.91, 59.99, 359.99},{0.06, 180.11, 359.93},{0.03, 300.02, 0.09}},
    miniHiddenCaveLoc2 = {{5.50, 1.11, 5.92},{6.05, 1.11, 4.96},{4.95, 1.11, 4.96}},
    miniHiddenCaveRot2 = {{359.91, 60.00, 359.99},{0.06, 180.11, 359.93},{0.03, 300.02, 0.09}},
    miniHiddenCaveLoc3 = {{6.05, 1.11, 1.15},{6.60, 1.11, 0.20},{5.50, 1.11, 0.20}},
    miniHiddenCaveRot3 = {{359.91, 60.00, 359.99},{0.06, 180.11, 359.93},{0.03, 300.02, 0.09}},
    stalagmites = {{0.55, 2.24, -2.66},{0.00, 2.24, 0.20},{1.10, 2.24, 0.20}},
    grunts = {{-2.75,2.24, -0.75},{2.75, 2.24, 3.06}},
    exploders = {{2.20, 2.24, 2.10}},
    explorationTiles = {{0.00, 2.35, -3.61},{-2.20, 2.24, 0.20},{0.52,2.24, -0.79},
    {3.30, 2.24, 2.10}},
    minerals = {{-1.65, 1.19, -4.56},{-4.40, 1.20, 2.10},{-4.40, 1.20, 4.01},
    {-4.95, 1.20, 4.96},{0.55, 1.20, 3.06},{2.20, 1.21, 4.01},{4.95, 1.21, -0.75},
    {4.40, 1.20, -5.52}}
}

function setup()
    print("Launching Mission 2: Liquid Riches\nGood Luck Miners!\n")

    local caveBag = Global.call('getCaveBag') -- need to call global function to get proper object ID

    params={
        bag = caveBag,
        ID = Global.call('getDropPodGUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {0.55, 1.22, -6.47},
            rotation = {0.03, 300.00, 180.09},
            guid = Global.call('getDropPodGUID'),
            -- Lock tiles afer spawn
            --callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup Drop Pod, object is not in cave bag')
    end

    params={
        bag = caveBag,
        ID = Global.call('getCaveSeg2GUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {2.75, 1.10, 1.15},
            rotation = {359.94, 359.97, 0.08},
            guid = Global.call('getCaveSeg2GUID'), -- Top (Increment Segment)
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup cave, cave tiles are not in the cave bag')
    end

    params={
        bag = caveBag,
        ID = Global.call('getCaveSeg3GUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {0.00, 1.10, -1.70},
            rotation = {0.08, 240.02, 0.01},
            guid = Global.call('getCaveSeg3GUID'), -- Top Left (L Segment)
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup cave, cave tiles are not in the cave bag')
    end

    params={
        bag = caveBag,
        ID = Global.call('getHexPit5GUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {2.20, 1.38, 0.20},
            rotation = {359.95, 119.99, 179.90},
            guid = Global.call('getHexPit5GUID'), -- 5 Hex Pit
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup pits, pit tiles are not in the cave bag')
    end

    params={
        bag = caveBag,
        ID = Global.call('getCaveEntrance1GUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {-3.30, 1.24, 0.20},
            rotation = {0.0,0.0,0.0},
            guid = Global.call('getCaveEntrance1GUID'),
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup cave exit 1, it is not in the cave bag')
    end

    params={
        bag = caveBag,
        ID = Global.call('getCaveEntrance2GUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {4.95, 1.24, 3.06},
            rotation = {0.0,0.0,0.0},
            guid = Global.call('getCaveEntrance2GUID'),
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup cave exit 2, it is not in the cave bag')
    end

    -- Hidden cave segments
    local hiddenCaveBag = Global.call('getHiddenCaveBag') -- need to call global function to get proper object ID
    hiddenCaveBag.shuffle()

    params = {floor = 0.1, ceiling = 0.4,}
    randomIndex = Global.call('randInt',params)

    if not Global.call('isBagEmpty',hiddenCaveBag) then
        hiddenCaveBag.takeObject({
            position = missionSR2Positions.hiddenCaveLoc1[randomIndex],
            rotation = missionSR2Positions.hiddenCaveRot1[randomIndex]
        })
    else
        print("Warning: Unable to setup hidden cave segment, bag is empty")
    end

    params = {floor = 0.1, ceiling = 0.4,}
    randomIndex = Global.call('randInt',params)

    if not Global.call('isBagEmpty',hiddenCaveBag) then
        hiddenCaveBag.takeObject({
            position = missionSR2Positions.hiddenCaveLoc2[randomIndex],
            rotation = missionSR2Positions.hiddenCaveRot2[randomIndex]
        })
    else
        print("Warning: Unable to setup hidden cave segment, bag is empty")
    end

    params = {floor = 0.1, ceiling = 0.4,}
    randomIndex = Global.call('randInt',params)

    if not Global.call('isBagEmpty',hiddenCaveBag) then
        hiddenCaveBag.takeObject({
            position = missionSR2Positions.hiddenCaveLoc3[randomIndex],
            rotation = missionSR2Positions.hiddenCaveRot3[randomIndex]
        })
    else
        print("Warning: Unable to setup hidden cave segment, bag is empty")
    end

    local miniHiddenCaveBag = Global.call('getMiniHiddenCaveBag')
    miniHiddenCaveBag.shuffle()

    params = {floor = 0.1, ceiling = 0.4,}
    randomIndex = Global.call('randInt',params)

    if not Global.call('isBagEmpty',miniHiddenCaveBag) then
        miniHiddenCaveBag.takeObject({
            position = missionSR2Positions.miniHiddenCaveLoc1[randomIndex],
            rotation = missionSR2Positions.miniHiddenCaveRot1[randomIndex]
        })
    else
        print("Warning: Unable to setup hidden cave segment, bag is empty")
    end

    params = {floor = 0.1, ceiling = 0.4,}
    randomIndex = Global.call('randInt',params)

    if not Global.call('isBagEmpty',miniHiddenCaveBag) then
        miniHiddenCaveBag.takeObject({
            position = missionSR2Positions.miniHiddenCaveLoc2[randomIndex],
            rotation = missionSR2Positions.miniHiddenCaveRot2[randomIndex]
        })
    else
        print("Warning: Unable to setup hidden cave segment, bag is empty")
    end

    params = {floor = 0.1, ceiling = 0.4,}
    randomIndex = Global.call('randInt',params)

    if not Global.call('isBagEmpty',miniHiddenCaveBag) then
        miniHiddenCaveBag.takeObject({
            position = missionSR2Positions.miniHiddenCaveLoc3[randomIndex],
            rotation = missionSR2Positions.miniHiddenCaveRot3[randomIndex]
        })
    else
        print("Warning: Unable to setup hidden cave segment, bag is empty")
    end

    -- need to call global function to get proper object ID
    local stalagmiteModelBag = Global.call('getStalagmiteModelBag')
    -- Stalagmites
    for i=1, 3 do
        stalagmiteModelBag.takeObject({
            position = missionSR2Positions.stalagmites[i],
            -- rotation = -- ADD RANDOM
        })
    end

    local gruntBag = Global.call('getGruntBag')
    for i=1, 2 do
        if not Global.call('isBagEmpty',gruntBag) then
            gruntBag.takeObject({
                position = missionSR2Positions.grunts[i],
                rotation = {0.0, 30.0 , 0.0}
            })
        else
            print("Warning: Unable to setup grunts, the grunt bag is empty")
            break
        end
    end

    local exploderBag = Global.call('getExploderBag')
    for i=1, 1 do
        if not Global.call('isBagEmpty',exploderBag) then
            exploderBag.takeObject({
                position = missionSR2Positions.exploders[i],
                rotation = {0.0, 30.0 , 0.0}
            })
        else
            print("Warning: Unable to setup grunts, the grunt bag is empty")
            break
        end
    end

    local explorationBag = Global.call('getExplorationBag')

    local lootBugBag = Global.call('getLootBugBag')
    for i=1, 2 do
        if not Global.call('isBagEmpty',lootBugBag) then
            explorationBag.putObject(lootBugBag.takeObject())
        else
            print("Warning: Unable to set up exploration tokens, loot bug bag is empty")
        end
    end

    local barleyBulbBag = Global.call('getBarleyBulbBag')
    for i=1, 2 do
        if not Global.call('isBagEmpty',barleyBulbBag) then
            explorationBag.putObject(barleyBulbBag.takeObject())
        else
            print("Warning: Unable to set up exploration tokens, barley bulb bag is empty")
            break
        end
    end

    -- Shuffling Exploration Tiles
    explorationBag.shuffle()

    -- Placing Exploration Tiles
    -- Originally places 7, some kept in bag for hidden cave code to work
    for i=1, 4 do
        if not Global.call('isBagEmpty',explorationBag) then
            explorationBag.takeObject({
                position = missionSR2Positions.explorationTiles[i],
                rotation = {0.0, 0.0, 180.0}
            })
        else
            print("Warning: Unable to setup exploration tokens, the bag is empty")
            break
        end
    end

    -- Fills and shuffles the Space rig exploration tile bag
    Global.call('fillSRExploreBag')

    -- Generating Mineral Bag
    local mineralBag = Global.call('getMineralBag')

    local goldBag = Global.call('getGoldBag')
    for i=1, 3 do
        if not Global.call('isBagEmpty',goldBag) then
            mineralBag.putObject(goldBag.takeObject())
        else
            print("Warning: Unable to set up minerals, the gold bag is empty")
        end
    end

    local nitraBag = Global.call('getNitraBag')
    for i=1, 5 do
        if not Global.call('isBagEmpty',nitraBag) then
            mineralBag.putObject(nitraBag.takeObject())
        else
            print("Warning: Unable to set up minerals, the nitra bag is empty")
            break
        end
    end

    -- Shuffling Minerals
    mineralBag.shuffle()

    -- Placing Minerals
    for i=1, 8 do
        if not Global.call('isBagEmpty',mineralBag) then
            mineralBag.takeObject({
                position = missionSR2Positions.minerals[i]
            })
        else
            print("Warning: Unable to set up minerals, the bag is empty")
        end
    end

    -- Have to wait for everything else to spawn or else the refinery
    -- will spawn underneath everything else
    Wait.time(setupRefinery, 3)
    -- Have to wait to lock the refinery or else it'll hang in the air
    Wait.time(lockRefinery, 5)

    local missionBookB1 = Global.call('getMissionBookSR1')
    missionBookB1.setScale({2.0,1.0,2.0})
    missionBookB1.setPosition({-53.52, 0.97, -35.66})
    missionBookB1.Book.setPage(27)
    local missionBookB2 = Global.call('getMissionBookSR2')
    missionBookB2.setScale({2.0,1.0,2.0})
    missionBookB2.setPosition({-47.86, 0.97, -35.63})
    missionBookB2.Book.setPage(28)
end

function setupRefinery()
    Global.call('getRefinery').setPosition({-1.08, 2.39, -1.73})
    Global.call('getRefinery').setRotation({0.05, 240.05, 179.99})
end

function lockRefinery()
    Global.call('getRefinery').setLock(true)
end