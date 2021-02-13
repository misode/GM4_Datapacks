scoreboard players set max_damage gm4_disassembler 238
scoreboard players set max_items gm4_disassembler 2

function gm4_disassemblers:calculate_percent

execute if score result_items gm4_disassembler matches 1.. run item block ~ ~ ~ container.1 replace minecraft:iron_ingot

execute if score result_items gm4_disassembler matches 2.. run item block ~ ~ ~ container.3 replace minecraft:iron_ingot
