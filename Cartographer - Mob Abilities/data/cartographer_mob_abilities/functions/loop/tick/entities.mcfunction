#Armor Stand Effects
execute as @s[type=armor_stand] at @s run function cartographer_mob_abilities:loop/tick/armor_stand_branch

#Run On-Death Effects
execute as @s[type=item,nbt={Item:{tag:{DeathEffect:1}}}] at @s run function cartographer_mob_abilities:loop/tick/run_death_effects

#Run Invulnerable Notices
execute if score $invul_time_check invul matches 1.. as @s[type=#cartographer_core:hostile] if entity @s[predicate=cartographer_mob_abilities:is_invulnerable] at @s run function cartographer_mob_abilities:loop/tick/invulnerable_test

#Run Movement Disable and Melee Damage Disable
execute if entity @s[scores={mob_move_dis=1..}] run function cartographer_mob_abilities:loop/tick/disablers/move
execute if entity @s[scores={mob_atk_dis=1..}] run function cartographer_mob_abilities:loop/tick/disablers/attack

execute if entity @s[scores={mob_move_red=1..}] run function cartographer_mob_abilities:loop/tick/reducers/move
execute if entity @s[scores={mob_atk_red=1..}] run function cartographer_mob_abilities:loop/tick/reducers/attack

execute if entity @s[scores={mob_sturdy=1..}] run function cartographer_mob_abilities:loop/tick/sturdy/effects

#Run Has Active Effects
execute if entity @s[tag=ca.has_active] run function cartographer_mob_abilities:loop/tick/actives

#Augment Buff Particles
execute if entity @s[scores={augment_time=1..}] run particle minecraft:dust 1 0 0 0.7 ~ ~1 ~ 0.3 0.5 0.3 0 2 normal
execute if entity @s[scores={augment_time=1..}] run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.05 1 normal

#Run Trap Traits
execute if entity @s[type=area_effect_cloud,tag=trap_deployed] at @s run function cartographer_mob_abilities:abilities/trapper/run_traits

#Run Reflection per Tick
execute if entity @s[tag=reflect_melee] run function cartographer_mob_abilities:loop/tick/reflect/melee
execute if entity @s[tag=reflect_ranged] run function cartographer_mob_abilities:loop/tick/reflect/ranged

#Run Aftershock time reduction
execute if entity @s[scores={ca.aftershock=1..}] run function cartographer_mob_abilities:ability_traits/aftershock/windup

#Run Carapaces
execute as @s[tag=carapaced] at @s run function cartographer_mob_abilities:ability_traits/carapace/carapaced

#Run Creation
execute as @s[tag=ca.creation,tag=!created] at @s run function cartographer_mob_abilities:ability_traits/creation/effect

#Run Horrify Tether on Tethers
execute as @s[type=marker,tag=horrify_tether] at @s run function cartographer_mob_abilities:ability_traits/horrifying/tether_tick

#Run Skin timers for skin entities
execute as @s[tag=ca.fireskin] at @s run function cartographer_mob_abilities:passive/skin/timer
execute as @s[tag=ca.waterskin] at @s run function cartographer_mob_abilities:passive/skin/timer
execute as @s[tag=ca.scaleskin] at @s run function cartographer_mob_abilities:passive/skin/timer
execute as @s[tag=ca.scaleskin_2] at @s run function cartographer_mob_abilities:passive/skin/timer
execute as @s[tag=ca.scaleskin_3] at @s run function cartographer_mob_abilities:passive/skin/timer
execute as @s[tag=ca.shimmerskin] at @s run function cartographer_mob_abilities:passive/skin/timer
execute as @s[tag=ca.shroudskin] at @s run function cartographer_mob_abilities:passive/skin/timer

#Run Projectile Replace Passives
execute as @s[tag=ca.shoot_fire_charge] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile
execute as @s[tag=ca.shoot_fireball] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile
execute as @s[tag=ca.shoot_wither_skull] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile
execute as @s[tag=ca.shoot_dragon_fireball] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile
execute as @s[tag=ca.shoot_shulker_bullet] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile
execute as @s[tag=ca.shoot_potion] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile

execute as @s[tag=ca.quiver] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile

execute as @s[tag=ca.potion_bag] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile

#Run Projectile Wither Skull/Dragon Fireball Fix This is Dumb
execute as @s[tag=passive_fire_charge] at @s run function cartographer_mob_abilities:passive/projectile/fix_projectile
execute as @s[tag=passive_fireball] at @s run function cartographer_mob_abilities:passive/projectile/fix_projectile
execute as @s[tag=passive_wither_skull] at @s run function cartographer_mob_abilities:passive/projectile/fix_projectile
execute as @s[tag=passive_dragon_fireball] at @s run function cartographer_mob_abilities:passive/projectile/fix_projectile
execute as @s[tag=passive_potion] at @s run function cartographer_mob_abilities:passive/projectile/fix_projectile

#Run Custom Particles for Custom Shulker Projectiles
execute as @s[type=shulker_bullet,scores={ca.cs_id=1..}] at @s run function cartographer_mob_abilities:passive/projectile/custom_shulker_visuals

#Run drinking for Potion Bag on Witches
execute as @s[type=witch,tag=ca.potion_bag,tag=!witch_drinking,predicate=cartographer_mob_abilities:witch_drinking] at @s run function cartographer_mob_abilities:passive/potion_bag
execute as @s[type=witch,tag=ca.potion_bag,tag=witch_drinking,predicate=cartographer_mob_abilities:witch_stop_drinking] at @s run tag @s remove witch_drinking

#Run Hookshot Slime Pushers
execute as @s[type=slime,tag=hooked_push_back] at @s run function cartographer_mob_abilities:abilities/hookshot/player/slime/back
execute as @s[type=slime,tag=hooked_push_left] at @s run function cartographer_mob_abilities:abilities/hookshot/player/slime/left
execute as @s[type=slime,tag=hooked_push_right] at @s run function cartographer_mob_abilities:abilities/hookshot/player/slime/right

execute as @s[type=#cartographer_core:hostile,tag=ca.hookshot,scores={ca.hooked=1..}] at @s run scoreboard players remove @s ca.hooked 1
execute as @s[type=#cartographer_core:hostile,tag=ca.hookshot,scores={ca.hooked=1}] at @s run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

execute if entity @s[tag=hook_broken] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit
tag @s[tag=hook_broken] remove hook_broken

#Setup Exalted
execute if entity @s[tag=!setup,tag=ca.exalted] run function cartographer_mob_abilities:passive/exalted_setup