# run from main
# @s = written book on ground, near armour stand

data modify storage gm4_better_armour_stands:temp/book pages set from entity @s Item.tag.pages

function #gm4_better_armour_stands:apply_book

data remove storage gm4_better_armour_stands:temp/book pages
