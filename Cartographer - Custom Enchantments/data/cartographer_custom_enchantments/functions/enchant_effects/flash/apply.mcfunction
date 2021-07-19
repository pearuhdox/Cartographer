scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..3,sort=nearest] ca.lifetime 1

scoreboard players operation $constant ca.flash = @s ca.draw_bow_time

execute if score $constant ca.flash matches 51.. run scoreboard players set $constant ca.flash 50

scoreboard players operation $constant ca.flash *= $2 ca.CONSTANT

execute if entity @s[predicate=cartographer_custom_enchantments:hold_crossbow] run scoreboard players set $constant ca.flash 50

#Apply Flash Constant to the arrow.
execute as @e[type=#cartographer_core:arrow,limit=3,sort=nearest,scores={ca.lifetime=1}] at @s run scoreboard players operation @s ca.flash = $constant ca.flash