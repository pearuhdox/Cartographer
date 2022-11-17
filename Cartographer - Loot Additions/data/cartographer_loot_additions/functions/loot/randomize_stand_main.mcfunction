setblock 4206900 10 4206900 air replace
setblock 4206900 10 4206900 barrel replace

summon chicken 4206900 11 4206900 {Invulnerable:1b,DeathLootTable:"template",NoAI:1b,Tags:["chicken_loot_random"],CustomName:'{"text":"Chicken Randomizer"}'}

data modify entity @e[type=chicken,tag=chicken_loot_random,limit=1] DeathLootTable set from entity @s HandItems[0].tag.EntityTag.DeathLootTable

loot insert 4206900 10 4206900 kill @e[type=chicken,tag=chicken_loot_random,limit=1]

data remove entity @s HandItems[0]

data modify entity @s HandItems[0] set from block 4206900 10 4206900 Items[0]

kill @e[type=chicken,tag=chicken_loot_random]

tag @s remove random_main