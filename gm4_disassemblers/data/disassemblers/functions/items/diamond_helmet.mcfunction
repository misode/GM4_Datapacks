scoreboard players set max_damage gm4_disassembler 363
scoreboard players set max_items gm4_disassembler 5

function disassemblers:calculate_percent

execute if score result_items gm4_disassembler matches 1.. run replaceitem block ~ ~ ~ container.0 minecraft:diamond
execute if score result_items gm4_disassembler matches 2.. run replaceitem block ~ ~ ~ container.1 minecraft:diamond
execute if score result_items gm4_disassembler matches 3.. run replaceitem block ~ ~ ~ container.2 minecraft:diamond
execute if score result_items gm4_disassembler matches 4.. run replaceitem block ~ ~ ~ container.3 minecraft:diamond
execute if score result_items gm4_disassembler matches 5.. run replaceitem block ~ ~ ~ container.5 minecraft:diamond
