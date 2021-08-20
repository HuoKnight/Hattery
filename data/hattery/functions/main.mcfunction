## Hat functionality

execute as @a[nbt={Inventory:[{Slot: 103b, id: "minecraft:leather_helmet", tag:{helm:1b}}]}] run function hattery:equip.func

## remove wizard
execute as @a[nbt={Inventory:[{id: "minecraft:brick", tag:{hat.wizard:1b}}]}] unless entity @s[nbt={Inventory:[{Slot: 103b, id: "minecraft:brick", tag:{hat.wizard:1b}}]}] run function hattery:remove.util/wiz.remove.util

## remove witch
execute as @a[nbt={Inventory:[{id: "minecraft:brick", tag:{hat.witch:1b}}]}] unless entity @s[nbt={Inventory:[{Slot: 103b, id: "minecraft:brick", tag:{hat.witch:1b}}]}] run function hattery:remove.util/witch.remove.util

## remove tophat
execute as @a[nbt={Inventory:[{id: "minecraft:brick", tag:{hat.tophat:1b}}]}] unless entity @s[nbt={Inventory:[{Slot: 103b, id: "minecraft:brick", tag:{hat.tophat:1b}}]}] run function hattery:remove.util/top.remove.util

## remove chef
execute as @a[nbt={Inventory:[{id: "minecraft:brick", tag:{hat.baker:1b}}]}] unless entity @s[nbt={Inventory:[{Slot: 103b, id: "minecraft:brick", tag:{hat.baker:1b}}]}] run function hattery:remove.util/baker.remove.util





## Hattery Table Place
execute as @e[type=minecraft:glow_item_frame,tag=hattery_table,tag=!hattery_placed] at @s run function hattery:hattery_table/hattery_place

## Hattery Table Remove
execute as @e[type=minecraft:glow_item_frame,tag=hattery_table,tag=hattery_placed] at @s unless block ~ ~ ~ minecraft:dropper{CustomName:'{"text":"Hattery Table"}'} run function hattery:hattery_table/hattery_remove

## Hattery Table Haberdashery
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_shovel",tag:{hab:1b}}}] at @s as @e[type=minecraft:armor_stand,tag=haberdash,limit=1,distance=..0.8] at @s run function hattery:hattery_table/place_haberdash

## Break Haberdashery
execute as @e[type=minecraft:armor_stand,tag=haberdash,nbt={ArmorItems:[{id:"minecraft:wooden_shovel",tag:{Damage:58,hab:1b}}]}] run function hattery:hattery_table/break_haberdash





## Brick on ground
execute as @e[type=item,nbt={Item:{id:"minecraft:brick",tag:{hat.wizard:1b}}}] run data merge entity @s {Item:{display:{Name:'{"text":"Wizard\'s Hat","color":"green","bold":true,"italic":false}'},CustomModelData:254000,hat.wizard:1b,hat:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;-1496386751,-1399831058,-1764419120,-743032477],Slot:"head"}]}}

## Particles
execute as @a[nbt={Inventory:[{id: "minecraft:brick", tag:{hat:1b}}]}] run function hattery:abilities/particles.func





## Wizard light
execute as @e[nbt={Inventory:[{Slot: 103b, id: "minecraft:brick", tag:{hat.wizard:1b}}]}] at @s run function hattery:abilities/light.func
execute as @e[nbt=!{Inventory:[{Slot: 103b, id: "minecraft:brick", tag:{hat.wizard:1b}}]}] at @s if block ~ ~1 ~ minecraft:light run function hattery:abilities/light_remove.func
execute as @e[type=armor_stand,tag=light] at @s unless entity @a[nbt={Inventory:[{Slot: 103b, id: "minecraft:brick", tag:{hat.wizard:1b}}]},limit=1,distance=..2.3,sort=nearest] run function hattery:abilities/light_remove.func

## Witch cat
execute as @e[nbt={Inventory:[{Slot: 103b, id: "minecraft:brick", tag:{hat.witch:1b}}]},x_rotation=-90,tag=!hascat] at @s if predicate hattery:sneak_check.pred run function hattery:abilities/familiar
execute as @e[tag=hascat] run scoreboard players add @s catcooldown 1
execute as @e[tag=hascat,scores={catcooldown=12000..}] run function hattery:abilities/familiar_refresh
execute as @e[type=item,nbt={Item:{id: "minecraft:clay_ball",tag:{killxp:1b}}}] at @s run kill @e[type=minecraft:experience_orb,distance=..3]
execute as @e[type=item,nbt={Item:{id: "minecraft:clay_ball",tag:{killxp:1b}}}] run kill @s




## Crafting
execute as @e[type=minecraft:glow_item_frame,tag=hattery_table] at @s if entity @e[type=armor_stand,tag=haberdash,nbt={ArmorItems:[{id:"minecraft:wooden_shovel",tag:{hab:1b}}]},distance=..1.5] run function hattery:crafting/hattery_table/detect.util







## EDGECASE TIME!!!! FUN!!! WOOOO!!! EVERYONE LOVES EDGECASES!!!!
#execute as @e[type=minecraft:armor_stand,tag=haberdash] at @s run kill @e[type=minecraft:glow_item_frame,tag=hattery_table,tag=!placed,limit=1,sort=nearest]