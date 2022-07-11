execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 15
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 12
execute if score $global helper_diff matches ..2 if entity @s[tag=ca.mitosis] run scoreboard players set @s cooldown 5
execute if score $global helper_diff matches 3.. if entity @s[tag=ca.mitosis] run scoreboard players set @s cooldown 4

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

scoreboard players set @s mob_move_dis 23

particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0.05 40

particle minecraft:smoke ~ ~ ~ 0.5 0.3 0.5 0.05 40

data modify storage cartographer:duplicate Data set value {}
data modify storage cartographer:duplicate Data set from entity @s {}

execute if entity @s[type=zombie] run summon zombie ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=zombie,scores={copies=1..}] run summon zombie ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=zombie,scores={copies=2..}] run summon zombie ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=zombie,scores={copies=3..}] run summon zombie ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=husk] run summon husk ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=husk,scores={copies=1..}] run summon husk ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=husk,scores={copies=2..}] run summon husk ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=husk,scores={copies=3..}] run summon husk ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=drowned] run summon drowned ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=drowned,scores={copies=1..}] run summon drowned ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=drowned,scores={copies=2..}] run summon drowned ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=drowned,scores={copies=3..}] run summon drowned ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=skeleton] run summon skeleton ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=skeleton,scores={copies=1..}] run summon skeleton ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=skeleton,scores={copies=2..}] run summon skeleton ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=skeleton,scores={copies=3..}] run summon skeleton ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=stray] run summon stray ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=stray,scores={copies=1..}] run summon stray ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=stray,scores={copies=2..}] run summon stray ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=stray,scores={copies=3..}] run summon stray ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=wither_skeleton] run summon wither_skeleton ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=wither_skeleton,scores={copies=1..}] run summon wither_skeleton ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=wither_skeleton,scores={copies=2..}] run summon wither_skeleton ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=wither_skeleton,scores={copies=3..}] run summon wither_skeleton ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=zombified_piglin] run summon zombified_piglin ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=zombified_piglin,scores={copies=1..}] run summon zombified_piglin ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=zombified_piglin,scores={copies=2..}] run summon zombified_piglin ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=zombified_piglin,scores={copies=3..}] run summon zombified_piglin ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=phantom] run summon phantom ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=phantom,scores={copies=1..}] run summon phantom ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=phantom,scores={copies=2..}] run summon phantom ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=phantom,scores={copies=3..}] run summon phantom ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=spider] run summon spider ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=spider,scores={copies=1..}] run summon spider ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=spider,scores={copies=2..}] run summon spider ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=spider,scores={copies=3..}] run summon spider ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=cave_spider] run summon cave_spider ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=cave_spider,scores={copies=1..}] run summon cave_spider ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=cave_spider,scores={copies=2..}] run summon cave_spider ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=cave_spider,scores={copies=3..}] run summon cave_spider ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=silverfish] run summon silverfish ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=silverfish,scores={copies=1..}] run summon silverfish ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=silverfish,scores={copies=2..}] run summon silverfish ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=silverfish,scores={copies=3..}] run summon silverfish ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=endermite] run summon endermite ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=endermite,scores={copies=1..}] run summon endermite ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=endermite,scores={copies=2..}] run summon endermite ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=endermite,scores={copies=3..}] run summon endermite ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=creeper] run summon creeper ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=creeper,scores={copies=1..}] run summon creeper ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=creeper,scores={copies=2..}] run summon creeper ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=creeper,scores={copies=3..}] run summon creeper ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=enderman] run summon enderman ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=enderman,scores={copies=1..}] run summon enderman ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=enderman,scores={copies=2..}] run summon enderman ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=enderman,scores={copies=3..}] run summon enderman ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=blaze] run summon blaze ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=blaze,scores={copies=1..}] run summon blaze ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=blaze,scores={copies=2..}] run summon blaze ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=blaze,scores={copies=3..}] run summon blaze ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=slime] run summon slime ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=slime,scores={copies=1..}] run summon slime ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=slime,scores={copies=2..}] run summon slime ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=slime,scores={copies=3..}] run summon slime ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=magma_cube] run summon magma_cube ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=magma_cube,scores={copies=1..}] run summon magma_cube ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=magma_cube,scores={copies=2..}] run summon magma_cube ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=magma_cube,scores={copies=3..}] run summon magma_cube ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=ghast] run summon ghast ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=ghast,scores={copies=1..}] run summon ghast ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=ghast,scores={copies=2..}] run summon ghast ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=ghast,scores={copies=3..}] run summon ghast ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=vindicator] run summon vindicator ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=vindicator,scores={copies=1..}] run summon vindicator ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=vindicator,scores={copies=2..}] run summon vindicator ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=vindicator,scores={copies=3..}] run summon vindicator ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=evoker] run summon evoker ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=evoker,scores={copies=1..}] run summon evoker ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=evoker,scores={copies=2..}] run summon evoker ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=evoker,scores={copies=3..}] run summon evoker ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=vex] run summon vex ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=vex,scores={copies=1..}] run summon vex ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=vex,scores={copies=2..}] run summon vex ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=vex,scores={copies=3..}] run summon vex ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=pillager] run summon pillager ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=pillager,scores={copies=1..}] run summon pillager ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=pillager,scores={copies=2..}] run summon pillager ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=pillager,scores={copies=3..}] run summon pillager ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=ravager] run summon ravager ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=ravager,scores={copies=1..}] run summon ravager ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=ravager,scores={copies=2..}] run summon ravager ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=ravager,scores={copies=3..}] run summon ravager ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=guardian] run summon guardian ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=guardian,scores={copies=1..}] run summon guardian ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=guardian,scores={copies=2..}] run summon guardian ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=guardian,scores={copies=3..}] run summon guardian ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=elder_guardian] run summon elder_guardian ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=elder_guardian,scores={copies=1..}] run summon elder_guardian ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=elder_guardian,scores={copies=2..}] run summon elder_guardian ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=elder_guardian,scores={copies=3..}] run summon elder_guardian ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=witch] run summon witch ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=witch,scores={copies=1..}] run summon witch ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=witch,scores={copies=2..}] run summon witch ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=witch,scores={copies=3..}] run summon witch ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=iron_golem] run summon iron_golem ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=iron_golem,scores={copies=1..}] run summon iron_golem ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=iron_golem,scores={copies=2..}] run summon iron_golem ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=iron_golem,scores={copies=3..}] run summon iron_golem ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=shulker] run summon shulker ~1 ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=shulker,scores={copies=1..}] run summon shulker ~-1 ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=shulker,scores={copies=2..}] run summon shulker ~ ~ ~1 {Tags:["duplicate"]}
execute if entity @s[type=shulker,scores={copies=3..}] run summon shulker ~ ~ ~-1 {Tags:["duplicate"]}

execute if entity @s[type=zombie_villager] run summon zombie_villager ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=zombie_villager,scores={copies=1..}] run summon zombie_villager ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=zombie_villager,scores={copies=2..}] run summon zombie_villager ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=zombie_villager,scores={copies=3..}] run summon zombie_villager ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=bee] run summon bee ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=bee,scores={copies=1..}] run summon bee ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=bee,scores={copies=2..}] run summon bee ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=bee,scores={copies=3..}] run summon bee ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=piglin] run summon piglin ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=piglin,scores={copies=1..}] run summon piglin ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=piglin,scores={copies=2..}] run summon piglin ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=piglin,scores={copies=3..}] run summon piglin ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=piglin_brute] run summon piglin_brute ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=piglin_brute,scores={copies=1..}] run summon piglin_brute ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=piglin_brute,scores={copies=2..}] run summon piglin_brute ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=piglin_brute,scores={copies=3..}] run summon piglin_brute ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=hoglin] run summon hoglin ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=hoglin,scores={copies=1..}] run summon hoglin ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=hoglin,scores={copies=2..}] run summon hoglin ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=hoglin,scores={copies=3..}] run summon hoglin ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=zoglin] run summon zoglin ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=zoglin,scores={copies=1..}] run summon zoglin ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=zoglin,scores={copies=2..}] run summon zoglin ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=zoglin,scores={copies=3..}] run summon zoglin ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=illusioner] run summon illusioner ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=illusioner,scores={copies=1..}] run summon illusioner ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=illusioner,scores={copies=2..}] run summon illusioner ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=illusioner,scores={copies=3..}] run summon illusioner ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=wolf] run summon wolf ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=wolf,scores={copies=1..}] run summon wolf ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=wolf,scores={copies=2..}] run summon wolf ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=wolf,scores={copies=3..}] run summon wolf ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=rabbit] run summon rabbit ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=rabbit,scores={copies=1..}] run summon rabbit ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=rabbit,scores={copies=2..}] run summon rabbit ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=rabbit,scores={copies=3..}] run summon rabbit ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=ender_dragon] run summon ender_dragon ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=ender_dragon,scores={copies=1..}] run summon ender_dragon ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=ender_dragon,scores={copies=2..}] run summon ender_dragon ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=ender_dragon,scores={copies=3..}] run summon ender_dragon ~ ~ ~ {Tags:["duplicate"]}

execute if entity @s[type=wither] run summon wither ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=wither,scores={copies=1..}] run summon wither ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=wither,scores={copies=2..}] run summon wither ~ ~ ~ {Tags:["duplicate"]}
execute if entity @s[type=wither,scores={copies=3..}] run summon wither ~ ~ ~ {Tags:["duplicate"]}

execute as @e[tag=duplicate,tag=!done_dupe,distance=..1.5] at @s run function cartographer_mob_abilities:abilities/duplicator/copy_data

playsound minecraft:entity.illusioner.mirror_move hostile @a[distance=..16] ~ ~ ~ 3 1.3

function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players remove $tokened_total ca.tokens 1
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player

#say test

scoreboard players set @s copies 0