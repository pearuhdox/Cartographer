scoreboard players operation $health_diff_real rph.health = @s rph.health_math
scoreboard players operation $health_diff_real rph.health *= $100 rph.var
scoreboard players operation $health_diff_real rph.health -= $center rph.health

scoreboard players set @s rph.heart_flash_amt 0

#Reduce Damage
execute unless score $health_diff_real rph.health matches 1.. run function rph:health/reduce_damage

#Determine One Shot Capacity
scoreboard players operation $health_test rph.health = $health_diff_real rph.health
scoreboard players operation $health_test rph.health *= $-1 rph.var

execute if score $health_test rph.health >= @s rph.health unless score @s rph.one_shot_cooldown matches 1.. run function rph:health/test_one_shot

#Do Damage - No Absorption
execute unless score $health_diff_real rph.health matches 1.. unless score @s rph.absorption matches 1.. run scoreboard players operation @s rph.health += $health_diff_real rph.health
execute unless score $health_diff_real rph.health matches 1.. unless score @s rph.absorption matches 1.. run scoreboard players operation @s rph.heart_flash_amt -= $health_diff_real rph.health

#If the player has Absorption
execute unless score $health_diff_real rph.health matches 1.. if score @s rph.absorption matches 1.. run scoreboard players operation @s rph.absorption += $health_diff_real rph.health

#Set Flash Animation (Dmg)
execute unless score $health_diff_real rph.health matches 1.. run scoreboard players set @s rph.heart_flash_ani 15

#Add Absorption if Absorption is less than 1 (meaning overflow)
execute if score @s rph.absorption matches ..-1 run scoreboard players operation @s rph.health += @s rph.absorption
execute if score @s rph.absorption matches ..-1 run scoreboard players operation @s rph.heart_flash_amt -= @s rph.absorption

execute if score @s rph.absorption matches ..-1 run scoreboard players set @s rph.absorption 0

#Do Healing
execute if score $health_diff_real rph.health matches 1.. run scoreboard players operation @s rph.health += $health_diff_real rph.health

#Set Flash Animation (Heal)
execute if score $health_diff_real rph.health matches 1.. run scoreboard players set @s rph.heart_flash_ani 19

execute unless predicate rph:hold_totem unless score @s rph.freeze matches 1.. if score @s rph.health matches ..0 run kill @s
execute if predicate rph:hold_totem unless score @s rph.freeze matches 1.. if score @s rph.health matches ..0 run function rph:health/totem_proc

function rph:health/equalize

execute if score @s rph.health > @s rph.health_max run scoreboard players operation @s rph.health = @s rph.health_max

scoreboard players set @s rph.cooldown 5

tag @s remove rph.was_void
tag @s remove rph.was_starve
tag @s remove rph.was_magic
tag @s remove rph.was_fall
tag @s remove rph.was_fire
tag @s remove rph.was_explosion
tag @s remove rph.was_projectile