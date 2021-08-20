execute if entity @s[nbt={Inventory:[{Slot: 103b, id: "minecraft:brick", tag:{hat.baker:1b}}]}] run give @s minecraft:bread

recipe take @s minecraft:bread
advancement revoke @s only hattery:check_bread_craft