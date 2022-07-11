scoreboard players set @e[type=#bb:arrow,limit=3,distance=..3,sort=nearest] ca.lifetime 1

scoreboard players operation $constant ca.flash = @s ca.draw_bow_time
execute if entity @s[predicate=cartographer_custom_enchantments:hold_crossbow] run scoreboard players operation $constant ca.flash = @s ca.saved_flash

scoreboard players operation $constant ca.flash /= $3 ca.CONSTANT

execute if score $constant ca.flash matches 21.. run scoreboard players set $constant ca.flash 20

#Apply Flash Constant to the arrow.
execute as @e[type=#bb:arrow,limit=3,sort=nearest,scores={ca.lifetime=1}] at @s run scoreboard players operation @s ca.flash = $constant ca.flash