# @s = written book ..1 from armor_stand

#if page 2 does not exist, set head from player rotation
execute unless data storage gm4_better_armour_stands:temp/book pages[1] if entity @p[distance=..1] as @s run function gm4_poses_pack:pose/player/body

#predefined poses
execute if data storage gm4_better_armour_stands:temp/book {pages:["reset"]} run data merge entity @s {Pose:{Body:[-.1f,0f,0f]}}
