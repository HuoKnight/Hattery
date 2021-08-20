tag @s add hattery_placed

setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"text":"Hattery Table"}'}

execute positioned ~ ~-0.7 ~-0.75 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Tags:["haberdash"],ArmorItems:[{},{},{},{}],HandItems:[{},{}],Pose:{Head:[90f,0f,0f],LeftLeg:[270f,0f,0f],RightLeg:[270f,0f,0f]}}