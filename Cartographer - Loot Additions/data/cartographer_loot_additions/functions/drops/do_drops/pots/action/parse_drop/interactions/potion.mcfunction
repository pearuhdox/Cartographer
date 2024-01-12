summon potion ~ ~ ~ {Tags:["ca.pot_trap_potion"],Motion:[0.0d,0.2d,0.0d]}

data modify storage cartographer_loot_additions:pot_trap potion set value {}

data modify storage cartographer_loot_additions:pot_trap potion set from entity @s Item

execute as @e[type=potion,limit=1,distance=..1,sort=nearest,tag=ca.pot_trap_potion] at @s run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/interactions/potion_branch

kill @s