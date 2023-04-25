execute if entity @a[distance=..32] if entity @s[tag=!ca.delta_tnt_cart_setup,type=tnt_minecart,nbt=!{TNTFuse:-1}] run function cartographer_core:helper/delta/tnt_minecart/apply
execute if entity @s[tag=ca.delta_tnt_cart_setup] run function cartographer_core:helper/delta/tnt_minecart/delta_tnt

execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~-1 ~ #cartographer_core:can_raycast if block ~ ~-2 ~ #cartographer_core:can_raycast if block ~ ~-3 ~ #cartographer_core:can_raycast if block ~ ~-3.2 ~ #cartographer_core:can_raycast run tag @s add ca.falling_tnt_cart
execute if entity @s[tag=ca.falling_tnt_cart] unless block ~ ~-0.33 ~ #cartographer_core:can_raycast if block ~ ~ ~ #cartographer_core:can_raycast run function cartographer_core:helper/delta/tnt/setup_death
