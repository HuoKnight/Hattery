gamerule showDeathMessages false
execute as @e[type=minecraft:marker,tag=familiar.util] if score @s hattery.id.util = @a[tag=hascat,limit=1] hattery.id.util at @s run data merge entity @e[type=cat,tag=familiar,limit=1,sort=nearest] {Silent:1b}
execute as @e[type=minecraft:marker,tag=familiar.util] if score @s hattery.id.util = @a[tag=hascat,limit=1] hattery.id.util at @s run effect give @e[type=cat,tag=familiar,limit=1,sort=nearest] minecraft:invisibility 10 1 true
gamerule showDeathMessages false
execute as @e[type=minecraft:marker,tag=familiar.util] if score @s hattery.id.util = @a[tag=hascat,limit=1] hattery.id.util at @s run kill @e[type=cat,tag=familiar,limit=1,sort=nearest]
gamerule showDeathMessages true