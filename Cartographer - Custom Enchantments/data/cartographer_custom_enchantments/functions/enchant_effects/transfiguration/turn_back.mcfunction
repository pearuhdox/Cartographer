data modify storage cartographer_custom_enchantments:transfiguration data.Health set from entity @s Health

execute if score @s ca.transfig_id matches 1 run summon minecraft:zombie ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 2 run summon minecraft:husk ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 3 run summon minecraft:drowned ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 4 run summon minecraft:skeleton ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 5 run summon minecraft:stray ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 6 run summon minecraft:wither_skeleton ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 7 run summon minecraft:zombified_piglin ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 8 run summon minecraft:phantom ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 9 run summon minecraft:spider ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 10 run summon minecraft:cave_spider ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 11 run summon minecraft:silverfish ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 12 run summon minecraft:endermite ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 13 run summon minecraft:creeper ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 14 run summon minecraft:enderman ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 15 run summon minecraft:blaze ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 16 run summon minecraft:slime ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 17 run summon minecraft:magma_cube ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 18 run summon minecraft:ghast ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 19 run summon minecraft:vindicator ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 20 run summon minecraft:evoker ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 21 run summon minecraft:pillager ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 22 run summon minecraft:vex ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 23 run summon minecraft:ravager ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 24 run summon minecraft:guardian ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 25 run summon minecraft:elder_guardian ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 26 run summon minecraft:shulker ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 27 run summon minecraft:zombie_villager ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 28 run summon minecraft:bee ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 29 run summon minecraft:piglin ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 30 run summon minecraft:piglin_brute ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 31 run summon minecraft:hoglin ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 32 run summon minecraft:zoglin ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 33 run summon minecraft:illusioner ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 34 run summon minecraft:wolf ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 35 run summon minecraft:rabbit ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}
execute if score @s ca.transfig_id matches 36 run summon minecraft:iron_golem ~ ~0.25 ~ {Tags:["ca.was_transfigured"]}

execute as @e[type=#cartographer_core:hostile,tag=ca.was_transfigured,tag=!ca.checked_transfig,limit=1,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/transfiguration/turn_back_data

particle minecraft:cloud ~ ~0.3 ~ 0 0 0 0.1 10 normal

playsound minecraft:entity.chicken.egg hostile @a[distance=..16] ~ ~ ~ 1.5 0.5
playsound minecraft:entity.warden.tendril_clicks hostile @a[distance=..16] ~ ~ ~ 0.6 0.65
playsound minecraft:entity.warden.tendril_clicks hostile @a[distance=..16] ~ ~ ~ 0.6 0.65

tp @s ~ -300 ~