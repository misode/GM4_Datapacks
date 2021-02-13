scoreboard players set max_damage gm4_disassembler 195
scoreboard players set max_items gm4_disassembler 4

function gm4_disassemblers:calculate_percent

execute if score result_items gm4_disassembler matches 1.. run item block ~ ~ ~ container.0 replace minecraft:iron_ingot
execute if score result_items gm4_disassembler matches 2.. run item block ~ ~ ~ container.2 replace minecraft:iron_ingot
execute if score result_items gm4_disassembler matches 3.. run item block ~ ~ ~ container.3 replace minecraft:iron_ingot
execute if score result_items gm4_disassembler matches 4.. run item block ~ ~ ~ container.5 replace minecraft:iron_ingot
