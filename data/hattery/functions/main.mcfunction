## Detect first join
execute as @a unless entity @s[scores={hattery.id.util=..10000}] run tag @s remove hattery.joined
execute as @a[tag=!hattery.joined] run function hattery:id


## Hat functionality

# Players
execute as @a[nbt={Inventory:[{Slot: 103b, id: "minecraft:leather_helmet", tag:{helm:1b}}]}] run function hattery:equip.func

# Armor Stands
execute as @e[type=minecraft:armor_stand,nbt={ArmorItems:[{id:"minecraft:leather_helmet",tag:{helm:1b}}]}] run function hattery:equip.func
# Replace brick item in player's hand with helm item.
# Top Hat
execute as @a[nbt={SelectedItem:{id:"minecraft:brick",tag:{hat.tophat:1b}}}] run item replace entity @s weapon.mainhand with leather_helmet{display:{Name:'{"text":"Top Hat","color":"white","bold":true,"italic":false}'},CustomModelData:254011,helm.tophat:1b,helm:1b}
# Wizard
execute as @a[nbt={SelectedItem:{id:"minecraft:brick",tag:{hat.wizard:1b}}}] run item replace entity @s weapon.mainhand with leather_helmet{display:{Name:'{"text":"Wizard\'s Hat","color":"green","bold":true,"italic":false}'},CustomModelData:254000,helm.wizard:1b,helm:1b}
# Witch
execute as @a[nbt={SelectedItem:{id:"minecraft:brick",tag:{hat.witch:1b}}}] run item replace entity @s weapon.mainhand with leather_helmet{display:{Name:'{"text":"Witch\'s Hat","color":"dark_purple","bold":true,"italic":false}'},CustomModelData:254001,helm.witch:1b,helm:1b}
# Baker
execute as @a[nbt={SelectedItem:{id:"minecraft:brick",tag:{hat.baker:1b}}}] run item replace entity @s weapon.mainhand with leather_helmet{display:{Name:'{"text":"Baker\'s Hat","color":"aqua","bold":true,"italic":false}'},CustomModelData:254111,helm.baker:1b,helm:1b}

## remove wizard
execute as @a[nbt={Inventory:[{id: "minecraft:brick", tag:{hat.wizard:1b}}]}] unless entity @s[nbt={Inventory:[{Slot: 103b, id: "minecraft:brick", tag:{hat.wizard:1b}}]}] run function hattery:remove.util/wiz.remove.util

## remove witch
execute as @a[nbt={Inventory:[{id: "minecraft:brick", tag:{hat.witch:1b}}]}] unless entity @s[nbt={Inventory:[{Slot: 103b, id: "minecraft:brick", tag:{hat.witch:1b}}]}] run function hattery:remove.util/witch.remove.util

## remove tophat
execute as @a[nbt={Inventory:[{id: "minecraft:brick", tag:{hat.tophat:1b}}]}] unless entity @s[nbt={Inventory:[{Slot: 103b, id: "minecraft:brick", tag:{hat.tophat:1b}}]}] run function hattery:remove.util/top.remove.util

## remove Baker
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
execute as @e[nbt={Inventory:[{Slot: 103b, id: "minecraft:brick", tag:{hat.wizard:1b}}]}] at @s run function hattery:abilities/wizard/light.func
execute as @e[nbt=!{Inventory:[{Slot: 103b, id: "minecraft:brick", tag:{hat.wizard:1b}}]}] at @s if block ~ ~1 ~ minecraft:light run function hattery:abilities/wizard/light_remove.func
execute as @e[type=minecraft:marker,tag=light] at @s unless entity @a[nbt={Inventory:[{Slot: 103b, id: "minecraft:brick", tag:{hat.wizard:1b}}]},limit=1,distance=..2.5,sort=nearest] run function hattery:abilities/wizard/light_remove.func

## Witch cat
execute as @a[nbt={Inventory:[{Slot: 103b, id: "minecraft:brick", tag:{hat.witch:1b}}]},x_rotation=-90,tag=!hascat,tag=!familiar.cooldown] at @s if predicate hattery:sneak_check.pred run function hattery:abilities/witch/familiar
execute as @a[tag=familiar.cooldown] run scoreboard players add @s catcooldown 1
execute as @a[tag=familiar.cooldown,scores={catcooldown=6000..}] run function hattery:abilities/witch/familiar_refresh
execute as @e[type=item,nbt={Item:{id: "minecraft:clay_ball",tag:{killxp:1b}}}] at @s run kill @e[type=minecraft:experience_orb,distance=..3]
execute as @e[type=item,nbt={Item:{id: "minecraft:clay_ball",tag:{killxp:1b}}}] run kill @s

execute as @e[type=marker,tag=familiar.util] at @s unless entity @e[type=cat,tag=familiar,distance=..1] run tag @s add cat.dead
execute as @a if score @s hattery.id.util = @e[type=marker,tag=familiar.util,tag=cat.dead,limit=1] hattery.id.util run function hattery:abilities/witch/haha_familiar_go_poof
execute as @a[tag=hascat,nbt=!{Inventory:[{Slot: 103b, id: "minecraft:brick", tag:{hat.witch:1b}}]}] at @s as @e[type=minecraft:marker,tag=familiar.util] if score @s hattery.id.util = @p hattery.id.util run function hattery:abilities/witch/poof_familiar



## Crafting
execute as @e[type=minecraft:glow_item_frame,tag=hattery_table] at @s if entity @e[type=armor_stand,tag=haberdash,nbt={ArmorItems:[{id:"minecraft:wooden_shovel",tag:{hab:1b}}]},distance=..1.5] run function hattery:crafting/hattery_table/detect.util







