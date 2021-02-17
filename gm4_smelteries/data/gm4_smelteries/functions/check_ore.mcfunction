# @s = smeltery that is looking at a lit furnace
# called by verify_furnace

#check if item is doubable by setting the head item of the stand
data modify entity @s HandItems[0] set from block ^ ^ ^1 Items[{Slot:0b}]
item entity @s armor.head replace air
execute store result score can_smelt gm4_bf_data run loot replace entity @s armor.head fish gm4_smelteries:smeltable_display ~ ~ ~ mainhand
item entity @s weapon replace air
execute if score can_smelt gm4_bf_data matches 0 run item entity @s armor.head replace gray_stained_glass{CustomModelData:1}

#check if the furnace is close to finish smelting, and then the structure
execute if score can_smelt gm4_bf_data matches 1.. if score @s gm4_bf_data matches 184..199 if block ~ ~1 ~ #gm4_smelteries:air if block ~1 ~ ~1 iron_block if block ~1 ~ ~-1 iron_block if block ~-1 ~ ~1 iron_block if block ~-1 ~ ~-1 iron_block if block ~1 ~1 ~1 iron_block if block ~1 ~1 ~-1 iron_block if block ~-1 ~1 ~1 iron_block if block ~-1 ~1 ~-1 iron_block if block ^ ^ ^-1 iron_block if block ^1 ^ ^ iron_block if block ^-1 ^ ^ iron_block if block ^ ^1 ^-1 iron_block if block ^1 ^1 ^ iron_block if block ^-1 ^1 ^ iron_block run function gm4_smelteries:start_ticking
