scoreboard players operation $health_diff_real rph.health *= $10 rph.var

scoreboard players operation $armor_coeff rph.var = $10 rph.var

#Armor applies if the attack is blocked by armor.
execute if entity @s[tag=rph.is_armor] run scoreboard players operation $armor_coeff rph.var += @s rph.armor

#Apply specific protections when necessary
execute if entity @s[tag=rph.is_projectile] run scoreboard players operation $armor_coeff rph.var += @s rph.projectile_protection
execute if entity @s[tag=rph.is_explosion] run scoreboard players operation $armor_coeff rph.var += @s rph.blast_protection
execute if entity @s[tag=rph.is_fire] run scoreboard players operation $armor_coeff rph.var += @s rph.fire_protection
execute if entity @s[tag=rph.is_fall] run scoreboard players operation $armor_coeff rph.var += @s rph.feather_falling
execute if entity @s[tag=rph.is_magic] run scoreboard players operation $armor_coeff rph.var += @s rph.magic_protection
execute if entity @s[tag=rph.is_melee] run scoreboard players operation $armor_coeff rph.var += @s rph.melee_protection

scoreboard players operation $health_diff_real rph.health /= $armor_coeff rph.var

execute if entity @s[tag=rph.is_armor] run function rph:health/do_armor_damage

tag @s remove rph.is_armor

tag @s remove rph.is_projectile
tag @s remove rph.is_explosion
tag @s remove rph.is_fire
tag @s remove rph.is_fall
tag @s remove rph.is_magic
tag @s remove rph.is_melee