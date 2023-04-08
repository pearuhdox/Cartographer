#Scan the mob for Target, then assume that mob has line of sight.
scoreboard players set $has_los ca.mob_var 0
execute on target run scoreboard players set $has_los ca.mob_var 1
execute if score $has_los ca.mob_var matches 1.. run tag @s add can_see_player
execute unless score $has_los ca.mob_var matches 1.. run tag @s remove can_see_player
# Thank you Mojang for turning a expensive @e check into a free check

#Run Touch Melee
execute if entity @s[tag=ca.running_touch_melee] run function cartographer_mob_abilities:ability_traits/touch/melee
execute if entity @s[tag=ca.running_touch_ranged] run function cartographer_mob_abilities:ability_traits/touch/ranged

#Run Invulnerable Notices
execute if score $invul_time_check invul matches 1.. if entity @s[predicate=cartographer_mob_abilities:is_invulnerable] at @s run function cartographer_mob_abilities:loop/tick/invulnerable_test
execute if score $invul_time_check invul matches 1.. if entity @s[predicate=cartographer_mob_abilities:has_proj_prot] at @s run function cartographer_mob_abilities:loop/tick/projectile_resist_test

#Run Enderport
execute if entity @s[tag=ca.enderport] if entity @e[type=#bb:projectile,nbt=!{inGround:1b},distance=..5] run function cartographer_mob_abilities:passive/enderport

#Run Creeper Effects
execute if entity @s[type=creeper] run function cartographer_mob_abilities:loop/tick/creeper

execute if entity @s[type=#cartographer_mob_abilities:has_size] run function cartographer_mob_abilities:loop/tick/has_size

#Run Evoker Replaces
execute if entity @s[type=evoker,tag=ca.summon_swap] if entity @s[nbt={SpellTicks:80}] run function cartographer_mob_abilities:passive/summoner/master

#Run Sweep Animations
execute if score @s ca.sweep_animation matches 1.. run function cartographer_mob_abilities:abilities/sweep/animation

#Run Move Animations
execute if score @s ca.mob_move_time matches 1.. run function cartographer_mob_abilities:move_mode/master

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
execute if entity @s[scores={augment_time=1..}] run particle minecraft:dust_color_transition 1 0 0 1 1 1 1 ~ ~1 ~ 0.3 0.5 0.3 0 1 normal
execute if entity @s[scores={augment_time=1..}] run particle minecraft:dust_color_transition 1 0 0 1 0 0 0 ~ ~1 ~ 0.3 0.5 0.3 0 1 normal

#Augment Reset
execute if entity @s[scores={augment_time=1}] run function cartographer_mob_abilities:abilities/augmenter/remove_augment

#Elytra Deploy
execute if score @s[tag=ca.acro_kite_elytra] ca.elytra_deploy_time matches 11.. run function cartographer_mob_abilities:loop/1_second/branches/give_fall_flying_branch
execute if score @s ca.elytra_deploy_time matches 1.. run scoreboard players add @s ca.elytra_deploy_time 1

#Run Trap Traits
execute if entity @s[type=area_effect_cloud,tag=trap_deployed] at @s run function cartographer_mob_abilities:projectiles/behavior/trap/run_traits

#Run Reflection per Tick
execute if entity @s[tag=ca.reflect_melee] run function cartographer_mob_abilities:loop/tick/reflect/pre_run
execute if entity @s[tag=ca.reflect_ranged] run function cartographer_mob_abilities:loop/tick/reflect/pre_run

#Run Aftershock time reduction
execute if entity @s[scores={ca.aftershock=1..}] run function cartographer_mob_abilities:ability_traits/aftershock/windup

#Run Carapaces
execute if score @s ca.carapace_stacks matches 1.. at @s run function cartographer_mob_abilities:ability_traits/carapace/carapaced

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
#execute as @s[type=slime,tag=hooked_push_back] at @s run function cartographer_mob_abilities:abilities/hookshot/player/slime/back
#execute as @s[type=slime,tag=hooked_push_left] at @s run function cartographer_mob_abilities:abilities/hookshot/player/slime/left
#execute as @s[type=slime,tag=hooked_push_right] at @s run function cartographer_mob_abilities:abilities/hookshot/player/slime/right

execute as @s[tag=ca.hookshot,scores={ca.hooked=1..}] at @s run scoreboard players remove @s ca.hooked 1
execute as @s[tag=ca.hookshot,scores={ca.hooked=1}] at @s run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

execute if entity @s[tag=hook_broken] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit
tag @s[tag=hook_broken] remove hook_broken

#Setup Exalted
execute if entity @s[tag=!setup,tag=ca.exalted] run function cartographer_mob_abilities:death/exalted/setup

#Setup Ambidextrous
execute if entity @s[tag=!ambi_readied,tag=ca.ambidextrous] run function cartographer_mob_abilities:passive/ambidextrous/initialize

#Swap Ambidextrous - Player Range
execute if entity @s[tag=ca.ambidextrous,tag=!ca.follow_up_ability,tag=!ca.follow_up,scores={ca.ambi_cool=0}] if entity @a[distance=4..5.5] run function cartographer_mob_abilities:passive/ambidextrous/swap

#Handle Ambidextrous Cooldown
execute unless entity @a[distance=4..5.5] run scoreboard players remove @s[tag=ca.ambidextrous,scores={ca.ambi_cool=1..}] ca.ambi_cool 1
execute if entity @s[tag=ca.ambidextrous] unless score @s ca.ambi_cool matches 1.. run scoreboard players set @s ca.ambi_cool 0

#Run Auras
execute if entity @s[tag=ca.vfx_aura] run function cartographer_mob_abilities:aura/run_vfx

#Run Sonic Charge Attacks
execute if score @s ca.sc_time matches 1.. run function cartographer_mob_abilities:passive/projectile/sonic_charge/tick

#Setup Orbit Timer
execute unless score @s ca.orbit_timer matches 0.. run scoreboard players set @s ca.orbit_timer 0

execute if entity @s[type=evoker] store result score $spell_tick ca.mob_var run data get entity @s SpellTicks

tag @s[type=vex] add vex_checked

#Run on entities that have death effects
execute if entity @s[tag=ca.has_death,tag=!ca.has_death_setup,tag=!ca.deathbomb] run function cartographer_mob_abilities:death/create_death_marker