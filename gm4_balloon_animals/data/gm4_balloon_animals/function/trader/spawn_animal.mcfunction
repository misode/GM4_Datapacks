# @s = wandering trader
# run from trade/loop_trades

# try to kill llama if there is still one
execute as @e[type=trader_llama,tag=!smithed.entity,distance=..8,limit=1] run function gm4_balloon_animals:trader/kill_llama

function gm4_balloon_animals:trader/summon_animal with storage gm4_balloon_animals:temp trade.sell.components.minecraft:custom_data.gm4_balloon_animals
