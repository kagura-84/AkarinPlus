#> akarin_plus:tick/player/main
# @within function akarin_plus:tick/player/

# シリーズ
    execute if predicate akarin_plus:have/empty_series if entity @s[tag=AkarinPlus.Have.Empty] at @s run function akarin_plus:player/have/empty_series
    execute if predicate akarin_plus:have/ut_rare_series at @s run effect give @s resistance 1 0 false

# 装備
    execute if predicate akarin_plus:have/empty_chestplate run effect give @s resistance 1 2 false
    execute if predicate akarin_plus:have/best_item run effect give @s resistance 1 3 false
    execute if predicate akarin_plus:have/wing run effect give @s slow_falling 1 0 false
    execute if predicate akarin_plus:have/jetpack at @s run function akarin_plus:player/have/jetpack
    execute if predicate akarin_plus:have/rfi_sword at @s as @e[tag=!this,distance=..10] run effect give @s wither 1 4 false

    ## Legacy
        execute if predicate akarin_plus:have/legacy at @s as @e[tag=!this,distance=..5] run effect give @s weakness 1 2 false
        execute if predicate akarin_plus:have/legacy at @s as @e[tag=!this,distance=..5] run effect give @s slowness 1 1 false

    ## キリトの剣
        execute unless predicate akarin_plus:have/kirito_sword/or run function akarin_plus:item/kirito_sword/cancel
        execute if predicate akarin_plus:have/kirito_sword/and run function akarin_plus:item/kirito_sword/and
        execute if predicate akarin_plus:have/kirito_sword/or unless predicate akarin_plus:have/kirito_sword/and run function akarin_plus:item/kirito_sword/or

    ## Impact
        execute if predicate akarin_plus:reinforcement/impact if score @s AkarinPlus.Combo matches 0 run effect give @s strength 1 4

    ## Ancient
        execute if predicate akarin_plus:reinforcement/ancient run function akarin_plus:reinforcement/ancient

    ## High
        execute if predicate akarin_plus:reinforcement/high run function akarin_plus:reinforcement/high

    ## Expensive
        execute if predicate akarin_plus:reinforcement/expensive run function akarin_plus:reinforcement/expensive

    ## LastStand
        execute if predicate akarin_plus:reinforcement/last_stand if score @s[tag=!AkarinPlus.Have.Totem] AkarinPlus.Health matches ..4 run function akarin_plus:reinforcement/last_stand

    ## Defense
        execute if predicate akarin_plus:reinforcement/defense run function akarin_plus:reinforcement/defense
        execute if predicate akarin_plus:reinforcement/defense_plus run function akarin_plus:reinforcement/defense

    ## NightVision
        execute if predicate akarin_plus:reinforcement/night_vision run effect give @s night_vision 15 0 false

    ## Aqua
        execute if predicate akarin_plus:reinforcement/aqua run effect give @s conduit_power 15 4 true

    ## Marine
        execute if predicate akarin_plus:reinforcement/marine run effect give @s dolphins_grace 15 4 true

# Inventory
    execute if entity @s[tag=AkarinPlus.Have.MagnetRing] at @s as @e[type=item,distance=..5] run tp @s ~ ~ ~
    execute if entity @s[tag=AkarinPlus.Have.ProofMining] run effect give @s haste 1 4 false
    execute if entity @s[tag=AkarinPlus.Have.RFIIngot] run effect give @s poison 1 1 false
    execute if entity @s[tag=AkarinPlus.Have.RFIIngot] run effect give @s wither 1 0 false
    execute if entity @s[tag=AkarinPlus.Have.ThirdEye] at @s as @e[tag=!this,tag=!AkarinPlus.Have.ClosedThirdEye,distance=..10] run effect give @s glowing 1 0 false
    execute if entity @s[tag=AkarinPlus.Have.ClosedThirdEye] run function akarin_plus:item/closed_third_eye

# COAS
    execute if score @s AkarinPlus.Click.CarrotOnAStick matches 1.. if predicate akarin_plus:have/xp_ticket run function akarin_plus:item/xp_ticket
    execute if score @s AkarinPlus.Click.CarrotOnAStick matches 1.. if predicate akarin_plus:have/hyper_heel_sheet run function akarin_plus:item/hyper_heel_sheet
    execute if score @s AkarinPlus.Click.CarrotOnAStick matches 1.. if predicate akarin_plus:have/hyperion at @s run function akarin_plus:item/hyperion/

# Arrow
    execute as @e[type=#arrows,tag=RI.HomingArrow] unless data entity @s {inGround:1b} at @s if entity @e[team=!NoElement,type=!player,type=!item,distance=..16] run function akarin_plus:reinforcement/homing/
    execute as @e[type=#arrows,tag=RI.ExplosionArrow] if data entity @s {inGround:1b} at @s run function akarin_plus:reinforcement/explosion/
    execute as @e[type=#arrows,tag=RI.ExplosionArrow] at @s run particle flame ~ ~ ~ 0 0 0 0.05 3 force
    execute as @e[type=#arrows,tag=RI.ExplosionArrow] at @s run particle large_smoke ~ ~ ~ 0.05 0.05 0.05 0 4 force

# bow
    execute if score @s AkarinPlus.Use.Bow matches 1.. at @s run function akarin_plus:player/use/bow

# craft
    execute if entity @s[tag=Crafted] as @e[type=item] at @s if entity @a[distance=..8] if data entity @s {Item:{id:"minecraft:structure_void"}} run kill @s

# effect
    execute if entity @s[tag=Effect.InstantDamage] run effect give @s instant_damage 1 28 false