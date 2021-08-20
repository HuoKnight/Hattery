summon cat ~ ~ ~ {DeathLootTable:"hattery:familiar",Health:15f,CatType:10,CollarColor:11b,Tags:["familiar"],CustomName:'{"text":"Familiar","color":"blue","bold":true,"italic":false}'}
tag @s add hascat
data modify entity @e[type=cat,tag=familiar,limit=1,sort=nearest] Owner set from entity @s UUID