scoreboard players operation @s ca.ability_dmg = $projectile_damage ca.ability_dmg

execute if entity @s[tag=grenade_projectile] run data modify storage cartographer_mob_abilities:projectile_tag_save Tags append value "grenade_projectile"
execute if entity @s[tag=passive_grenade] run data modify storage cartographer_mob_abilities:projectile_tag_save Tags append value "passive_grenade"

execute if entity @s[tag=trap_projectile] run data modify storage cartographer_mob_abilities:projectile_tag_save Tags append value "trap_projectile"
execute if entity @s[tag=passive_trap] run data modify storage cartographer_mob_abilities:projectile_tag_save Tags append value "passive_trap"
execute if entity @s[tag=checked] run data modify storage cartographer_mob_abilities:projectile_tag_save Tags append value "checked"

data modify entity @s Tags set from storage cartographer_mob_abilities:projectile_tag_save Tags