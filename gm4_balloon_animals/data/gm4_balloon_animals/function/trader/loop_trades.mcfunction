# run from trader/init_trader and trader/loop_trades

data modify storage gm4_balloon_animals:temp trade set from storage gm4_balloon_animals:temp trades[0]
data remove storage gm4_balloon_animals:temp trades[0]

execute if data storage gm4_balloon_animals:temp trade{sell:{id:'minecraft:lead',components:{'minecraft:custom_data':{gm4_balloon_animals:{}}}}} run function gm4_balloon_animals:trader/spawn_animal

execute if data storage gm4_balloon_animals:temp trades[] run function gm4_balloon_animals:trader/loop_trades
