kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:dropper"}},distance=0..2,sort=nearest,limit=1]

summon minecraft:item ~ ~-0.5 ~ {Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{display:{Name:'{"text":"Hattery Table","bold":false,"italic":false}'},CustomModelData:254122,EntityTag:{Silent:1b,Facing:1b,Tags:["hattery_table"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:254122}},Invulnerable:1b,Invisible:1b,Fixed:1b}}}}

setblock ~ ~ ~ minecraft:air

kill @e[type=armor_stand,tag=haberdash,sort=nearest,limit=1]

kill @s