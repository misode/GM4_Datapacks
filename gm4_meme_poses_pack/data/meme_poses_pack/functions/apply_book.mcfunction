# @s = written book ..1 from armor_stand
# run from #better_armour_stands:apply_book
execute if entity @s[nbt={Item:{tag:{pages:["default"]}}}] run scoreboard players reset @e[type=armor_stand,distance=..1,limit=1,sort=nearest,tag=!gm4_no_edit] gm4_meme_pose

execute if entity @s[nbt={Item:{tag:{pages:["t-pose"]}}}] run data merge entity @e[type=armor_stand,distance=..1,limit=1,sort=nearest,tag=!gm4_no_edit] {ShowArms:1b,Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,267f],RightArm:[0f,0f,91f]}}
execute if entity @s[nbt={Item:{tag:{pages:["dab"]}}}] run data merge entity @e[type=armor_stand,distance=..1,limit=1,sort=nearest,tag=!gm4_no_edit] {ShowArms:1b,Pose:{Body:[0f,3f,355f],Head:[25f,31f,0f],LeftLeg:[0f,0f,349f],RightLeg:[0f,0f,3f],LeftArm:[325f,0f,239f],RightArm:[272f,360f,0f]}}
execute if entity @s[nbt={Item:{tag:{pages:["floss"]}}}] run data merge entity @e[type=armor_stand,distance=..1,limit=1,sort=nearest,tag=!gm4_no_edit] {ShowArms:1b,Pose:{Body:[0f,0f,353f],Head:[357f,5f,0f],LeftLeg:[0f,0f,3f],RightLeg:[0f,0f,11f],LeftArm:[304f,31f,0f],RightArm:[317f,27f,0f]}}

execute if entity @s[nbt={Item:{tag:{pages:["dabbing"]}}}] run scoreboard players set @e[type=armor_stand,distance=..1,limit=1,sort=nearest,tag=!gm4_no_edit] gm4_meme_pose 0
execute if entity @s[nbt={Item:{tag:{pages:["flossing"]}}}] run scoreboard players set @e[type=armor_stand,distance=..1,limit=1,sort=nearest,tag=!gm4_no_edit] gm4_meme_pose 3
