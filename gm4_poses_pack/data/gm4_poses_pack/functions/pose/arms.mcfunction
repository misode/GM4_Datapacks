# @s = written book ..1 from armor_stand

#predefined poses
execute if data storage gm4_better_armour_stands:temp/book {pages:["hanging"]} run data merge entity @e[type=armor_stand,distance=..1,limit=1,sort=nearest,tag=!gm4_no_edit] {Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Tags:[gm4_pose_changed]}
execute if data storage gm4_better_armour_stands:temp/book {pages:["reaching"]} run data merge entity @e[type=armor_stand,distance=..1,limit=1,sort=nearest,tag=!gm4_no_edit] {Pose:{LeftArm:[254f,0f,0f],RightArm:[254f,0f,0f]},Tags:[gm4_pose_changed]}
execute if data storage gm4_better_armour_stands:temp/book {pages:["swinging"]} run data merge entity @e[type=armor_stand,distance=..1,limit=1,sort=nearest,tag=!gm4_no_edit] {Pose:{LeftArm:[304f,0f,0f],RightArm:[40f,0f,0f]},Tags:[gm4_pose_changed]}
execute if data storage gm4_better_armour_stands:temp/book {pages:["resting"]} run data merge entity @e[type=armor_stand,distance=..1,limit=1,sort=nearest,tag=!gm4_no_edit] {Pose:{LeftArm:[263f,340f,188f],RightArm:[263f,25f,188f]},Tags:[gm4_pose_changed]}
execute if data storage gm4_better_armour_stands:temp/book {pages:["raised"]} run data merge entity @e[type=armor_stand,distance=..1,limit=1,sort=nearest,tag=!gm4_no_edit] {Pose:{LeftArm:[179f,0f,24f],RightArm:[179f,0f,344f]},Tags:[gm4_pose_changed]}

#if page 2 does not exist, set both arms from player rotation
execute unless data entity @s Item.tag.pages[1] if entity @p[distance=..1] as @e[distance=..1,type=armor_stand,sort=nearest,tag=!gm4_no_edit] run function gm4_poses_pack:pose/player/arm_left
execute unless data entity @s Item.tag.pages[1] if entity @p[distance=..1] as @e[distance=..1,type=armor_stand,sort=nearest,tag=!gm4_no_edit] run function gm4_poses_pack:pose/player/arm_right

#if book contains a page with "left" or "right", set this arm from player rotation
execute if data storage gm4_better_armour_stands:temp/book {pages:["left"]} if entity @p[distance=..1] as @e[distance=..1,type=armor_stand,sort=nearest,tag=!gm4_no_edit] run function gm4_poses_pack:pose/player/arm_left
execute if data storage gm4_better_armour_stands:temp/book {pages:["right"]} if entity @p[distance=..1] as @e[distance=..1,type=armor_stand,sort=nearest,tag=!gm4_no_edit] run function gm4_poses_pack:pose/player/arm_right

#if book contains a page with "mirror", mirror this pose to the other arm
execute if data storage gm4_better_armour_stands:temp/book {pages:["mirror","left"]} as @e[distance=..1,type=armor_stand,sort=nearest,tag=!gm4_no_edit] run function gm4_poses_pack:pose/player/mirror_arm_left
execute if data storage gm4_better_armour_stands:temp/book {pages:["mirror","right"]} as @e[distance=..1,type=armor_stand,sort=nearest,tag=!gm4_no_edit] run function gm4_poses_pack:pose/player/mirror_arm_right

#if book contains a page with "swap" or "flip"
execute if data storage gm4_better_armour_stands:temp/book {pages:["swap"]} as @e[distance=..1,type=armor_stand,sort=nearest,tag=!gm4_no_edit] run function gm4_poses_pack:pose/player/swap_arms
execute if data storage gm4_better_armour_stands:temp/book {pages:["flip"]} as @e[distance=..1,type=armor_stand,sort=nearest,tag=!gm4_no_edit] run function gm4_poses_pack:pose/player/flip_arms
