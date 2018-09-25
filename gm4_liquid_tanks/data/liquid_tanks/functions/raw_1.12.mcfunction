#summon falling_block ~ ~0.5 ~ {Time:0,Block:redstone_block,Motion:[0.0,0.35,0.0]}

#testfor @e[type=item] {Item:{id:"minecraft:glass",Count:1b}}
#blockdata ~-1 ~1 ~1 {auto:1} -> create

execute unless block ~ ~ ~ hopper run function liquid_tanks:destroy
#execute @a ~ ~ ~ execute @e[tag=GM4_LT,r=64] ~ ~ ~ detect ~ ~ ~ air * scoreboard players tag @s add GM4_LTBroken
#execute @e[tag=GM4_LTExpansion] ~ ~ ~ blockdata ~ ~5 ~ {auto:1}
#blockdata ~7 ~1 ~ {auto:1} -> #destroy

execute if block ~ ~ ~ hopper{Items:[{Slot:0b,Count:1b}]} run function liquid_tanks:active
#entitydata @e[type=armor_stand,name=GM4_LTActive] {CustomName:"GM4_LTIdle"}
#execute @e[name=GM4_LTIdle,type=armor_stand] ~ ~ ~ testforblock ~ ~ ~ hopper -1 {Items:[{Slot:0b,Count:1b}]}
#execute @e[score_GM4_LTS_min=1,name=GM4_LTIdle] ~ ~ ~ execute @e[name=GM4_liquidTanks,type=armor_stand] ~ ~ ~ blockdata ~1 ~2 ~ {auto:1} -> active
#active
entitydata @e[score_GM4_LTS_min=1,name=GM4_LTIdle] {CustomName:GM4_LTActive}
#not active
scoreboard players tag @e[name=GM4_LTIdle,tag=GM4_LTFill] remove GM4_LTFill
scoreboard players tag @e[name=GM4_LTIdle,tag=GM4_LTDrain] remove GM4_LTDrain
#scoreboard objectives add GM4_LTS dummy
scoreboard objectives add GM4_LTVal dummy
scoreboard objectives add GM4_LTMax dummy
scoreboard objectives add GM4_LTCheck stat.hopperInspected

execute positioned ~ ~-1 ~ if entity @e[type=!armor_stand,team=!,dx=0,dy=2,dz=0] run function #liquid_tanks:entity_below
# (cmd block ~ ~1 ~ at extension)
#execute @e[type=armor_stand,tag=GM4_LT] ~ ~-1 ~ testfor @e[dx=0,dy=2,dz=0,type=!armor_stand]
execute @e[score_GM4_LTS_min=1,tag=GM4_LT] ~ ~ ~ execute @e[name=GM4_liquidTanks] ~ ~ ~ blockdata ~5 ~2 ~ {auto:1}
entitydata @e[score_GM4_LTS_min=1,name=GM4_LTIdle] {CustomName:GM4_LTActive}
execute @a ~ ~ ~ entitydata @e[name=GM4_LTD,type=armor_stand,r=32] {Fire:200000}
scoreboard objectives add GM4_LTDVal dummy
scoreboard objectives add GM4_LTDLast dummy
scoreboard objectives add GM4_LTDCal dummy
scoreboard objectives add GM4_LTBuf dummy
scoreboard objectives add GM4_LTU dummy

# print message and call expansions
execute @a[score_GM4_LTCheck_min=1] ~ ~ ~ execute @e[tag=GM4_LT,c=1,r=5] ~ ~ ~ particle totem ~ ~1.2 ~ 0 0 0 0.08 40 force @p[score_GM4_LTCheck_min=1]
blockdata ~-3 ~ ~ {auto:1}
execute @e[tag=GM4_LTExpansion] ~ ~ ~ blockdata ~ ~4 ~ {auto:1}
blockdata ~-3 ~ ~ {auto:1}
blockdata ~ ~ ~ {auto:0}
execute @a[score_GM4_LTCheck_min=1] ~ ~ ~ title @s actionbar ["",{"color":"dark_green","score":{"name":"@e[tag=GM4_LT,c=1,r=5]","objective":"GM4_LTVal"}},{"text":" / ","color":"dark_green"},{"color":"dark_green","score":{"name":"@e[tag=GM4_LT,c=1,r=5]","objective":"GM4_LTMax"}}]
blockdata ~ ~ ~ {auto:0}
scoreboard players reset @a[score_GM4_LTCheck_min=1] GM4_LTCheck


blockdata ~ ~ ~ {auto:0}
scoreboard players tag @e[type=item] add singleGlass {Item:{id:"minecraft:glass",Count:1b}}
scoreboard players add @e[tag=singleGlass] GM4_LTS 0
stats entity @e[tag=singleGlass] set SuccessCount @s GM4_LTS
execute @e[tag=GM4_LT] ~ ~ ~ scoreboard players tag @e[dx=0,tag=singleGlass] remove singleGlass
execute @e[tag=singleGlass] ~ ~ ~ testforblock ~ ~ ~ hopper * {Items:[{id:"minecraft:bucket",Count:1b,Damage:0s},{id:"minecraft:hopper",Count:1b,Damage:0s},{id:"minecraft:dispenser",Count:1b,Damage:0s},{id:"minecraft:comparator",Count:1b,Damage:0s},{id:"minecraft:iron_trapdoor",Count:1b,Damage:0s}]}

execute as @e[type=item,nbt={}]

execute @e[tag=singleGlass,score_GM4_LTS_min=1] ~ ~ ~ summon item_frame ~ ~ ~ {Tags:[GM4_LTF]}
execute @e[tag=GM4_LTF] ~ ~ ~.472 kill @e[tag=singleGlass,dx=0,c=1]
execute @e[tag=GM4_LTF] ~ ~ ~ blockdata ~ ~ ~ {CustomName:"Empty Tank",Items:[]}
execute @e[tag=GM4_LTF] ~ ~ ~ summon armor_stand ~ ~-.5 ~.472 {CustomName:GM4_LTIdle,NoGravity:1,Small:1,ArmorItems:[{},{},{},{Count:1,id:glass}],Invulnerable:1,Invisible:1,DisabledSlots:2039552,Tags:[GM4_LT,GM4_noEdit]}
execute @e[tag=GM4_LTF] ~ ~ ~ scoreboard players set @e[tag=GM4_LT,c=1] GM4_LTVal 0
execute @e[tag=GM4_LTF] ~ ~ ~ scoreboard players set @e[tag=GM4_LT,c=1] GM4_LTMax 30
execute @e[tag=GM4_LTF] ~ ~ ~ playsound minecraft:block.end_portal_frame.fill block @a ~ ~ ~ 1 0.5
scoreboard players add @e[name=GM4_LTIdle] GM4_LTS 0
execute @e[tag=GM4_LT] ~ ~ ~ stats entity @s set SuccessCount @s GM4_LTS
#execute @e[tag=GM4_LTF] ~ ~ ~ execute @p[r=5,tag=!GM4_LTAchv] ~ ~ ~ tellraw @a {"translate":"chat.type.advancement.task","with":[{"selector":"@s"},{"text":"[Oh, That Kind of Tank]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Oh, That Kind of Tank\n","color":"dark_aqua"},{"text":"Find out a liquid tank is\nnot an awesome submarine.","color":"white"}]}}}]}
#execute @e[tag=GM4_LTF] ~ ~ ~ scoreboard players tag @a[r=5,tag=!GM4_LTAchv] add GM4_LTAchv
kill @e[tag=GM4_LTF]

# TO HERE from checking to destroy
blockdata ~ ~ ~ {auto:0}
execute @e[tag=GM4_LTBroken] ~ ~ ~ summon item ~ ~ ~ {Motion:[0.0,0.1,0.0],Item:{id:glass,Count:1},Passengers:[{id:item,Item:{Count:1,id:hopper}},{id:item,Item:{Count:1,id:dispenser}},{id:item,Item:{Count:1,id:bucket}},{id:item,Item:{Count:1,id:comparator}},{id:item,Item:{Count:1,id:iron_trapdoor}}]}
execute @e[tag=GM4_LTBroken] ~ ~ ~ particle iconcrack ~ ~1 ~ 0.1 0.25 0.1 0.05 30 normal @a[r=5] 20 0
execute @e[tag=GM4_LTBroken] ~ ~-0.5 ~ kill @e[name=GM4_LTD,dx=0,dy=1,type=armor_stand]
execute @e[tag=GM4_LTBroken] ~ ~1 ~ kill @e[tag=GM4_LTUBlock,dx=0]
kill @e[tag=GM4_LTBroken]

# TO HERE from checking if there's an item in the first slot
blockdata ~ ~ ~ {auto:0b}
execute @e[name=GM4_LTActive,tag=GM4_LTDrain] ~ ~ ~ execute @e[tag=GM4_LTExpansion] ~ ~ ~ blockdata ~ ~2 ~ {auto:1}
execute @e[name=GM4_LTActive,tag=GM4_LTFill] ~ ~ ~ execute @e[tag=GM4_LTExpansion] ~ ~ ~ blockdata ~ ~3 ~ {auto:1}
execute @e[name=GM4_LTActive,tag=!GM4_LTFill] ~ ~ ~ execute @s[tag=!GM4_LTDrain] ~ ~ ~ execute @e[tag=GM4_LTExpansion] ~ ~ ~ blockdata ~ ~2 ~ {auto:1}
execute @e[name=GM4_LTActive,tag=!GM4_LTDrain] ~ ~ ~ execute @s[tag=!GM4_LTFill] ~ ~ ~ execute @e[tag=GM4_LTExpansion] ~ ~ ~ blockdata ~ ~3 ~ {auto:1}
scoreboard players set @e[name=GM4_LTActive,type=armor_stand] GM4_LTS 0
blockdata ~ ~ ~ {auto:0b}
execute @e[name=GM4_LTActive,type=armor_stand,score_GM4_LTVal=0] ~ ~ ~ execute @e[tag=GM4_LTExpansion] ~ ~ ~ blockdata ~ ~1 ~ {auto:1}
scoreboard players set @e[name=GM4_LTActive,type=armor_stand] GM4_LTS 0
blockdata ~2 ~-1 ~ {auto:1}
blockdata ~ ~ ~ {auto:0}
execute @e[name=GM4_LTActive,type=armor_stand,score_GM4_LTVal=0] ~ ~ ~ execute @e[tag=GM4_LTExpansion] ~ ~ ~ blockdata ~ ~1 ~ {auto:1}
scoreboard players set @e[name=GM4_LTActive,type=armor_stand] GM4_LTS 0
blockdata ~1 ~ ~ {auto:1}
blockdata ~ ~ ~ {auto:0}
execute @e[tag=GM4_LTExpansion] ~ ~ ~ blockdata ~ ~ ~ {auto:1}
scoreboard players set @e[name=GM4_LTActive,type=armor_stand] GM4_LTS 0
blockdata ~ ~ ~ {auto:0}
blockdata ~1 ~ ~ {auto:1}
blockdata ~ ~ ~ {auto:0}
execute @e[name=GM4_LTActive,type=armor_stand] ~ ~ ~ scoreboard players operation @s GM4_LTVal += @s GM4_LTBuf
execute @e[name=GM4_LTActive,type=armor_stand] ~ ~ ~ scoreboard players operation @s GM4_LTVal < @s GM4_LTMax
scoreboard players set @e[name=GM4_LTActive,type=armor_stand] GM4_LTBuf 0
execute @e[name=GM4_LTActive,score_GM4_LTVal=0] ~ ~ ~ blockdata ~ ~ ~ {CustomName:"Empty Tank"}
execute @e[name=GM4_LTActive,score_GM4_LTVal=0] ~ ~-1 ~ kill @e[name=GM4_LTD,c=1,dx=0,type=armor_stand]
execute @e[name=GM4_LTActive,type=armor_stand] ~ ~ ~ scoreboard players operation @s GM4_LTDLast = @s GM4_LTDVal
execute @e[name=GM4_LTActive,type=armor_stand] ~ ~ ~ scoreboard players set @s GM4_LTDCal 10
execute @e[name=GM4_LTActive,type=armor_stand] ~ ~ ~ scoreboard players operation @s GM4_LTDVal = @s GM4_LTVal
execute @e[name=GM4_LTActive,type=armor_stand] ~ ~ ~ scoreboard players operation @s GM4_LTDVal *= @s GM4_LTDCal
execute @e[name=GM4_LTActive,type=armor_stand] ~ ~ ~ scoreboard players operation @s GM4_LTDVal /= @s GM4_LTMax
execute @e[name=GM4_LTActive,type=armor_stand] ~ ~ ~ scoreboard players operation @s GM4_LTDCal = @s GM4_LTDVal
execute @e[name=GM4_LTActive,type=armor_stand] ~ ~ ~ scoreboard players operation @s GM4_LTDCal -= @s GM4_LTDLast
blockdata ~-1 ~ ~ {auto:1}
blockdata ~ ~ ~ {auto:0}
execute @e[name=GM4_LTActive,type=armor_stand,score_GM4_LTDCal=-1] ~ ~-0.5 ~ tp @e[name=GM4_LTD,c=1,dx=0,type=armor_stand] ~ ~-0.04 ~
scoreboard players add @e[name=GM4_LTActive,type=armor_stand,score_GM4_LTDCal=-1] GM4_LTDCal 1
execute @e[name=GM4_LTActive,type=armor_stand,score_GM4_LTDCal_min=1] ~ ~-0.5 ~ tp @e[name=GM4_LTD,c=1,dx=0,type=armor_stand] ~ ~0.04 ~
scoreboard players remove @e[name=GM4_LTActive,type=armor_stand,score_GM4_LTDCal_min=1] GM4_LTDCal 1
scoreboard players tag @e[name=GM4_LTActive,type=armor_stand,score_GM4_LTDCal_min=0,score_GM4_LTDCal=0] add GM4_DCalZero
testfor @e[name=GM4_LTActive,type=armor_stand,tag=!GM4_DCalZero]
blockdata ~ ~-1 ~ {auto:1}
scoreboard players tag @e[tag=GM4_DCalZero] remove GM4_DCalZero
