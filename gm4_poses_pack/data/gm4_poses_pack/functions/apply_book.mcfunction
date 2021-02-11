# @s = written book ..1 from armor_stand
#copy player rotation to armor_stand part

execute if data storage gm4_better_armour_stands:temp/book {pages:["rotate"]} as @e[distance=..1,type=armor_stand,sort=nearest,tag=!gm4_no_edit] run data modify entity @s Rotation set from entity @p[distance=..1] Rotation
execute if data storage gm4_better_armour_stands:temp/book {pages:["head"]} run function gm4_poses_pack:pose/head
execute if data storage gm4_better_armour_stands:temp/book {pages:["body"]} run function gm4_poses_pack:pose/body
execute if data storage gm4_better_armour_stands:temp/book {pages:["arms"]} run function gm4_poses_pack:pose/arms
execute if data storage gm4_better_armour_stands:temp/book {pages:["legs"]} run function gm4_poses_pack:pose/legs
tag @s add gm4_pose_changed

#copy pose to armor_stand item
execute if data storage gm4_better_armour_stands:temp/book {pages:["copy"]} as @e[type=minecraft:item,distance=..1,limit=1,nbt={Item:{id:"minecraft:armor_stand"}},tag=!gm4_pose_copied] run function gm4_poses_pack:copy

execute as @e[type=armor_stand,tag=!gm4_no_edit,tag=gm4_pose_changed] run function gm4_poses_pack:pose_changed
