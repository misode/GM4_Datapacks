# @s = written book ..1 from armor_stand

execute if data storage gm4_better_armour_stands:temp/book {pages:["default"]} run function gm4_better_armour_stands:default
execute if data storage gm4_better_armour_stands:temp/book {pages:["no gravity"]} run data merge entity @s {NoGravity:1}
execute if data storage gm4_better_armour_stands:temp/book {pages:["gravity"]} run data merge entity @s {NoGravity:0}
execute if data storage gm4_better_armour_stands:temp/book {pages:["arms"]} run data merge entity @s {ShowArms:1}
execute if data storage gm4_better_armour_stands:temp/book {pages:["arms"]} run advancement grant @a[distance=..3,gamemode=!spectator] only gm4:better_armour_stands
execute if data storage gm4_better_armour_stands:temp/book {pages:["no arms"]} run data merge entity @s {ShowArms:0}
execute if data storage gm4_better_armour_stands:temp/book {pages:["small"]} run data merge entity @s {Small:0}
execute if data storage gm4_better_armour_stands:temp/book {pages:["tall"]} run data merge entity @s {Small:0}
execute if data storage gm4_better_armour_stands:temp/book {pages:["no base"]} run data merge entity @s {NoBasePlate:1}
execute if data storage gm4_better_armour_stands:temp/book {pages:["base"]} run data merge entity @s {NoBasePlate:0}
execute if data storage gm4_better_armour_stands:temp/book {pages:["invisible"]} run data merge entity @s {Invisible:1b}
execute if data storage gm4_better_armour_stands:temp/book {pages:["visible"]} run data merge entity @s {Invisible:0}

execute if data storage gm4_better_armour_stands:temp/book {pages:["turn left"]} run tag @s add gm4_turn_clockwise
execute if data storage gm4_better_armour_stands:temp/book {pages:["turn left"]} run tag @s remove gm4_turn_anticlockwise
execute if data storage gm4_better_armour_stands:temp/book {pages:["turn right"]} run tag @s add gm4_turn_anticlockwise
execute if data storage gm4_better_armour_stands:temp/book {pages:["turn right"]} run tag @s remove gm4_turn_clockwise
execute if data storage gm4_better_armour_stands:temp/book {pages:["no turn"]} run tag @s remove gm4_turn_clockwise
execute if data storage gm4_better_armour_stands:temp/book {pages:["no turn"]} run tag @s remove gm4_turn_anticlockwise
