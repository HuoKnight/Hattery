setblock ~ ~ ~ minecraft:light[level=10] keep
setblock ~ ~1 ~ minecraft:light[level=10] keep
execute at @s align xyz positioned ~0.5 ~1 ~0.5 unless entity @e[type=minecraft:marker,tag=light,distance=..1,limit=1] run summon marker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["light"]}
#execute at @s align xyz positioned ~0.5 ~2 ~0.5 unless entity @e[type=minecraft:marker,tag=light,distance=..1,limit=1] run summon marker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["light"]}
