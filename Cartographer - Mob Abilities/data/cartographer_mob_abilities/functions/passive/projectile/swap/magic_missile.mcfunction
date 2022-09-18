#Runs the grenade projectile passive
summon armor_stand ~ ~0.75 ~ {NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}

function cartographer_mob_abilities:passive/projectile/helper/reset_get_data

execute if entity @s[type=minecraft:shulker_bullet] run function cartographer_mob_abilities:passive/projectile/helper/shulker_bullet_swap/get_motion_value

execute as @e[type=armor_stand,tag=passive_missile,tag=new_proj_replace,limit=1,sort=nearest] at @s run function cartographer_mob_abilities:passive/projectile/helper/set_missile_stats

function cartographer_mob_abilities:passive/projectile/helper/remove_other_sounds

playsound minecraft:entity.wither.shoot hostile @a[distance=..20] ~ ~ ~ 1 2
playsound minecraft:entity.zombie_villager.converted hostile @a[distance=..20] ~ ~ ~ 1 2


kill @s