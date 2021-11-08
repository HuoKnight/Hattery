tag @s add familiar.dead
tag @s remove hascat
tellraw @a {"text":"Your familiar has gone away to rest.","color":"dark_aqua"}
execute as @e[type=minecraft:marker,tag=cat.dead] if score @s hattery.id.util = @a[tag=familiar.dead,limit=1] hattery.id.util run kill @s
tag @s remove familiar.dead