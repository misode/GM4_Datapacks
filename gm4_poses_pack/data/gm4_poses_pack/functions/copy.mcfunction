# @s = armor_stand item ..1 from armor_stand
#copy tags to item
data modify entity @e[type=item,tag=gm4_bas_book,limit=1] Item.tag.EntityTag.Pose set from entity @s Pose
data modify entity @e[type=item,tag=gm4_bas_book,limit=1] Item.tag.EntityTag.ShowArms set from entity @s ShowArms
data modify entity @e[type=item,tag=gm4_bas_book,limit=1] Item.tag.EntityTag.NoBasePlate set from entity @s NoBasePlate
data modify entity @e[type=item,tag=gm4_bas_book,limit=1] Item.tag.EntityTag.Small set from entity @s Small

#give enchant glow
data merge entity @s {Item:{tag:{HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:0}]}}}

#copy confirm
particle item armor_stand ~ ~ ~ .2 1 .2 0 20
playsound minecraft:block.wood.break player @a[distance=..5] ~ ~ ~ 1 .2
tag @s add gm4_pose_copied
