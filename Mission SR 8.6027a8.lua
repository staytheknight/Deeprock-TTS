missionSR8Positions = {
    hiddenCaveLoc1 = {{-4.95, 1.10, 3.06},{-4.40, 1.10, 4.01},{-3.85, 1.10, 3.06}},
    hiddenCaveRot1 = {{359.91, 60.01, 359.99},{0.06, 179.83, 359.93},{0.03, 300.00, 0.09}},
    miniHiddenCaveLoc1 = {{0.55, 1.11, 4.96},{1.10, 1.11, 4.01},{0.00, 1.10, 4.01}},
    miniHiddenCaveRot1 = {{359.91, 60.00, 359.99},{0.06, 180.21, 359.93},{0.03, 300.03, 0.09}},
    miniHiddenCaveLoc2 = {{4.95, 1.10, -2.66},{5.50, 1.10, -3.61},{4.40, 1.10, -3.61}},
    miniHiddenCaveRot2 = {{359.91, 60.00, 359.99},{0.06, 180.21, 359.93},{0.03, 300.03, 0.09}},
    miniHiddenCaveLoc3 = {{-4.95, 1.09, -6.47},{-3.85, 1.09, -6.47},{-4.40, 1.09, -7.42}},
    miniHiddenCaveRot3 = {{359.94, 0.00, 0.07},{359.97, 120.18, 359.91},{0.09, 240.23, 0.01}},
    stalagmites = {{1.65, 2.25, -2.66},{0.55, 2.24, -2.66},{2.20, 2.25, -1.71}},
    grunts = {{-2.20, 2.24, -1.71}},
    spitballer = {{2.20, 2.21, -5.51}},
    explorationTiles = {{-4.95, 2.34, -0.75},{-1.65, 2.36, 1.15},{1.65, 2.37, 1.15},
    {3.30, 2.36, -1.71},{1.65, 2.33, -6.47}},
    minerals = {{5.50, 1.20, -5.52},{4.95, 1.20, -6.47},{3.85, 1.20, -6.47},
    {1.10, 1.20, -3.61},{3.85, 1.20, -0.75},{-2.75, 1.20, 4.96},{-1.65, 1.20, 3.06},
    {-2.20, 1.19, -3.61},{-2.75, 1.19, -4.56},{-4.40, 1.19, -3.61},{-4.95, 1.19, -4.56},
    {-5.50, 1.19, -5.52},{-6.60, 1.19, -5.52}},
}

function setup()
    print("Launching Mission 8: Too Good to be True\nGood Luck Miners!\n")

    local caveBag = Global.call('getCaveBag') -- need to call global function to get proper object ID

    params={
        bag = caveBag,
        ID = Global.call('getDropPodGUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {3.30, 1.23, 2.11},
            rotation = {359.91, 60.02, 179.99},
            guid = Global.call('getDropPodGUID'),
            -- Lock tiles afer spawn
            --callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup Drop Pod, object is not in cave bag')
    end

    params={
        bag = caveBag,
        ID = Global.call('getCaveSeg1GUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {0.00, 1.09, -5.52},
            rotation = {0.07, 180.01, 359.92},
            guid = Global.call('getCaveSeg1GUID'),
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup cave, cave tiles are not in the cave bag')
    end

    params={
        bag = caveBag,
        ID = Global.call('getCaveSeg2GUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {-5.50, 1.09, -1.71},
            rotation = {359.95, 0.01, 0.08},
            guid = Global.call('getCaveSeg2GUID'),
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup cave, cave tiles are not in the cave bag')
    end

    params={
        bag = caveBag,
        ID = Global.call('getCaveSeg4GUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {0.00, 1.10, 0.20},
            rotation = {0.06, 180.00, 359.93},
            guid = Global.call('getCaveSeg4GUID'),
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup cave, cave tiles are not in the cave bag')
    end

    params={
        bag = caveBag,
        ID = Global.call('getHexPit2GUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {-6.05, 1.23, -2.66},
            rotation = {359.91, 60.00, 359.98},
            guid = Global.call('getHexPit2GUID'),
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup pits, pit tiles are not in the cave bag')
    end

    params={
        bag = caveBag,
        ID = Global.call('getHexPit3GUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {-3.30, 1.38, 0.20},
            rotation = {359.94, 0.04, 180.07},
            guid = Global.call('getHexPit3GUID'),
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup pits, pit tiles are not in the cave bag')
    end

    params={
        bag = caveBag,
        ID = Global.call('getHexPit4GUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {0.55, 1.25, -0.75},
            rotation = {0.10, 180.01, 359.96},
            guid = Global.call('getHexPit4GUID'),
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup pits, pit tiles are not in the cave bag')
    end

    params={
        bag = caveBag,
        ID = Global.call('getHexPit5GUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {0.55, 1.40, 1.15},
            rotation = {359.99, 300.00, 180.11},
            guid = Global.call('getHexPit5GUID'),
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
            position = {-5.50, 1.23, 0.20},
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
            position = {-0.55, 1.22, -6.47},
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
            position = missionSR8Positions.hiddenCaveLoc1[randomIndex],
            rotation = missionSR8Positions.hiddenCaveRot1[randomIndex]
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
            position = missionSR8Positions.miniHiddenCaveLoc1[randomIndex],
            rotation = missionSR8Positions.miniHiddenCaveRot1[randomIndex]
        })
    else
        print("Warning: Unable to setup hidden cave segment, bag is empty")
    end

    params = {floor = 0.1, ceiling = 0.4,}
    randomIndex = Global.call('randInt',params)

    if not Global.call('isBagEmpty',miniHiddenCaveBag) then
        miniHiddenCaveBag.takeObject({
            position = missionSR8Positions.miniHiddenCaveLoc2[randomIndex],
            rotation = missionSR8Positions.miniHiddenCaveRot2[randomIndex]
        })
    else
        print("Warning: Unable to setup hidden cave segment, bag is empty")
    end

    params = {floor = 0.1, ceiling = 0.4,}
    randomIndex = Global.call('randInt',params)

    if not Global.call('isBagEmpty',miniHiddenCaveBag) then
        miniHiddenCaveBag.takeObject({
            position = missionSR8Positions.miniHiddenCaveLoc3[randomIndex],
            rotation = missionSR8Positions.miniHiddenCaveRot3[randomIndex]
        })
    else
        print("Warning: Unable to setup hidden cave segment, bag is empty")
    end

    -- need to call global function to get proper object ID
    local stalagmiteModelBag = Global.call('getStalagmiteModelBag')
    -- Stalagmites
    for i=1, 3 do
        stalagmiteModelBag.takeObject({
            position = missionSR8Positions.stalagmites[i],
            -- rotation = -- ADD RANDOM
        })
    end

    local gruntBag = Global.call('getGruntBag')
    for i=1, 1 do
        if not Global.call('isBagEmpty',gruntBag) then
            gruntBag.takeObject({
                position = missionSR8Positions.grunts[i],
                rotation = {0.0, 30.0 , 0.0}
            })
        else
            print("Warning: Unable to setup grunts, the grunt bag is empty")
            break
        end
    end

    local spitballerBag = Global.call('getSpitballerBag')
    for i=1, 1 do
        if not Global.call('isBagEmpty',spitballerBag) then
            spitballerBag.takeObject({
                position = missionSR8Positions.spitballer[i],
                rotation = {0.0, 30.0 , 0.0}
            })
        else
            print("Warning: Unable to setup spitballer, the bag is empty")
            break
        end
    end

    local explorationBag = Global.call('getExplorationBag')

    local lootBugBag = Global.call('getLootBugBag')
    for i=1, 3 do
        if not Global.call('isBagEmpty',lootBugBag) then
            explorationBag.putObject(lootBugBag.takeObject())
        else
            print("Warning: Unable to set up exploration tokens, loot bug bag is empty")
        end
    end

    local redSugarBag = Global.call('getRedSugarBag')
    for i=1, 1 do
        if not Global.call('isBagEmpty',redSugarBag) then
            explorationBag.putObject(redSugarBag.takeObject())
        else
            print("Warning: Unable to set up exploration tokens, red sugar bag is empty")
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
    -- Originally places 6, some kept in bag for hidden cave code to work
    for i=1, 5 do
        if not Global.call('isBagEmpty',explorationBag) then
            explorationBag.takeObject({
                position = missionSR8Positions.explorationTiles[i],
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

    local nitraBag = Global.call('getNitraBag')
    for i=1, 5 do
        if not Global.call('isBagEmpty',nitraBag) then
            mineralBag.putObject(nitraBag.takeObject())
        else
            print("Warning: Unable to set up minerals, the nitra bag is empty")
            break
        end
    end

    local morkiteBag = Global.call('getMorkiteBag')
    for i=1, 8 do
        if not Global.call('isBagEmpty',morkiteBag) then
            mineralBag.putObject(morkiteBag.takeObject())
        else
            print("Warning: Unable to set up minerals, the morkite bag is empty")
            break
        end
    end

    -- Shuffling Minerals
    mineralBag.shuffle()

    -- Placing Minerals
    for i=1, 13 do
        if not Global.call('isBagEmpty',mineralBag) then
            mineralBag.takeObject({
                position = missionSR8Positions.minerals[i]
            })
        else
            print("Warning: Unable to set up minerals, the bag is empty")
        end
    end

    local missionBookB1 = Global.call('getMissionBookSR1')
    missionBookB1.setScale({2.0,1.0,2.0})
    missionBookB1.setPosition({-53.52, 0.97, -35.66})
    missionBookB1.Book.setPage(39)
    local missionBookB2 = Global.call('getMissionBookSR2')
    missionBookB2.setScale({2.0,1.0,2.0})
    missionBookB2.setPosition({-47.86, 0.97, -35.63})
    missionBookB2.Book.setPage(40)
end