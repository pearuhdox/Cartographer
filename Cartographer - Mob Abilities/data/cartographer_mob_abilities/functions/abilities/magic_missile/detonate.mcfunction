execute if score @s ca.ability_dmg matches 0..8 run summon minecraft:firework_rocket ~ ~1 ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;13119699]},{Type:0,Trail:1b,Colors:[I;16177656]}]}}}}
execute if score @s ca.ability_dmg matches 9..16 run summon minecraft:firework_rocket ~ ~1 ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;13119699]},{Type:0,Trail:1b,Colors:[I;16177656]},{Type:0,Trail:1b,Colors:[I;16177656]},{Type:0,Trail:1b,Colors:[I;16177656]}]}}}}
execute if score @s ca.ability_dmg matches 17..24 run summon minecraft:firework_rocket ~ ~1 ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;13119699]},{Type:0,Trail:1b,Colors:[I;16177656]},{Type:0,Trail:1b,Colors:[I;16177656]},{Type:0,Trail:1b,Colors:[I;16177656]},{Type:0,Trail:1b,Colors:[I;16177656]},{Type:0,Trail:1b,Colors:[I;16177656]}]}}}}
execute if score @s ca.ability_dmg matches 25.. run summon minecraft:firework_rocket ~ ~1 ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;13119699]},{Type:0,Trail:1b,Colors:[I;16177656]},{Type:0,Trail:1b,Colors:[I;16177656]},{Type:0,Trail:1b,Colors:[I;16177656]},{Type:0,Trail:1b,Colors:[I;16177656]},{Type:0,Trail:1b,Colors:[I;16177656]},{Type:0,Trail:1b,Colors:[I;16177656]},{Type:0,Trail:1b,Colors:[I;16177656]}]}}}}

tag @a[distance=..2] add ability_tagged

execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits

tag @a[distance=..2] remove ability_tagged

kill @e[type=sheep,distance=..0.5,tag=magic_missile_hitbox]
kill @s