scoreboard players add $magic_missile ca.proj_registry 1
execute if score $magic_missile ca.proj_registry matches 25 run scoreboard players set $magic_missile ca.proj_registry 1

# [I;12563,-1852729070,1342177280,1]

# 3113-9191-9912-5000-000000000001
# [I;12563,-1852729070,1342177280,1]
execute if score $magic_missile ca.proj_registry matches 1 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,1],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 1 as 3113-9191-9912-5000-000000000001 run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 1 as 3113-9191-9912-5000-000000000001 run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000002
# [I;12563,-1852729070,1342177280,2]
execute if score $magic_missile ca.proj_registry matches 2 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,2],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 2 as 3113-9191-9912-5000-000000000002 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 2 as 3113-9191-9912-5000-000000000002 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000003
# [I;12563,-1852729070,1342177280,3]
execute if score $magic_missile ca.proj_registry matches 3 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,3],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 3 as 3113-9191-9912-5000-000000000003 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 3 as 3113-9191-9912-5000-000000000003 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-523040000004
# [I;12563,-1852729070,1342177280,4]
execute if score $magic_missile ca.proj_registry matches 4 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,4],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 4 as 3113-9191-9912-5000-000000000004 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 4 as 3113-9191-9912-5000-000000000004 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000005
# [I;12563,-1852729070,1342177280,5]
execute if score $magic_missile ca.proj_registry matches 5 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,5],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 5 as 3113-9191-9912-5000-000000000005 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 5 as 3113-9191-9912-5000-000000000005 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000006
# [I;12563,-1852729070,1342177280,6]
execute if score $magic_missile ca.proj_registry matches 6 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,6],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 6 as 3113-9191-9912-5000-000000000006 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 6 as 3113-9191-9912-5000-000000000006 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000007
# [I;12563,-1852729070,1342177280,7]
execute if score $magic_missile ca.proj_registry matches 7 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,7],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 7 as 3113-9191-9912-5000-000000000007 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 7 as 3113-9191-9912-5000-000000000007 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000008
# [I;12563,-1852729070,1342177280,8]
execute if score $magic_missile ca.proj_registry matches 8 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,8],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 8 as 3113-9191-9912-5000-000000000008 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 8 as 3113-9191-9912-5000-000000000008 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000009
# [I;12563,-1852729070,1342177280,9]
execute if score $magic_missile ca.proj_registry matches 9 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,9],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 9 as 3113-9191-9912-5000-000000000009 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 9 as 3113-9191-9912-5000-000000000009 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000010
# [I;12563,-1852729070,1342177280,16]
execute if score $magic_missile ca.proj_registry matches 10 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,16],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 10 as 3113-9191-9912-5000-000000000010 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 10 as 3113-9191-9912-5000-000000000010 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000011
# [I;12563,-1852729070,1342177280,17]
execute if score $magic_missile ca.proj_registry matches 11 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,17],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 11 as 3113-9191-9912-5000-000000000011 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 11 as 3113-9191-9912-5000-000000000011 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000012
# [I;12563,-1852729070,1342177280,18]
execute if score $magic_missile ca.proj_registry matches 12 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,18],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 12 as 3113-9191-9912-5000-000000000012 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 12 as 3113-9191-9912-5000-000000000012 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000013
# [I;12563,-1852729070,1342177280,19]
execute if score $magic_missile ca.proj_registry matches 13 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,19],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 13 as 3113-9191-9912-5000-000000000013 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 13 as 3113-9191-9912-5000-000000000013 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000014
# [I;12563,-1852729070,1342177280,20]
execute if score $magic_missile ca.proj_registry matches 14 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,20],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 14 as 3113-9191-9912-5000-000000000014 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 14 as 3113-9191-9912-5000-000000000014 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000015
# [I;12563,-1852729070,1342177280,21]
execute if score $magic_missile ca.proj_registry matches 15 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,21],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 15 as 3113-9191-9912-5000-000000000015 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 15 as 3113-9191-9912-5000-000000000015 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000016
# [I;12563,-1852729070,1342177280,22]
execute if score $magic_missile ca.proj_registry matches 16 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,22],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 16 as 3113-9191-9912-5000-000000000016 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 16 as 3113-9191-9912-5000-000000000016 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000017
# [I;12563,-1852729070,1342177280,23]
execute if score $magic_missile ca.proj_registry matches 17 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,23],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 17 as 3113-9191-9912-5000-000000000017 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 17 as 3113-9191-9912-5000-000000000017 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000018
# [I;12563,-1852729070,1342177280,24]
execute if score $magic_missile ca.proj_registry matches 18 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,24],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 18 as 3113-9191-9912-5000-000000000018 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 18 as 3113-9191-9912-5000-000000000018 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000019
# [I;12563,-1852729070,1342177280,25]
execute if score $magic_missile ca.proj_registry matches 19 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,25],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 19 as 3113-9191-9912-5000-000000000019 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 19 as 3113-9191-9912-5000-000000000019 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000020
# [I;12563,-1852729070,1342177280,32]
execute if score $magic_missile ca.proj_registry matches 20 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,32],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 20 as 3113-9191-9912-5000-000000000020 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 20 as 3113-9191-9912-5000-000000000020 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000021
# [I;12563,-1852729070,1342177280,33]
execute if score $magic_missile ca.proj_registry matches 21 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,33],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 21 as 3113-9191-9912-5000-000000000021 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 21 as 3113-9191-9912-5000-000000000021 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000022
# [I;12563,-1852729070,1342177280,34]
execute if score $magic_missile ca.proj_registry matches 22 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,34],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 22 as 3113-9191-9912-5000-000000000022 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 22 as 3113-9191-9912-5000-000000000022 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000023
# [I;12563,-1852729070,1342177280,35]
execute if score $magic_missile ca.proj_registry matches 23 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,35],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 23 as 3113-9191-9912-5000-000000000023 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 23 as 3113-9191-9912-5000-000000000023 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile


# 3113-9191-9912-5000-000000000024
# [I;12563,-1852729070,1342177280,36]
execute if score $magic_missile ca.proj_registry matches 24 run summon armor_stand ~ ~ ~ {UUID:[I;12563,-1852729070,1342177280,36],NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile","passive_missile","checked","new_proj_replace"],Pose:{Body:[180f,0f,0f],LeftArm:[275f,25f,0f],RightArm:[275f,335f,0f]},Passengers:[{id:"minecraft:sheep",NoGravity:1b,Silent:1b,DeathLootTable:"no_lol",NoAI:1b,Health:2f,Sheared:1b,Tags:["magic_missile_hitbox"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:11,Amplifier:4b,Duration:15,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
execute if score $magic_missile ca.proj_registry matches 24 as 3113-9191-9912-5000-000000000024 at @s run function cartographer_mob_abilities:projectiles/data/magic_missile
execute if score $magic_missile ca.proj_registry matches 24 as 3113-9191-9912-5000-000000000024 at @s run function cartographer_mob_abilities:projectiles/helper/get_motion_value/magic_missile

playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 2
playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 1 2

particle minecraft:poof ~ ~1 ~ 0.3 0.3 0.3 0.05 20 normal

#Return targeting entity
tp 0000001f-00de-140d-0000-0000000276ef 4206900 50 4206900