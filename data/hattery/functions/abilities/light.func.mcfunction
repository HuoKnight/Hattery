setblock ~ ~ ~ minecraft:light[level=10] keep
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=light,distance=..1,limit=1] run summon armor_stand ~ ~1 ~ {Marker:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["light"]}
execute at @s align xyz positioned ~0.5 ~1.5 ~0.5 unless entity @e[type=armor_stand,tag=light,distance=..1,limit=1] run summon armor_stand ~ ~1 ~ {Marker:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["light"]}
