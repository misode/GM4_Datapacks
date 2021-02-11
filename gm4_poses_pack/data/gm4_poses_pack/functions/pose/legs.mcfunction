# @s = written book ..1 from armor_stand

#predefined poses
execute if data storage gm4_better_armour_stands:temp/book {pages:["standing"]} run data merge entity @e[type=armor_stand,distance=..1,limit=1,sort=nearest,tag=!gm4_no_edit] {Pose:{LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Tags:[gm4_pose_changed]}
execute if data storage gm4_better_armour_stands:temp/book {pages:["sitting"]} run data merge entity @e[type=armor_stand,distance=..1,limit=1,sort=nearest,tag=!gm4_no_edit] {Pose:{LeftLeg:[278f,347f,0f],RightLeg:[278f,11f,0f]},Tags:[gm4_pose_changed]}
execute if data storage gm4_better_armour_stands:temp/book {pages:["walking"]} run data merge entity @e[type=armor_stand,distance=..1,limit=1,sort=nearest,tag=!gm4_no_edit] {Pose:{LeftLeg:[39f,0f,0f],RightLeg:[317f,0f,0f]},Tags:[gm4_pose_changed]}
execute if data storage gm4_better_armour_stands:temp/book {pages:["flying"]} run data merge entity @e[type=armor_stand,distance=..1,limit=1,sort=nearest,tag=!gm4_no_edit] {Pose:{LeftLeg:[108f,0f,0f],RightLeg:[90f,0f,0f]},Tags:[gm4_pose_changed]}

#if page 2 does not exist, set both legs from player rotation
execute unless data entity @s Item.tag.pages[1] if entity @p[distance=..1] as @e[distance=..1,type=armor_stand] run function gm4_poses_pack:pose/player/leg_left
execute unless data entity @s Item.tag.pages[1] if entity @p[distance=..1] as @e[distance=..1,type=armor_stand] run function gm4_poses_pack:pose/player/leg_right

#if book contains a page with "left" or "right", set this leg from player rotation
execute if data storage gm4_better_armour_stands:temp/book {pages:["left"]} if entity @p[distance=..1] as @e[distance=..1,type=armor_stand] run function gm4_poses_pack:pose/player/leg_left
execute if data storage gm4_better_armour_stands:temp/book {pages:["right"]} if entity @p[distance=..1] as @e[distance=..1,type=armor_stand] run function gm4_poses_pack:pose/player/leg_right

#if book contains a page with "mirror", mirror this pose to the other leg
execute if data storage gm4_better_armour_stands:temp/book {pages:["mirror","left"]} as @e[distance=..1,type=armor_stand] run function gm4_poses_pack:pose/player/mirror_leg_left
execute if data storage gm4_better_armour_stands:temp/book {pages:["mirror","right"]} as @e[distance=..1,type=armor_stand] run function gm4_poses_pack:pose/player/mirror_leg_right

#if book contains a page with "swap" or "flip"
execute if data storage gm4_better_armour_stands:temp/book {pages:["swap"]} as @e[distance=..1,type=armor_stand,sort=nearest,tag=!gm4_no_edit] run function gm4_poses_pack:pose/player/swap_legs
execute if data storage gm4_better_armour_stands:temp/book {pages:["flip"]} as @e[distance=..1,type=armor_stand,sort=nearest,tag=!gm4_no_edit] run function gm4_poses_pack:pose/player/flip_legs
