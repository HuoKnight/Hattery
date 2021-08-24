say Loaded!

scoreboard objectives add catcooldown dummy "Cat Cooldown"
scoreboard objectives add hattery.id.util dummy
scoreboard players set #id.tracker hattery.id.util 1
execute as @a[tag=hattery.joined] run tag @s remove hattery.joined