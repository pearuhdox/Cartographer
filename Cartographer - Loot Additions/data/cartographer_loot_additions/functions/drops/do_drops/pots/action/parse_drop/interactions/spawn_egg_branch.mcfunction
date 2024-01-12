data remove storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag.id
data modify entity @s {} merge from storage cartographer_loot_additions:pot_trap spawn_egg.tag.EntityTag

tp @s ~ ~ ~ facing entity @p feet

scoreboard players set @s co_y 2

function motion:motion/push

tag @s add ca.pot_trap_mob