summon item_frame ~ ~ ~ {Invisible:1}
playsound minecraft:block.brewing_stand.brew master @a
forceload add ~ ~ ~ ~
execute at @e[type=item_frame,limit=1,sort=nearest] run summon armor_stand ~ ~-0.5 ~ {Tags:["senba_dye","senba_magenta"],NoBasePlate:1b,Small:1,NoGravity:1,Marker:1,Invisible:1b,ArmorItems:[{},{},{},{id:"magenta_stained_glass",Count:1}]}
kill @e[type=item_frame,limit=1,sort=nearest]
kill @s