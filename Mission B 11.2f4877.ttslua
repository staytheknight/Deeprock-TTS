missionB11Positions = {
    hiddenCaveLoc1 = {{-5.50, 1.10, 4.01},{-4.40, 1.10, 4.01},{-4.95, 1.10, 3.06}},
    hiddenCaveRot1 = {{359.97, 120.00, 359.91},{0.09, 240.01, 0.01},{359.94, 0.03, 0.07}},
    stalagmites = {{-0.55, 2.25, -4.56},{-1.10, 2.25, -3.61},{-1.10, 2.25, 0.20},{1.65, 2.25, -2.66}},
    explodingPlants = {{-4.40, 2.25, -1.70},{-2.75, 2.25, -0.75},{-2.75, 2.25, -2.66}},
    pSporeFungus = {{-2.20, 2.25, 0.20},{-1.10, 2.25, 2.10},{0.00, 2.25, 2.10},{0.00, 2.25, 0.20}},
    cocoons = {{5.50, 2.25, -1.71},{4.95, 2.25, -2.66},{3.85, 2.25, -4.56},{0.55, 2.25, -4.56}},
    broodNexus = {{1.66, 2.25, -6.47}},
    nHatchlings = {{-4.95, 2.25, -0.75},{-5.50, 2.25, -1.71}},
    nBreeder = {{-0.55, 2.25, 1.15}},
    explorationTiles = {{1.10, 2.25, -5.52},{-1.65, 2.25, -4.56},{-2.20, 2.25, -1.70},
    {0.55, 2.25, 1.15},{3.30, 2.25, 0.20},{3.85, 2.25, -0.75},{4.40, 2.25, -3.61}},
    minerals = {{-2.75, 1.19, -6.47},{3.85, 1.20, -6.47},{5.50, 1.20, -5.52},
    {4.40, 1.21, 2.10},{3.30, 1.21, 4.01},{2.20, 1.21, 4.01},{-1.65, 1.20, 4.96},
    {-2.20, 1.20, 4.01},{-6.05, 1.19, -0.75},{1.10, 1.20, -1.71},{0.00, 1.20, -3.61},
    {6.05, 1.21, -2.66}}
}

function setup()
    print("Launching Mission 11: Fiary Ring of Trouble\nGood Luck Miners!\n")

    local caveBag = Global.call('getCaveBag')
    local biomeCaveBag = Global.call('getBiomeCaveBag')

    params={
        bag = caveBag,
        ID = Global.call('getDropPodGUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {-6.60, 1.21, -5.51},
            rotation = {359.91, 59.96, 179.99},
            guid = Global.call('getDropPodGUID'),
            -- Lock tiles afer spawn
            --callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup Drop Pod, object is not in cave bag')
    end

    params={
        bag = biomeCaveBag,
        ID = Global.call('getBogSegSeq_GUID'),
    }
    if Global.call('isInBag',params) then
        biomeCaveBag.takeObject({
            position = {3.85, 1.26, -2.66},
            rotation = {359.91, 30.01, 180.03},
            guid = Global.call('getBogSegSeq_GUID'),
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup cave, cave tiles are not in the biome cave bag')
    end

    params={
        bag = biomeCaveBag,
        ID = Global.call('getBogSegLong_GUID'),
    }
    if Global.call('isInBag',params) then
        biomeCaveBag.takeObject({
            position = {0.55, 1.26, 1.15},
            rotation = {359.93, 89.99, 179.94},
            guid = Global.call('getBogSegLong_GUID'),
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup cave, cave tiles are not in the biome cave bag')
    end

    params={
        bag = biomeCaveBag,
        ID = Global.call('getBogSegSmall_GUID'),
    }
    if Global.call('isInBag',params) then
        biomeCaveBag.takeObject({
            position = {1.10, 1.25, -5.51},
            rotation = {359.91, 30.00, 180.03},
            guid = Global.call('getBogSegSmall_GUID'),
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup cave, cave tiles are not in the biome cave bag')
    end

    params={
        bag = biomeCaveBag,
        ID = Global.call('getBogSegBig_GUID'),
    }
    if Global.call('isInBag',params) then
        biomeCaveBag.takeObject({
            position = {-3.30, 1.09, -3.61},
            rotation = {0.06, 180.00, 359.93},
            guid = Global.call('getBogSegBig_GUID'),
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup cave, cave tiles are not in the biome cave bag')
    end

    params={
        bag = caveBag,
        ID = Global.call('getHexPit2GUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {-1.11, 1.25, -5.53},
            rotation = {359.94, 0.02, 0.07},
            guid = Global.call('getHexPit2GUID'),
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup pits, pit tiles are not in the cave bag')
    end

    local hiddenCaveBag = Global.call('getHiddenCaveBag') -- need to call global function to get proper object ID
    hiddenCaveBag.shuffle()

    params = {floor = 0.1, ceiling = 0.4,}
    randomIndex = Global.call('randInt',params)

    if not Global.call('isBagEmpty',hiddenCaveBag) then
        hiddenCaveBag.takeObject({
            position = missionB11Positions.hiddenCaveLoc1[randomIndex],
            rotation = missionB11Positions.hiddenCaveRot1[randomIndex]
        })
    else
        print("Warning: Unable to setup hidden cave segment, bag is empty")
    end

    params={
        bag = caveBag,
        ID = Global.call('getCaveEntrance1GUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {-1.10, 1.25, -1.70},
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
            position = {5.50, 1.26, 0.20},
            rotation = {0.0,0.0,0.0},
            guid = Global.call('getCaveEntrance2GUID'),
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup cave exit 2, it is not in the cave bag')
    end

    -- Exploding Plants placements
    local explodingPlantBag = Global.call('getExplodingPlantsBag')
    for i=1, 3 do
        if not Global.call('isBagEmpty',explodingPlantBag) then
            explodingPlantBag.takeObject({
                position = missionB11Positions.explodingPlants[i]
            })
        else
            print("Warning: Unable to set up exploding plants, the exploding plants bag is empty")
        end
    end

    local poisonSporeBag = Global.call('getPoisonSporeBag')
    for i=1, 4 do
        if not Global.call('isBagEmpty',poisonSporeBag) then
            poisonSporeBag.takeObject({
                position = missionB11Positions.pSporeFungus[i]
            })
        else
            print("Warning: Unable to setup glyphid cocoons, the bag is empty")
        end
    end

    local glyphidCocoonBag = Global.call('getGlyphidCocoonBag')
    for i=1, 4 do
        if not Global.call('isBagEmpty',glyphidCocoonBag) then
            glyphidCocoonBag.takeObject({
                position = missionB11Positions.cocoons[i]
            })
        else
            print("Warning: Unable to setup glyphid cocoons, the bag is empty")
        end
    end

    local stalagmiteModelBag = Global.call('getStalagmiteModelBag')
    -- Placing Stalagmites
    for i=1, 4 do
        stalagmiteModelBag.takeObject({
            position = missionB11Positions.stalagmites[i],
            -- rotation = -- ADD RANDOM
        })
    end

    local broodNexusBag = Global.call('getbroodNexusBag')
    if not Global.call('isBagEmpty',broodNexusBag) then
        broodNexusBag.takeObject({
            position = missionB11Positions.broodNexus[1],
            rotation = {0.00, 30.0 , 0.00}
        })
    else
        print("Warning: Unable to setup brood nexus, the brood nexus bag is empty")
    end

    local nHatchlingsBag = Global.call('getNaedoHatchlingBag')
    for i=1, 2 do
        if not Global.call('isBagEmpty',nHatchlingsBag) then
            nHatchlingsBag.takeObject({
                position = missionB11Positions.nHatchlings[i]
            })
        else
            print("Warning: Unable to setup Naedocyte Hatchling, the bag is empty")
        end
    end

    local nBreeder = Global.call('getNaedoBreederBag')
    if not Global.call('isBagEmpty',nBreeder) then
        nBreeder.takeObject({
            position = missionB11Positions.nBreeder[1]
        })
    else
        print("Warning: Unable to setup Naedocyte Hatchling, the bag is empty")
    end

    -- Generating exploration bag
    local explorationBag = Global.call('getExplorationBag')

    local lootBugBag = Global.call('getLootBugBag')
    for i=1, 1 do
        if not Global.call('isBagEmpty',lootBugBag) then
            explorationBag.putObject(lootBugBag.takeObject())
        else
            print("Warning: Unable to set up exploration tokens, loot bug bag is empty")
            break
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

    local redSugarBag = Global.call('getRedSugarBag')
    for i=1, 1 do
        if not Global.call('isBagEmpty',redSugarBag) then
            explorationBag.putObject(redSugarBag.takeObject())
        else
            print("Warning: Unable to set up exploration tokens, red sugar bag is empty")
        end
    end

    local apocaBloomBag = Global.call('getApocaBloomBag')
    for i=1, 4 do
        if not Global.call('isBagEmpty',apocaBloomBag) then
            explorationBag.putObject(apocaBloomBag.takeObject())
        else
            print("Warning: Unable to set up exploration tokens, apoca bloom bag is empty")
            break
        end
    end

    explorationBag.shuffle()
    for i=1, 7 do
        if not Global.call('isBagEmpty',explorationBag) then
            explorationBag.takeObject({
                position = missionB11Positions.explorationTiles[i],
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
    for i=1, 2 do
        if not Global.call('isBagEmpty',goldBag) then
            mineralBag.putObject(goldBag.takeObject())
        else
            print("Warning: Unable to set up minerals, the gold bag is empty")
        end
    end

    local nitraBag = Global.call('getNitraBag')
    for i=1, 3 do
        if not Global.call('isBagEmpty',nitraBag) then
            mineralBag.putObject(nitraBag.takeObject())
        else
            print("Warning: Unable to set up minerals, the nitra bag is empty")
            break
        end
    end

    local morkiteBag = Global.call('getMorkiteBag')
    for i=1, 7 do
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
    for i=1, 12 do
        if not Global.call('isBagEmpty',mineralBag) then
            mineralBag.takeObject({
                position = missionB11Positions.minerals[i]
            })
        else
            print("Warning: Unable to set up minerals, the bag is empty")
        end
    end

    local missionBookB1 = Global.call('getMissionBookB1')
    missionBookB1.setScale({2.0,1.0,2.0})
    missionBookB1.setPosition({-53.52, 0.97, -35.66})
    missionBookB1.Book.setPage(37)
    local missionBookB2 = Global.call('getMissionBookB2')
    missionBookB2.setScale({2.0,1.0,2.0})
    missionBookB2.setPosition({-47.86, 0.97, -35.63})
    missionBookB2.Book.setPage(38)
end