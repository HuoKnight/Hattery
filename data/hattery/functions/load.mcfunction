say Loaded!
advancement revoke @a only hattery:check_pie_craft
advancement revoke @a only hattery:check_cookie_craft
advancement revoke @a only hattery:check_bread_craft
advancement revoke @a only hattery:check_cake_craft
#scoreboard objectives add hattery.id.util dummy
#scoreboard players set #id.tracker hattery.id.util 1
scoreboard objectives add catcooldown dummy "Cat Cooldown"
scoreboard objectives add witch.cooldown dummy "Str Cooldown"

#execute as @a[tag=hattery.joined] run tag @s remove hattery.joined