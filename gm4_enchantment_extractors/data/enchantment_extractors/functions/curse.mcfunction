#@s = item entity to have enchantments extracted
#run from enchantment_extractors:enchantment

data merge entity @s {Item:{tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}}}
data modify block ~ ~ ~ Items.[{Slot:4b}].tag.StoredEnchantments append from entity @s Item.tag.Enchantments[{id:"minecraft:vanishing_curse",lvl:1s}]