execute if score gm4 load matches 1 run scoreboard players set gm4_spawner_minecarts load 1
execute unless score gm4 load matches 1 run data modify storage gm4:log queue append value {type:"missing",module:"Spawner Minecarts",require:"Gamemode 4"}

execute if score gm4_spawner_minecarts load matches 1 run function spawner_minecarts:init
execute unless score gm4_spawner_minecarts load matches 1 run schedule clear spawner_minecarts:main