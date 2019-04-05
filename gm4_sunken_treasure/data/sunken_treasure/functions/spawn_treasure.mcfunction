#@s = sand item
#run from check_treasure

#set random value
execute store result score treasureItem gm4_st_random run data get entity @s UUIDMost 0.00000000000012812774
scoreboard players set 200 gm4_st_random 200
scoreboard players operation treasureItem gm4_st_random %= 200 gm4_st_random

#spawn treasure
execute if score treasureItem gm4_st_random matches 0..39 run data merge entity @s {Item:{id:"minecraft:bone"}}
execute if score treasureItem gm4_st_random matches 40..79 run data merge entity @s {Item:{id:"minecraft:seagrass"}}
execute if score treasureItem gm4_st_random matches 80..109 run summon squid ~ ~ ~
execute if score treasureItem gm4_st_random matches 110 run data merge entity @s {Item:{id:"minecraft:glass_bottle",tag:{gm4_audrey:1b,display:{Name:"{\"text\":\"Message in a Bottle\",\"italic\":false}",Lore:["Dearest Audrey, I drank all my beer"]}}}}
execute if score treasureItem gm4_st_random matches 111 run data merge entity @s {Item:{id:"minecraft:glass_bottle",tag:{gm4_audrey:2b,display:{Name:"{\"text\":\"Message in a Bottle\",\"italic\":false}",Lore:["Dearest Audrey, My boat was","sunk by a lily-pad and now I'm","stuck on this island."]}}}}
execute if score treasureItem gm4_st_random matches 112 run data merge entity @s {Item:{id:"minecraft:glass_bottle",tag:{gm4_audrey:3b,display:{Name:"{\"text\":\"Message in a Bottle\",\"italic\":false}",Lore:["Dearest Audrey, I don't know how to spell","your name, nor do I know you, but I","do know that I love you, I feel like I","have a mutual connection. After","you ordered the pizza with cheezy","crust and pinapple I just lost it. Oh","no Clair you got shot... I mean Audrey.","I don't mind that you're chunky"]}}}}
execute if score treasureItem gm4_st_random matches 113 run data merge entity @s {Item:{id:"minecraft:glass_bottle",tag:{gm4_audrey:4b,display:{Name:"{\"text\":\"Message in a Bottle\",\"italic\":false}",Lore:["Dearest Audrey, when I listen","to the ocean, all I hear is your","snoring and I can't sleep. Please","silence your snoring... please, I","need sleep."]}}}}
execute if score treasureItem gm4_st_random matches 114 run data merge entity @s {Item:{id:"minecraft:glass_bottle",tag:{gm4_audrey:5b,display:{Name:"{\"text\":\"Message in a Bottle\",\"italic\":false}",Lore:["Dearest Audrey, How's your","day going? I'm good, BUT I'VE","BEEN STRANDED FOR 20 YEARS!","Thanks for your response."]}}}}
execute if score treasureItem gm4_st_random matches 115 run data merge entity @s {Item:{id:"minecraft:glass_bottle",tag:{gm4_audrey:6b,display:{Name:"{\"text\":\"Message in a Bottle\",\"italic\":false}",Lore:["Dearest Audrey, I'm stranded","in the middle of nowhere,","surrounded by things that","aren't cubic."]}}}}
execute if score treasureItem gm4_st_random matches 116 run data merge entity @s {Item:{id:"minecraft:glass_bottle",tag:{gm4_audrey:7b,display:{Name:"{\"text\":\"Message in a Bottle\",\"italic\":false}",Lore:["Dearest Audrey, I mean Hannah...","wait, no... is it Denise? ...Anyway,","I love you."]}}}}
execute if score treasureItem gm4_st_random matches 117 run data merge entity @s {Item:{id:"minecraft:glass_bottle",tag:{gm4_audrey:8b,display:{Name:"{\"text\":\"Message in a Bottle\",\"italic\":false}",Lore:["Dearest Audrey, I seem to have","run out of clean water, if you could","return this bottle with something to","drink that would be wonderful."]}}}}
execute if score treasureItem gm4_st_random matches 118 run data merge entity @s {Item:{id:"minecraft:glass_bottle",tag:{gm4_audrey:9b,display:{Name:"{\"text\":\"Message in a Bottle\",\"italic\":false}",Lore:["Dearest Audrey, I have no","internet so I am sending you","a bottle."]}}}}
execute if score treasureItem gm4_st_random matches 119 run data merge entity @s {Item:{id:"minecraft:glass_bottle",tag:{gm4_audrey:10b,display:{Name:"{\"text\":\"Message in a Bottle\",\"italic\":false}",Lore:["Dearest Audrey, What's your","phone number; bottled messages","are hard to make!"]}}}}
execute if score treasureItem gm4_st_random matches 120 run data merge entity @s {Item:{id:"minecraft:glass_bottle",tag:{gm4_audrey:11b,display:{Name:"{\"text\":\"Message in a Bottle\",\"italic\":false}",Lore:["Dearest Audrey, I find myself stranded","on a barren island.","An enderdragon took me here,","please rescue me."]}}}}
execute if score treasureItem gm4_st_random matches 121 run data merge entity @s {Item:{id:"minecraft:glass_bottle",tag:{gm4_audrey:12b,display:{Name:"{\"text\":\"Message in a Bottle\",\"italic\":false}",Lore:["Dearest Audrey, Put the money in the bag."]}}}}
execute if score treasureItem gm4_st_random matches 122 run data merge entity @s {Item:{id:"minecraft:glass_bottle",tag:{gm4_audrey:13b,display:{Name:"{\"text\":\"Message in a Bottle\",\"italic\":false}",Lore:["Dearest Audrey, The compass you sent me","seems to only point in the direction of our love,","but that seems to have vanished long ago.","Please, get help, even if it's the last thing you do."]}}}}
execute if score treasureItem gm4_st_random matches 123 run data merge entity @s {Item:{id:"minecraft:glass_bottle",tag:{gm4_audrey:14b,display:{Name:"{\"text\":\"Message in a Bottle\",\"italic\":false}",Lore:["Dearest Audrey, I fear this may","be my last attempt at finding help.","I just want you to know... I always... loved...","your sister."]}}}}
execute if score treasureItem gm4_st_random matches 124 run data merge entity @s {Item:{id:"minecraft:glass_bottle",tag:{gm4_audrey:15b,display:{Name:"{\"text\":\"Message in a Bottle\",\"italic\":false}",Lore:["Dearest Audrey, I've been here for 3 months","and after several attempts to find food,","shelter, or even enough water... I'm giving up.","Tell my family I love them, but most importantly,","Audrey, I love you."]}}}}
execute if score treasureItem gm4_st_random matches 125 run data merge entity @s {Item:{id:"minecraft:glass_bottle",tag:{gm4_audrey:16b,display:{Name:"{\"text\":\"Message in a Bottle\",\"italic\":false}",Lore:["Dearest Audrey, I know exactly who"," you are - play along. I don't have any","money. I burned it all trying to make a","fire. But I can tell you I've developed","a very particular set of skills. Skills","that'll make Bear Grylls quake in his boots."]}}}}
execute if score treasureItem gm4_st_random matches 126 run data merge entity @s {Item:{id:"minecraft:glass_bottle",tag:{gm4_audrey:17b,display:{Name:"{\"text\":\"Message in a Bottle\",\"italic\":false}",Lore:["Dearest Audrey, I'm in the sink sand.","If you find my head, hang it on the","wall of fame."]}}}}
execute if score treasureItem gm4_st_random matches 127 run data merge entity @s {Item:{id:"minecraft:glass_bottle",tag:{gm4_audrey:18b,display:{Name:"{\"text\":\"Message in a Bottle\",\"italic\":false}",Lore:["Dearest Audrey, Each day that passes","is immensely terrible, painful and sad.","Getting away from you just didn't","improve anything."]}}}}
execute if score treasureItem gm4_st_random matches 128 run data merge entity @s {Item:{id:"minecraft:glass_bottle",tag:{gm4_audrey:19b,display:{Name:"{\"text\":\"Message in a Bottle\",\"italic\":false}",Lore:["Dearest Audrey, I write this on paper","made from native plants and ink","from a squid I wrangled. I like it here.","I found a dungeon. I'm setting up a mob","grinder and never coming home."]}}}}
execute if score treasureItem gm4_st_random matches 129 run data merge entity @s {Item:{id:"minecraft:glass_bottle",tag:{gm4_audrey:20b,display:{Name:"{\"text\":\"Message in a Bottle\",\"italic\":false}",Lore:["Dearest Audrey, punching wood","for logs dosen't work in real life."]}}}}
execute if score treasureItem gm4_st_random matches 130..149 run data merge entity @s {Item:{id:"minecraft:mossy_cobblestone"}}
execute if score treasureItem gm4_st_random matches 150..159 run data merge entity @s {Item:{id:"minecraft:prismarine_crystals"}}
execute if score treasureItem gm4_st_random matches 160..169 run data merge entity @s {Item:{id:"minecraft:prismarine_shard"}}
execute if score treasureItem gm4_st_random matches 170..175 run data merge entity @s {Item:{id:"minecraft:golden_boots",tag:{display:{Name:"{\"text\":\"Waders\",\"italic\":false}"},Enchantments:[{id:"minecraft:depth_strider",lvl:1}]}}}
execute if score treasureItem gm4_st_random matches 176..180 run data merge entity @s {Item:{id:"minecraft:experience_bottle"}}
execute if score treasureItem gm4_st_random matches 181..185 run data merge entity @s {Item:{id:"minecraft:gold_ingot"}}
execute if score treasureItem gm4_st_random matches 186..190 run summon guardian ~ ~ ~
execute if score treasureItem gm4_st_random matches 191..195 run data merge entity @s {Item:{id:"minecraft:leather_boots"}}
execute if score treasureItem gm4_st_random matches 196..198 run data merge entity @s {Item:{id:"minecraft:sponge"}}
execute if score treasureItem gm4_st_random matches 199 run data merge entity @s {Item:{id:"minecraft:chest",Count:1b,tag:{display:{Name:"{\"text\":\"Treasure Chest\",\"italic\":\"false\"}"},BlockEntityTag:{LootTable:"sunken_treasure:treasure_chest",CustomName:"{\"text\":\"Treasure Chest\",\"italic\":\"false\"}"}}}}
