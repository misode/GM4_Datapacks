execute if score @s gm4_slot_count matches 6 if score @s gm4_stack_size matches 1 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:gold_ingot"},{Slot:1b,id:"minecraft:turtle_helmet"},{Slot:2b,id:"minecraft:gold_ingot"},{Slot:3b,id:"minecraft:gold_ingot"},{Slot:4b,id:"minecraft:glass_pane"},{Slot:5b,id:"minecraft:gold_ingot"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"player_head",Count:1b,tag:{CustomModelData:9,gm4_custom_crafters:{multiplier:1},gm4_scuba_gear:{item:"helmet"},display:{Name:'{"translate":"%1$s%3427655$s","with":["SCUBA Helmet",{"translate":"item.gm4.scuba_helmet"}],"italic":false}'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;0,190244,0,554768],Slot:"head"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-.5,Operation:0,UUID:[I;0,193195,0,454101],Slot:"head"}],SkullOwner:{Id:"1e205cc1-461c-4b35-900b-f479f9f250a4",Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE1NDMxNjc2MjM1NzMsInByb2ZpbGVJZCI6IjVjN2ZiNzhhMmQxMzQ5NTZhNWE1M2EyNGQ5NWY1YjRmIiwicHJvZmlsZU5hbWUiOiJQZWFyc29uSW5tYW4iLCJzaWduYXR1cmVSZXF1aXJlZCI6dHJ1ZSwidGV4dHVyZXMiOnsiU0tJTiI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzc1OWY1NmU3MDc4NDkzYzEzMDZlZWI2YmQxM2UwYmQ1NTZlYjAxOGUzZGRjMDAzMGE1NzFhYjg4YzRjZGNlNGUifX19"}]}}}}]}
execute if score @s gm4_slot_count matches 9 if score @s gm4_stack_size matches 1 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:gold_ingot"},{Slot:1b,id:"minecraft:potion",tag:{Potion:"minecraft:water_breathing"}},{Slot:2b,id:"minecraft:gold_ingot"},{Slot:3b,id:"minecraft:scute"},{Slot:4b,id:"minecraft:gold_ingot"},{Slot:5b,id:"minecraft:scute"},{Slot:6b,id:"minecraft:gold_ingot"},{Slot:7b,id:"minecraft:gold_ingot"},{Slot:8b,id:"minecraft:gold_ingot"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"golden_chestplate",Count:1b,tag:{CustomModelData:1,gm4_scuba_gear:{item:"tank"},display:{Name:'{"translate":"%1$s%3427655$s","with":["SCUBA Tank",{"translate":"item.gm4.scuba_tank"}],"italic":false}'},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-.01,Operation:0,UUID:[I;0,911382,0,189444],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:4,Operation:0,UUID:[I;0,847530,0,778609],Slot:"chest"}]}}]}
execute if score @s gm4_slot_count matches 9 if score @s gm4_stack_size matches 1 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:gold_ingot"},{Slot:1b,id:"minecraft:potion",tag:{Potion:"minecraft:long_water_breathing"}},{Slot:2b,id:"minecraft:gold_ingot"},{Slot:3b,id:"minecraft:scute"},{Slot:4b,id:"minecraft:gold_ingot"},{Slot:5b,id:"minecraft:scute"},{Slot:6b,id:"minecraft:gold_ingot"},{Slot:7b,id:"minecraft:gold_ingot"},{Slot:8b,id:"minecraft:gold_ingot"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"golden_chestplate",Count:1b,tag:{CustomModelData:1,gm4_scuba_gear:{item:"tank"},display:{Name:'{"translate":"%1$s%3427655$s","with":["SCUBA Tank",{"translate":"item.gm4.scuba_tank"}],"italic":false}'},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-.01,Operation:0,UUID:[I;0,911382,0,189444],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:4,Operation:0,UUID:[I;0,847530,0,778609],Slot:"chest"}]}}]}
execute if score @s gm4_slot_count matches 6 if score @s gm4_stack_size matches 1 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:scute"},{Slot:2b,id:"minecraft:scute"},{Slot:3b,id:"minecraft:rabbit_hide"},{Slot:5b,id:"minecraft:rabbit_hide"},{Slot:6b,id:"minecraft:rabbit_hide"},{Slot:8b,id:"minecraft:rabbit_hide"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"leather_boots",Count:1b,tag:{CustomModelData:2,gm4_scuba_gear:{item:"flippers"},display:{Name:'{"translate":"%1$s%3427655$s","with":["Flippers",{"translate":"item.gm4.flippers"}],"italic":false}',color:11009871},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;0,881952,0,167143],Slot:"feet"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-.04,Operation:0,UUID:[I;0,579389,0,942428],Slot:"feet"}]}}]}
