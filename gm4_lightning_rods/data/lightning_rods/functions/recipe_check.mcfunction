execute if score @s gm4_slot_count matches 9 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:blaze_powder"},{Slot:1b,id:"minecraft:blaze_powder"},{Slot:2b,id:"minecraft:blaze_powder"},{Slot:3b,id:"minecraft:blaze_powder"},{Slot:4b,id:"minecraft:stick"},{Slot:5b,id:"minecraft:blaze_powder"},{Slot:6b,id:"minecraft:blaze_powder"},{Slot:7b,id:"minecraft:blaze_powder"},{Slot:8b,id:"minecraft:blaze_powder"}]} run data merge block ~ ~ ~ {Items:[{Slot:8b,id:"blaze_rod",Count:1b,tag:{gm4_custom_crafters:{multiplier:1},gm4_lightning_rod:1b,display:{Lore:['{"translate":"%1$s","with":["Throw for boom!",{"translate":"item.gm4.lightning_rod.lore"}]}'],Name:'{"translate":"%1$s","with":["Lightning Rod",{"translate":"item.gm4.lightning_rod"}]}'},HideFlags:1,Enchantments:[{}]}}]}
