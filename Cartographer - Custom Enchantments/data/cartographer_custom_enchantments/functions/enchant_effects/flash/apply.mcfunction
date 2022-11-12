scoreboard players operation $constant ca.flash = @s ca.draw_bow_time

execute if entity @s[predicate=cartographer_custom_enchantments:hold_crossbow] run scoreboard players operation $constant ca.flash = @s ca.saved_flash

scoreboard players operation $constant ca.flash /= $3 ca.CONSTANT

execute if score $constant ca.flash matches 21.. run scoreboard players set $constant ca.flash 20

#This value is then applied in the set custom tags info