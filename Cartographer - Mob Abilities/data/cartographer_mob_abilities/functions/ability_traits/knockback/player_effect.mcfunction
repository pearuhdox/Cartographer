execute if score $knockback_total ca.mob_var matches 0 run scoreboard players set $knockback_total ca.mob_var 1

scoreboard players operation $knockback_total ca.mob_var *= $1000 ca.CONSTANT
scoreboard players operation $knockback_total ca.mob_var *= $2 ca.CONSTANT

execute if score $knockback_total ca.mob_var matches 8000.. run scoreboard players add $knockback_total ca.mob_var 1000

scoreboard players add $knockback_total ca.mob_var 3000
execute unless score $invert_kb ca.mob_var matches 1.. run scoreboard players operation $knockback_total ca.mob_var *= $-1 ca.CONSTANT

execute unless score @s ca.delta.cooldown matches 1.. run scoreboard players operation $strength delta.api.launch = $knockback_total ca.mob_var
execute facing entity 31182015-4512-2011-3118-115180000000 feet rotated ~ 22.5 unless score @s ca.delta.cooldown matches 1.. run function delta:api/launch_looking
execute unless score @s ca.delta.cooldown matches 1.. run scoreboard players set @s ca.delta.cooldown 10

tag @s remove ca.primed_knockback