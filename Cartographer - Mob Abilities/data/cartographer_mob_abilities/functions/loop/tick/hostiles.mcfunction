#Run Invulnerable Notices
execute if score $invul_time_check invul matches 1.. if entity @s[predicate=cartographer_mob_abilities:is_invulnerable] at @s run function cartographer_mob_abilities:loop/tick/invulnerable_test
execute if score $invul_time_check invul matches 1.. if entity @s[predicate=cartographer_mob_abilities:has_proj_prot] at @s run function cartographer_mob_abilities:loop/tick/projectile_resist_test

#Run Enderport
execute if entity @s[tag=ca.enderport] if entity @e[type=#bb:projectile,nbt=!{inGround:1b},distance=..5] run function cartographer_mob_abilities:passive/enderport

#Run Creeper Block Effects
execute if entity @s[type=creeper,tag=ca.prevent_effects,tag=!ca.prevent_effects_creeper_applied] run function cartographer_mob_abilities:passive/block_effects/creepers/apply_creeper
execute if entity @s[type=creeper,tag=ca.prevent_effects_creeper_applied] run scoreboard players set $block_effects_creeper ca.var 2

#Run Evoker Replaces
execute if entity @s[type=evoker,tag=ca.summoner] if entity @s[nbt={SpellTicks:80}] run function cartographer_mob_abilities:passive/summoner/master

#Run Movement Disable and Melee Damage Disable
execute if entity @s[scores={mob_move_dis=1..}] run function cartographer_mob_abilities:loop/tick/disablers/move
execute if entity @s[scores={mob_atk_dis=1..}] run function cartographer_mob_abilities:loop/tick/disablers/attack

execute if entity @s[scores={mob_move_red=1..}] run function cartographer_mob_abilities:loop/tick/reducers/move
execute if entity @s[scores={mob_atk_red=1..}] run function cartographer_mob_abilities:loop/tick/reducers/attack

execute if entity @s[scores={mob_sturdy=1..}] run function cartographer_mob_abilities:loop/tick/sturdy/effects

#Run Has Active Effects
execute if entity @s[tag=ca.has_active] run function cartographer_mob_abilities:loop/tick/actives

#Run Orbit Effect
execute if score @s ca.orbit_timer matches 1.. run function cartographer_mob_abilities:abilities/orbit/tick_effect

#Augment Buff Particles
execute if entity @s[scores={augment_time=1..}] run particle minecraft:dust 1 0 0 0.7 ~ ~1 ~ 0.3 0.5 0.3 0 2 normal
execute if entity @s[scores={augment_time=1..}] run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.05 1 normal

#Run Trap Traits
execute if entity @s[type=area_effect_cloud,tag=trap_deployed] at @s run function cartographer_mob_abilities:abilities/trapper/run_traits

#Run Reflection per Tick
execute if entity @s[tag=ca.reflect_melee] run function cartographer_mob_abilities:loop/tick/reflect/pre_run
execute if entity @s[tag=ca.reflect_ranged] run function cartographer_mob_abilities:loop/tick/reflect/pre_run

#Run Aftershock time reduction
execute if entity @s[scores={ca.aftershock=1..}] run function cartographer_mob_abilities:ability_traits/aftershock/windup

#Run Carapaces
execute as @s[tag=carapaced] at @s run function cartographer_mob_abilities:ability_traits/carapace/carapaced

#Run Creation
execute as @s[tag=ca.creation,tag=!created] at @s run function cartographer_mob_abilities:ability_traits/creation/effect

#Run Skin timers for skin entities
execute as @s[tag=ca.fireskin] at @s run function cartographer_mob_abilities:passive/skin/timer
execute as @s[tag=ca.waterskin] at @s run function cartographer_mob_abilities:passive/skin/timer
execute as @s[tag=ca.scaleskin] at @s run function cartographer_mob_abilities:passive/skin/timer
execute as @s[tag=ca.scaleskin_2] at @s run function cartographer_mob_abilities:passive/skin/timer
execute as @s[tag=ca.scaleskin_3] at @s run function cartographer_mob_abilities:passive/skin/timer
execute as @s[tag=ca.shimmerskin] at @s run function cartographer_mob_abilities:passive/skin/timer
execute as @s[tag=ca.shroudskin] at @s run function cartographer_mob_abilities:passive/skin/timer


execute as @s[tag=ca.quiver] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main

execute as @s[tag=ca.potion_bag] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main

#Run drinking for Potion Bag on Witches
execute as @s[type=witch,tag=ca.potion_bag,tag=!witch_drinking,predicate=cartographer_mob_abilities:witch_drinking] at @s run function cartographer_mob_abilities:passive/potion_bag
execute as @s[type=witch,tag=ca.potion_bag,tag=witch_drinking,predicate=cartographer_mob_abilities:witch_stop_drinking] at @s run tag @s remove witch_drinking

#Run Hookshot Slime Pushers
execute as @s[type=slime,tag=hooked_push_back] at @s run function cartographer_mob_abilities:abilities/hookshot/player/slime/back
execute as @s[type=slime,tag=hooked_push_left] at @s run function cartographer_mob_abilities:abilities/hookshot/player/slime/left
execute as @s[type=slime,tag=hooked_push_right] at @s run function cartographer_mob_abilities:abilities/hookshot/player/slime/right

execute as @s[tag=ca.hookshot,scores={ca.hooked=1..}] at @s run scoreboard players remove @s ca.hooked 1
execute as @s[tag=ca.hookshot,scores={ca.hooked=1}] at @s run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

execute if entity @s[tag=hook_broken] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit
tag @s[tag=hook_broken] remove hook_broken

#Setup Exalted
execute if entity @s[tag=!setup,tag=ca.exalted] run function cartographer_mob_abilities:passive/exalted/setup

#Setup Ambidextrous
execute if entity @s[tag=!ambi_readied,tag=ca.ambidextrous] run function cartographer_mob_abilities:passive/ambidextrous/initialize

#Swap Ambidextrous - Player Range
execute if entity @s[tag=ca.ambidextrous,tag=!ca.follow_up,scores={ca.ambi_cool=0}] if entity @a[distance=5..6] run function cartographer_mob_abilities:passive/ambidextrous/swap

#Handle Ambidextrous Cooldown
scoreboard players remove @s[tag=ca.ambidextrous,scores={ca.ambi_cool=1..}] ca.ambi_cool 1
execute if entity @s[tag=ca.ambidextrous] unless score @s ca.ambi_cool matches 1.. run scoreboard players set @s ca.ambi_cool 0

#Run Auras
execute if entity @s[tag=ca.vfx_aura] run function cartographer_mob_abilities:aura/run_vfx