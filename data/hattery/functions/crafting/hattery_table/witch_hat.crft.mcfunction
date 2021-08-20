data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:leather_helmet",Count:1b,tag:{display:{Name:'{"text":"Witch\'s Hat","color":"dark_purple","bold":true,"italic":false}'},CustomModelData:254001,helm.witch:1b,helm:1b}}]}

playsound minecraft:item.armor.equip_elytra ambient @a ~ ~ ~ 1 1
playsound minecraft:item.armor.equip_elytra ambient @a ~ ~ ~ 1 1
playsound minecraft:item.armor.equip_leather ambient @a ~ ~ ~ 1 1
playsound minecraft:item.armor.equip_leather ambient @a ~ ~ ~ 1 1

item modify entity @e[type=armor_stand,tag=haberdash,nbt={ArmorItems:[{id:"minecraft:wooden_shovel",tag:{hab:1b}}]},distance=..1.5] armor.head hattery:one_half_damage