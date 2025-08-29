missionB7Positions = {
    hiddenCaveLoc1 = {{-4.40, 1.10, 4.01},{-4.95, 1.10, 3.06},{-5.50, 1.10, 4.01}},
    hiddenCaveRot1 = {{0.09, 240.01, 0.01},{359.94, 0.01, 0.07},{359.97, 120.02, 359.91}},
    stalagmites = {{2.20, 2.25, 0.20},{-1.10, 2.25, -3.61},{1.10, 2.25, -3.61},{0.55, 2.25, -4.56}},
    cocoons = {{-2.75, 2.25, 1.15},{-3.30, 2.25, -1.71},{-3.30, 2.25, -3.61},
    {-2.74, 2.25, -4.58},{2.20, 2.25, -5.52}},
    pSporeFungus = {{0.00, 2.25, 2.10},{0.00, 2.25, 0.20},{3.85, 2.25, 3.06},{5.50, 2.25, 2.10}},
    broodNexus = {{-2.20, 2.25, -1.70},{-1.10, 2.25, -5.51}},
    exclaimTokens = {{-6.05, 2.25, -4.56},{6.58, 2.25, 4.00}},
    explorationTiles = {{4.40, 2.25, -5.52},{1.65, 2.25, -4.56},{-3.30, 2.25, -5.51},
    {-3.85, 2.25, -2.66},{1.65,2.25, -0.75},{1.10, 2.25, 2.10},{5.50, 2.25, 4.01}},
    minerals = {{-6.05, 1.19, -2.66},{-5.50, 1.19, -1.71},{-3.85, 1.19, -0.75},
    {-4.95, 1.19, 1.15},{-2.75, 1.20, 4.96},{0.55, 1.21, 4.96},{3.85, 1.21, 4.96},
    {4.95, 1.21, 1.15},{2.75, 1.20, -0.75}}
}

function setup()
    print("Launching Mission 7: Bugged Bog\nGood Luck Miners!\n")

    local caveBag = Global.call('getCaveBag')
    local biomeCaveBag = Global.call('getBiomeCaveBag')

    params={
        bag = caveBag,
        ID = Global.call('getDropPodGUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {6.05, 1.23, -4.56},
            rotation = {0.06, 180.00, 179.93},
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
            position = {-3.85, 1.24, -4.56},
            rotation = {359.92, 30.00, 180.04},
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
            position = {1.63, 1.25, -4.61},
            rotation = {359.93, 89.72, 179.95},
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
            position = {5.50, 1.26, 4.01},
            rotation = {359.99, 330.00, 180.09},
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
            position = {0.00, 1.10, 0.20},
            rotation = {0.06, 180.04, 359.93},
            guid = Global.call('getBogSegBig_GUID'),
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
            position = {-0.55, 1.26, 1.15},
            rotation = {0.06, 180.00, 359.95},
            guid = Global.call('getHexPit3GUID'),
            -- Lock tiles afer spawn
            callback="afterSpawnLock", callback_owner=Global
        })
    else
        print('Warning: Unable to setup pits, pit tiles are not in the cave bag')
    end

    params={
        bag = caveBag,
        ID = Global.call('getHexPit2GUID'),
    }
    if Global.call('isInBag',params) then
        caveBag.takeObject({
            position = {-1.65, 1.25, -2.66},
            rotation = {0.06, 179.98, 359.96},
            guid = Global.call('getHexPit2GUID'),
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
            position = {-2.75, 1.24, -6.47},
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
            position = {2.75, 1.26, 1.15},
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
            position = missionB7Positions.hiddenCaveLoc1[randomIndex],
            rotation = missionB7Positions.hiddenCaveRot1[randomIndex]
        })
    else
        print("Warning: Unable to setup hidden cave segment, bag is empty")
    end

    local stalagmiteModelBag = Global.call('getStalagmiteModelBag')
    -- Placing Stalagmites
    for i=1, 4 do
        stalagmiteModelBag.takeObject({
            position = missionB7Positions.stalagmites[i],
            -- rotation = -- ADD RANDOM
        })
    end

    local poisonSporeBag = Global.call('getPoisonSporeBag')
    for i=1, 4 do
        if not Global.call('isBagEmpty',poisonSporeBag) then
            poisonSporeBag.takeObject({
                position = missionB7Positions.pSporeFungus[i]
            })
        else
            print("Warning: Unable to setup poison spore fungus, the bag is empty")
        end
    end

    local glyphidCocoonBag = Global.call('getGlyphidCocoonBag')
    for i=1, 5 do
        if not Global.call('isBagEmpty',glyphidCocoonBag) then
            glyphidCocoonBag.takeObject({
                position = missionB7Positions.cocoons[i]
            })
        else
            print("Warning: Unable to setup glyphid cocoons, the bag is empty")
        end
    end

    local exclaimTokenBag = Global.call('getExclamationTilesBag')
    for i=1, 2 do
        if not Global.call('isBagEmpty',exclaimTokenBag) then
            exclaimTokenBag.takeObject({
                position = missionB7Positions.exclaimTokens[i]
            })
        else
            print("Warning: Unable to set up [!] tokens, bag is empty")
        end
    end

    -- setting different rotations for each brood nexus
    rotation = 270.0

    local broodNexusBag = Global.call('getbroodNexusBag')
    for i=1, 2 do
        if not Global.call('isBagEmpty',broodNexusBag) then
            broodNexusBag.takeObject({
                position = missionB7Positions.broodNexus[i],
                rotation = {0.00, rotation , 0.00}
            })
            rotation = rotation - 120.0
        else
            print("Warning: Unable to setup brood nexus, the brood nexus bag is empty")
        end
    end

    -- Generating exploration bag
    local explorationBag = Global.call('getExplorationBag')

    local lootBugBag = Global.call('getLootBugBag')
    for i=1, 3 do
        if not Global.call('isBagEmpty',lootBugBag) then
            explorationBag.putObject(lootBugBag.takeObject())
        else
            print("Warning: Unable to set up exploration tokens, loot bug bag is empty")
            break
        end
    end

    local barleyBulbBag = Global.call('getBarleyBulbBag')
    for i=1, 3 do
        if not Global.call('isBagEmpty',barleyBulbBag) then
            explorationBag.putObject(barleyBulbBag.takeObject())
        else
            print("Warning: Unable to set up exploration tokens, barley bulb bag is empty")
            break
        end
    end

    local redSugarBag = Global.call('getRedSugarBag')
    for i=1, 2 do
        if not Global.call('isBagEmpty',redSugarBag) then
            explorationBag.putObject(redSugarBag.takeObject())
        else
            print("Warning: Unable to set up exploration tokens, red sugar bag is empty")
        end
    end

    explorationBag.shuffle()
    for i=1, 7 do
        if not Global.call('isBagEmpty',explorationBag) then
            explorationBag.takeObject({
                position = missionB7Positions.explorationTiles[i],
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
    for i=1, 4 do
        if not Global.call('isBagEmpty',goldBag) then
            mineralBag.putObject(goldBag.takeObject())
        else
            print("Warning: Unable to set up minerals, the gold bag is empty")
        end
    end

    local aquardBag = Global.call('getAquardBag')
    for i=1, 5 do
        if not Global.call('isBagEmpty',aquardBag) then
            mineralBag.putObject(aquardBag.takeObject())
        else
            print("Warning: Unable to set up minerals, the aquard bag is empty")
            break
        end
    end

    -- Shuffling Minerals
    mineralBag.shuffle()

    -- Placing Minerals
    for i=1, 9 do
        if not Global.call('isBagEmpty',mineralBag) then
            mineralBag.takeObject({
                position = missionB7Positions.minerals[i]
            })
        else
            print("Warning: Unable to set up minerals, the bag is empty")
        end
    end

    local missionBookB1 = Global.call('getMissionBookB1')
    missionBookB1.setScale({2.0,1.0,2.0})
    missionBookB1.setPosition({-53.52, 0.97, -35.66})
    missionBookB1.Book.setPage(29)
    local missionBookB2 = Global.call('getMissionBookB2')
    missionBookB2.setScale({2.0,1.0,2.0})
    missionBookB2.setPosition({-47.86, 0.97, -35.63})
    missionBookB2.Book.setPage(30)

end