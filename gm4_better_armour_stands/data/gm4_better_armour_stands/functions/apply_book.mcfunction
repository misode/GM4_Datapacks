# @s = written book ..1 from armor_stand

execute if data storage gm4_better_armour_stands:temp/book {pages:["default"]} as @e[limit=1,distance=..1,type=armor_stand,tag=!gm4_no_edit,sort=nearest] at @s run function gm4_better_armour_stands:default
execute if data storage gm4_better_armour_stands:temp/book {pages:["no gravity"]} run data merge entity @e[limit=1,distance=..1,type=armor_stand,tag=!gm4_no_edit,sort=nearest] {NoGravity:1}
execute if data storage gm4_better_armour_stands:temp/book {pages:["gravity"]} run data merge entity @e[limit=1,distance=..1,type=armor_stand,tag=!gm4_no_edit,sort=nearest] {NoGravity:0}
execute if data storage gm4_better_armour_stands:temp/book {pages:["arms"]} run data merge entity @e[limit=1,distance=..1,type=armor_stand,tag=!gm4_no_edit,sort=nearest] {ShowArms:1}
execute if data storage gm4_better_armour_stands:temp/book {pages:["arms"]} if entity @e[limit=1,distance=..1,type=armor_stand,tag=!gm4_no_edit,sort=nearest] run advancement grant @a[distance=..3,gamemode=!spectator] only gm4:better_armour_stands
execute if data storage gm4_better_armour_stands:temp/book {pages:["no arms"]} run data merge entity @e[limit=1,distance=..1,type=armor_stand,tag=!gm4_no_edit,sort=nearest] {ShowArms:0}
execute if data storage gm4_better_armour_stands:temp/book {pages:["small"]} run data merge entity @e[limit=1,distance=..1,type=armor_stand,tag=!gm4_no_edit,sort=nearest] {Small:0}
execute if data storage gm4_better_armour_stands:temp/book {pages:["tall"]} run data merge entity @e[limit=1,distance=..1,type=armor_stand,tag=!gm4_no_edit,sort=nearest] {Small:0}
execute if data storage gm4_better_armour_stands:temp/book {pages:["no base"]} run data merge entity @e[limit=1,distance=..1,type=armor_stand,tag=!gm4_no_edit,sort=nearest] {NoBasePlate:1}
execute if data storage gm4_better_armour_stands:temp/book {pages:["base"]} run data merge entity @e[limit=1,distance=..1,type=armor_stand,tag=!gm4_no_edit,sort=nearest] {NoBasePlate:0}
execute if data storage gm4_better_armour_stands:temp/book {pages:["invisible"]} align xz as @e[limit=1,distance=..1,type=armor_stand,tag=!gm4_no_edit,sort=nearest] run data merge entity @s {Invisible:1b}
execute if data storage gm4_better_armour_stands:temp/book {pages:["visible"]} align xz as @e[limit=1,distance=..1,type=armor_stand,tag=!gm4_no_edit,sort=nearest] run data merge entity @s {Invisible:0}

execute if data storage gm4_better_armour_stands:temp/book {pages:["turn left"]} run tag @e[limit=1,distance=..1,type=armor_stand,tag=!gm4_no_edit,sort=nearest] add gm4_turn_clockwise
execute if data storage gm4_better_armour_stands:temp/book {pages:["turn left"]} run tag @e[limit=1,distance=..1,type=armor_stand,tag=!gm4_no_edit,sort=nearest] remove gm4_turn_anticlockwise
execute if data storage gm4_better_armour_stands:temp/book {pages:["turn right"]} run tag @e[limit=1,distance=..1,type=armor_stand,tag=!gm4_no_edit,sort=nearest] add gm4_turn_anticlockwise
execute if data storage gm4_better_armour_stands:temp/book {pages:["turn right"]} run tag @e[limit=1,distance=..1,type=armor_stand,tag=!gm4_no_edit,sort=nearest] remove gm4_turn_clockwise
execute if data storage gm4_better_armour_stands:temp/book {pages:["no turn"]} run tag @e[limit=1,distance=..1,type=armor_stand,tag=!gm4_no_edit,sort=nearest] remove gm4_turn_clockwise
execute if data storage gm4_better_armour_stands:temp/book {pages:["no turn"]} run tag @e[limit=1,distance=..1,type=armor_stand,tag=!gm4_no_edit,sort=nearest] remove gm4_turn_anticlockwise
