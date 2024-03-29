data modify storage cartographer_mob_abilities:projectiles DataTemplate set value {}

execute positioned ^ ^-1 ^8 run function cartographer_mob_abilities:projectiles/target/position

function cartographer_mob_abilities:abilities/volley/projectile

execute positioned ^ ^-1 ^8 run function cartographer_mob_abilities:projectiles/target/position
execute facing entity @s feet as 0000001f-00de-140d-0000-0000000276ef positioned as @s run tp @s ^2.5 ^ ^
execute if entity @s[tag=ca.sh_grenade] facing entity @s feet as 0000001f-00de-140d-0000-0000000276ef positioned as @s run tp @s ^1.5 ^ ^
execute if entity @s[tag=ca.sh_trap] facing entity @s feet as 0000001f-00de-140d-0000-0000000276ef positioned as @s run tp @s ^1.5 ^ ^

function cartographer_mob_abilities:abilities/volley/projectile

execute positioned ^ ^-1 ^8 run function cartographer_mob_abilities:projectiles/target/position
execute facing entity @s feet as 0000001f-00de-140d-0000-0000000276ef positioned as @s run tp @s ^-2.5 ^ ^
execute if entity @s[tag=ca.sh_grenade] facing entity @s feet as 0000001f-00de-140d-0000-0000000276ef positioned as @s run tp @s ^-1.5 ^ ^
execute if entity @s[tag=ca.sh_trap] facing entity @s feet as 0000001f-00de-140d-0000-0000000276ef positioned as @s run tp @s ^-1.5 ^ ^

function cartographer_mob_abilities:abilities/volley/projectile

execute if entity @s[tag=ca.volley+] run function cartographer_mob_abilities:abilities/volley/volley_plus
execute if entity @s[tag=ca.volley++] run function cartographer_mob_abilities:abilities/volley/volley_plus
execute if entity @s[tag=ca.volley+++] run function cartographer_mob_abilities:abilities/volley/volley_plus
