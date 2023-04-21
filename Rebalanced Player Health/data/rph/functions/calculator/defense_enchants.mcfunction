scoreboard players set $melee_prot rph.var 0
scoreboard players set $magic_prot rph.var 0
scoreboard players set $proj_prot rph.var 0
scoreboard players set $blast_prot rph.var 0
scoreboard players set $fire_prot rph.var 0
scoreboard players set $feather_fall rph.var 0


execute store result score $temp rph.var run data get storage rph:inventory Items[0].tag.CustomEnchantments[{id:"melee_protection"}].lvl
scoreboard players operation $melee_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[1].tag.CustomEnchantments[{id:"melee_protection"}].lvl
scoreboard players operation $melee_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[2].tag.CustomEnchantments[{id:"melee_protection"}].lvl
scoreboard players operation $melee_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[3].tag.CustomEnchantments[{id:"melee_protection"}].lvl
scoreboard players operation $melee_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[4].tag.CustomEnchantments[{id:"melee_protection"}].lvl
scoreboard players operation $melee_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[5].tag.CustomEnchantments[{id:"melee_protection"}].lvl
scoreboard players operation $melee_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

scoreboard players operation @s rph.melee_protection = $melee_prot rph.var


execute store result score $temp rph.var run data get storage rph:inventory Items[0].tag.CustomEnchantments[{id:"magic_protection"}].lvl
scoreboard players operation $magic_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[1].tag.CustomEnchantments[{id:"magic_protection"}].lvl
scoreboard players operation $magic_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[2].tag.CustomEnchantments[{id:"magic_protection"}].lvl
scoreboard players operation $magic_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[3].tag.CustomEnchantments[{id:"magic_protection"}].lvl
scoreboard players operation $magic_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[4].tag.CustomEnchantments[{id:"magic_protection"}].lvl
scoreboard players operation $magic_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[5].tag.CustomEnchantments[{id:"magic_protection"}].lvl
scoreboard players operation $magic_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

scoreboard players operation @s rph.magic_protection = $magic_prot rph.var


execute store result score $temp rph.var run data get storage rph:inventory Items[0].tag.CustomEnchantments[{id:"projectile_protection"}].lvl
scoreboard players operation $proj_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[1].tag.CustomEnchantments[{id:"projectile_protection"}].lvl
scoreboard players operation $proj_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[2].tag.CustomEnchantments[{id:"projectile_protection"}].lvl
scoreboard players operation $proj_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[3].tag.CustomEnchantments[{id:"projectile_protection"}].lvl
scoreboard players operation $proj_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[4].tag.CustomEnchantments[{id:"projectile_protection"}].lvl
scoreboard players operation $proj_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[5].tag.CustomEnchantments[{id:"projectile_protection"}].lvl
scoreboard players operation $proj_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

scoreboard players operation @s rph.projectile_protection = $proj_prot rph.var


execute store result score $temp rph.var run data get storage rph:inventory Items[0].tag.CustomEnchantments[{id:"blast_protection"}].lvl
scoreboard players operation $blast_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[1].tag.CustomEnchantments[{id:"blast_protection"}].lvl
scoreboard players operation $blast_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[2].tag.CustomEnchantments[{id:"blast_protection"}].lvl
scoreboard players operation $blast_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[3].tag.CustomEnchantments[{id:"blast_protection"}].lvl
scoreboard players operation $blast_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[4].tag.CustomEnchantments[{id:"blast_protection"}].lvl
scoreboard players operation $blast_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[5].tag.CustomEnchantments[{id:"blast_protection"}].lvl
scoreboard players operation $blast_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[5].tag.CustomEnchantments[{id:"soul_speed"}].lvl
scoreboard players operation $blast_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

scoreboard players operation @s rph.blast_protection = $blast_prot rph.var


execute store result score $temp rph.var run data get storage rph:inventory Items[0].tag.CustomEnchantments[{id:"fire_protection"}].lvl
scoreboard players operation $fire_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[1].tag.CustomEnchantments[{id:"fire_protection"}].lvl
scoreboard players operation $fire_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[2].tag.CustomEnchantments[{id:"fire_protection"}].lvl
scoreboard players operation $fire_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[3].tag.CustomEnchantments[{id:"fire_protection"}].lvl
scoreboard players operation $fire_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[4].tag.CustomEnchantments[{id:"fire_protection"}].lvl
scoreboard players operation $fire_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[5].tag.CustomEnchantments[{id:"fire_protection"}].lvl
scoreboard players operation $fire_prot rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

scoreboard players operation @s rph.fire_protection = $fire_prot rph.var


execute store result score $temp rph.var run data get storage rph:inventory Items[0].tag.CustomEnchantments[{id:"feather_falling"}].lvl
scoreboard players operation $feather_fall rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[1].tag.CustomEnchantments[{id:"feather_falling"}].lvl
scoreboard players operation $feather_fall rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[2].tag.CustomEnchantments[{id:"feather_falling"}].lvl
scoreboard players operation $feather_fall rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[3].tag.CustomEnchantments[{id:"feather_falling"}].lvl
scoreboard players operation $feather_fall rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[4].tag.CustomEnchantments[{id:"feather_falling"}].lvl
scoreboard players operation $feather_fall rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

execute store result score $temp rph.var run data get storage rph:inventory Items[5].tag.CustomEnchantments[{id:"feather_falling"}].lvl
scoreboard players operation $feather_fall rph.var += $temp rph.var
scoreboard players set $temp rph.var 0

scoreboard players operation @s rph.feather_falling = $feather_fall rph.var