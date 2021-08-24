summon cat ~ ~ ~ {Passengers:[{id:"minecraft:marker",NoGravity:1b,Invulnerable:1b,Tags:["familiar.util"]}],DeathLootTable:"hattery:familiar",Health:15f,CatType:10,CollarColor:11b,Tags:["familiar"],CustomName:'{"text":"Familiar","color":"blue","bold":true,"italic":false}'}
execute as @e[type=minecraft:marker,tag=familiar.util,limit=1,sort=nearest] at @s run scoreboard players operation @s hattery.id.util = @a[limit=1,sort=nearest] hattery.id.util
tag @s add hascat
tag @s add familiar.cooldown
data modify entity @e[type=cat,tag=familiar,limit=1,sort=nearest] Owner set from entity @s UUID