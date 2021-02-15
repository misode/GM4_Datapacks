# @s = written book ..1 from armor_stand

#if page 2 does not exist, set head from player rotation
execute unless data storage gm4_better_armour_stands:temp/book pages[1] if entity @p[distance=..1] as @s run function gm4_poses_pack:pose/player/head

#predefined poses
execute if data storage gm4_better_armour_stands:temp/book {pages:["forward"]} run data merge entity @s {Pose:{Head:[.1f,0f,0f]},Tags:[gm4_pose_changed]}
execute if data storage gm4_better_armour_stands:temp/book {pages:["up"]} run data merge entity @s {Pose:{Head:[325f,0f,0f]},Tags:[gm4_pose_changed]}
execute if data storage gm4_better_armour_stands:temp/book {pages:["down"]} run data merge entity @s {Pose:{Head:[32f,0f,0f]},Tags:[gm4_pose_changed]}
execute if data storage gm4_better_armour_stands:temp/book {pages:["left"]} run data merge entity @s {Pose:{Head:[0f,327f,0f]},Tags:[gm4_pose_changed]}
execute if data storage gm4_better_armour_stands:temp/book {pages:["right"]} run data merge entity @s {Pose:{Head:[0f,32f,0f]},Tags:[gm4_pose_changed]}
