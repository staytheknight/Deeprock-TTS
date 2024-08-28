missionB18Positions = {
    hiddenCaveLoc1 = {{-2.20, 1.10, 4.01},{-3.30, 1.10, 4.01},{-2.75, 1.10, 4.96}},
    hiddenCaveRot1 = {{0.03, 300.00, 0.09},{359.91, 60.03, 359.99},{0.06, 180.00, 359.93}},
    hiddenCaveLoc2 = {{-4.40, 1.09, -5.51},{-4.95, 1.09, -4.56},{-3.85, 1.09, -4.56}},
    hiddenCaveRot2 = {{359.94, 0.00, 0.07},{359.97, 120.00, 359.91},{0.09, 240.15, 0.01}},
    hiddenCaveLoc3 = {{0.00, 1.09, -5.51},{0.55, 1.10, -4.56},{1.10, 1.10, -5.51}},
    hiddenCaveRot3 = {{359.91, 60.00, 359.99},{0.06, 180.11, 359.93},{0.03, 300.05, 0.09}},
    hiddenCaveLoc4 = {{6.05, 1.10, -6.47},{4.95, 1.10, -6.47},{5.50, 1.10, -5.51}},
    hiddenCaveRot4 = {{0.03, 300.00, 0.09},{359.91, 60.09, 359.99},{0.06, 180.04, 359.93}},
    stalagmites = {{-2.20, 2.24, 0.20}},
    grunts = {{-3.30, 2.24, 0.20}},
    explodingPlants = {{4.40, 2.25, 0.20},{6.05, 2.25, 1.15}},
    geysers = {{-0.55, 1.24, -0.75},{2.20, 1.25, 2.10}},
    muleLegs = {{0.00, 2.36, -1.71},{-2.75, 2.36, -0.75},{-1.65, 2.36, 1.15},
    {1.65, 2.36, 3.06},{1.65, 2.36, 1.15},{3.85, 2.37, 1.15}},
    explorationTiles = {{-4.95, 1.35, -0.75},{0.00, 1.36, 0.20},
    {2.75, 1.37, 3.06},{6.60, 1.37, 0.20}},
    minerals = {{3.85, 1.20, -4.56},{3.30, 1.20, -3.61},{2.20, 1.20, -1.71}
    ,{2.75, 1.20, -0.75},{-2.20, 1.19, -3.61},{-2.75, 1.19, -6.47},{-6.05, 1.19, -6.47},
    {-6.60, 1.19, -1.71},{-6.60, 1.19, 0.20},{-6.05, 1.19, 1.15}}
}

function setup()
    print("Launching Mission 18: Deadly Temptations\nGood Luck Miners!\n")

    local caveBag = Global.call('getCaveBag')
    local biomeCaveBag = Global.call('getBiomeCaveBag')

    params={
        bag = caveBag,
        ID = Global.call('getDropPodGUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {5.50, 1.24, 4.01},
            rotation = {0.03, 300.00, 180.09},
            guid = Global.call('getDropPodGUID'),
            -- Lock tiles afer spawn
            --callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup Drop Pod, object is not in cave bag')
    end

    params={
        bag = biomeCaveBag,
        ID = Global.call('getIceSegL_GUID'),
    }
    if Global.call('isInBag',params) then
        biomeCaveBag.takeObject({
            position = {4.95, 1.26, 1.15},
            rotation = {0.05, 180.00, 179.92},
            guid = Global.call('getIceSegL_GUID'),
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup cave, cave tiles are not in the biome cave bag')
    end


    params={
        bag = biomeCaveBag,
        ID = Global.call('getIceSegLong_GUID'),
    }
    if Global.call('isInBag',params) then
        biomeCaveBag.takeObject({
            position = {-2.75, 1.25, -0.75},
            rotation = {359.93, 90.01, 179.95},
            guid = Global.call('getIceSegLong_GUID'),
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup cave, cave tiles are not in the biome cave bag')
    end

    params={
        bag = caveBag,
        ID = Global.call('getHexPit3GUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {-5.50, 1.10, 4.01},
            rotation = {0.09, 240.00, 0.01},
            guid = Global.call('getHexPit3GUID'),
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
            position = {4.95, 1.26, -0.75},
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
            position = {-3.85, 1.25, 1.15},
            rotation = {0.0,0.0,0.0},
            guid = Global.call('getCaveEntrance2GUID'),
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup cave exit 2, it is not in the cave bag')
    end

    local hiddenCaveBag = Global.call('getHiddenCaveBag') -- need to call global function to get proper object ID
    hiddenCaveBag.shuffle()

    params = {floor = 0.1, ceiling = 0.4,}
    randomIndex = Global.call('randInt',params)

    if not Global.call('isBagEmpty',hiddenCaveBag) then
        hiddenCaveBag.takeObject({
            position = missionB18Positions.hiddenCaveLoc1[randomIndex],
            rotation = missionB18Positions.hiddenCaveRot1[randomIndex]
        })
    else
        print("Warning: Unable to setup hidden cave segment, bag is empty")
    end

    params = {floor = 0.1, ceiling = 0.4,}
    randomIndex = Global.call('randInt',params)

    if not Global.call('isBagEmpty',hiddenCaveBag) then
        hiddenCaveBag.takeObject({
            position = missionB18Positions.hiddenCaveLoc2[randomIndex],
            rotation = missionB18Positions.hiddenCaveRot2[randomIndex]
        })
    else
        print("Warning: Unable to setup hidden cave segment, bag is empty")
    end

    params = {floor = 0.1, ceiling = 0.4,}
    randomIndex = Global.call('randInt',params)

    if not Global.call('isBagEmpty',hiddenCaveBag) then
        hiddenCaveBag.takeObject({
            position = missionB18Positions.hiddenCaveLoc3[randomIndex],
            rotation = missionB18Positions.hiddenCaveRot3[randomIndex]
        })
    else
        print("Warning: Unable to setup hidden cave segment, bag is empty")
    end

    params = {floor = 0.1, ceiling = 0.4,}
    randomIndex = Global.call('randInt',params)

    if not Global.call('isBagEmpty',hiddenCaveBag) then
        hiddenCaveBag.takeObject({
            position = missionB18Positions.hiddenCaveLoc4[randomIndex],
            rotation = missionB18Positions.hiddenCaveRot4[randomIndex]
        })
    else
        print("Warning: Unable to setup hidden cave segment, bag is empty")
    end

    local stalagmiteModelBag = Global.call('getStalagmiteModelBag')
    -- Placing Stalagmites
    for i=1, 1 do
        stalagmiteModelBag.takeObject({
            position = missionB18Positions.stalagmites[i],
            -- rotation = -- ADD RANDOM
        })
    end

    -- Geyser placements
    local geyserBag = Global.call('getGeyserBag')
    for i=1, 2 do
        if not Global.call('isBagEmpty',geyserBag) then
            geyserBag.takeObject({
                position = missionB18Positions.geysers[i],
                callback="afterSpawnLock", callback_owner=Global
            })
        else
            print("Warning: Unable to set up geysers, the geyser bag is empty")
        end
    end

    -- Exploding Plants placements
    local explodingPlantBag = Global.call('getExplodingPlantsBag')
    for i=1, 2 do
        if not Global.call('isBagEmpty',explodingPlantBag) then
            explodingPlantBag.takeObject({
                position = missionB18Positions.explodingPlants[i]
            })
        else
            print("Warning: Unable to set up exploding plants, the exploding plants bag is empty")
        end
    end

    -- Placing Grunts
    local gruntBag = Global.call('getGruntBag')
    for i=1, 1 do
        if not Global.call('isBagEmpty',gruntBag) then
            gruntBag.takeObject({
                position = missionB18Positions.grunts[i],

            })
        else
            print("Warning: Unable to setup grunts, the grunt bag is empty")
            break
        end
    end

    local muleLegBag = Global.call('getMuleLegBag')
    for i=1, 6 do
        if not Global.call('isBagEmpty',muleLegBag) then
            muleLegBag.takeObject({
                position = missionB18Positions.muleLegs[i]
            })
        else
            print("Warning: Unable to place mule leg, the bag is empty")
        end
    end

    -- Generating exploration bag
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
        end
    end

    for i=1, 2 do
        local redSugarBag = Global.call('getRedSugarBag')
        if not Global.call('isBagEmpty',redSugarBag) then
            explorationBag.putObject(redSugarBag.takeObject())
        else
            print("Warning: Unable to set up exploration tokens, red sugar bag is empty")
        end
    end

    for i=1, 2 do
        local miniMuleBag = Global.call('getMiniMuleBag')
        if not Global.call('isBagEmpty',miniMuleBag) then
            explorationBag.putObject(miniMuleBag.takeObject())
        else
            print("Warning: Unable to set up exploration tokens, mini mule bag is empty")
        end
    end

    -- Shuffling Exploration Tiles
    explorationBag.shuffle()

    -- Placing Exploration Tiles
    -- Originally places 8, some kept in bag for hidden cave code to work
    for i=1, 4 do
        if not Global.call('isBagEmpty',explorationBag) then
            explorationBag.takeObject({
                position = missionB18Positions.explorationTiles[i],
                rotation = {0.0, 0.0, 180.0}
            })
        else
            print("Warning: Unable to setup exploration tokens, the bag is empty")
            break
        end
    end

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
    for i=1, 7 do
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
    for i=1, 10 do
        if not Global.call('isBagEmpty',mineralBag) then
            mineralBag.takeObject({
                position = missionB18Positions.minerals[i]
            })
        else
            print("Warning: Unable to set up minerals, the bag is empty")
        end
    end

    local missionBookB1 = Global.call('getMissionBookB1')
    missionBookB1.setScale({2.0,1.0,2.0})
    missionBookB1.setPosition({-53.52, 0.97, -35.66})
    missionBookB1.Book.setPage(51)
    local missionBookB2 = Global.call('getMissionBookB2')
    missionBookB2.setScale({2.0,1.0,2.0})
    missionBookB2.setPosition({-47.86, 0.97, -35.63})
    missionBookB2.Book.setPage(52)
end