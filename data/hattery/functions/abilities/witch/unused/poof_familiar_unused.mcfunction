gamerule showDeathMessages false

execute if score @s hattery.id.util = @p[tag=hascat] hattery.id.util at @s run data merge entity @e[type=cat,tag=familiar,limit=1,sort=nearest] {Silent:1b}

execute if score @s hattery.id.util = @p[tag=hascat] hattery.id.util at @s run effect give @e[type=cat,tag=familiar,limit=1,sort=nearest] minecraft:invisibility 10 1 true

gamerule showDeathMessages false

execute if score @s hattery.id.util = @p[tag=hascat] hattery.id.util at @s run kill @e[type=cat,tag=familiar,limit=1,sort=nearest]

gamerule showDeathMessages true