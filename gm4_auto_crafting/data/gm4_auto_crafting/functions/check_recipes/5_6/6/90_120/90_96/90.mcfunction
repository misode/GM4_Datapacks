execute if score $crafted gm4_crafting matches 0 store success score $crafted gm4_crafting if score $stack_size gm4_crafting matches ..16 if data storage gm4_custom_crafters:temp/crafter {Items:[{Slot:0b,id:"minecraft:stone"},{Slot:3b,id:"minecraft:stone"},{Slot:4b,id:"minecraft:stone"},{Slot:6b,id:"minecraft:stone"},{Slot:7b,id:"minecraft:stone"},{Slot:8b,id:"minecraft:stone"}]} run loot replace block ~ ~ ~ container.0 loot gm4_auto_crafting:crafting/vanilla/stone_stairs
execute if score $crafted gm4_crafting matches 0 store success score $crafted gm4_crafting if score $stack_size gm4_crafting matches ..4 if data storage gm4_custom_crafters:temp/crafter {Items:[{Slot:0b,id:"minecraft:glass"},{Slot:1b,id:"minecraft:glass"},{Slot:2b,id:"minecraft:glass"},{Slot:3b,id:"minecraft:glass"},{Slot:4b,id:"minecraft:glass"},{Slot:5b,id:"minecraft:glass"}]} run loot replace block ~ ~ ~ container.0 loot gm4_auto_crafting:crafting/vanilla/glass_pane
execute if score $crafted gm4_crafting matches 0 store success score $crafted gm4_crafting if score $stack_size gm4_crafting matches ..16 if data storage gm4_custom_crafters:temp/crafter {Items:[{Slot:2b,id:"minecraft:stone"},{Slot:4b,id:"minecraft:stone"},{Slot:5b,id:"minecraft:stone"},{Slot:6b,id:"minecraft:stone"},{Slot:7b,id:"minecraft:stone"},{Slot:8b,id:"minecraft:stone"}]} run loot replace block ~ ~ ~ container.0 loot gm4_auto_crafting:crafting/vanilla/stone_stairs