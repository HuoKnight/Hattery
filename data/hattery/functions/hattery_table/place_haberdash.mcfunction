data modify entity @s ArmorItems[3] set from entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:wooden_shovel",tag:{hab:1b}}}] Item

playsound minecraft:item.armor.equip_leather ambient @a ~ ~ ~ 1

kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_shovel",tag:{hab:1b}}},limit=1,sort=nearest]