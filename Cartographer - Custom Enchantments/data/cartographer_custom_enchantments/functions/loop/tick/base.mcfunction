

# INFINITY TESTS MUST BE DONE IN THIS FILE INSTEAD

execute as @a[predicate=cartographer_custom_enchantments:infinity/offhand_1] run scoreboard players set @s infinity_o 1
execute as @a[predicate=cartographer_custom_enchantments:infinity/mainhand_1] run scoreboard players set @s infinity_m 1

# ENCHANT EFFECTS THAT MUST ACTIVATE EVERY TICK

execute as @a[scores={adrenaline=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/adrenaline

execute as @a[scores={agility=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/agility

execute as @a[scores={aquadynamic=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/aquadynamic

execute as @a[scores={concealed=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/concealed

execute as @a[scores={s_cleansing=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/cleansing
execute as @a[scores={f_cleansing=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/cleansing
execute as @a[scores={w_cleansing=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/cleansing
execute as @a[scores={p_cleansing=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/cleansing
execute as @a[scores={wi_cleansing=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/cleansing

execute as @a[scores={energetic=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/energetic

execute as @a[scores={evasion=1..,helper_damaged=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/evasion_prime

execute as @a[scores={evasion=1..},tag=evading] at @s run function cartographer_custom_enchantments:loop/enchant_effects/evasion

execute as @a[scores={evasion=1..,helper_resist=1..},tag=evading] at @s run function cartographer_custom_enchantments:loop/enchant_effects/evasion_trigger

execute as @a[scores={frenzy=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/frenzy

execute as @a[scores={lifesteal=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/lifesteal

execute as @a[scores={satiation=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/satiation

execute as @a[scores={spurs=1..}] at @s run execute if block ~ ~ ~ cobweb run function cartographer_custom_enchantments:loop/enchant_effects/spurs
execute as @a[scores={spurs=1..}] at @s run execute if block ~ ~1 ~ cobweb run function cartographer_custom_enchantments:loop/enchant_effects/spurs

execute as @a[scores={decay=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/decay

execute as @a[scores={duelist=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/duelist

execute as @a[scores={frostbite=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/frostbite

execute as @a[scores={committed=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/committed

execute as @a[scores={executioner=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/executioner

execute as @a[scores={hunter=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/hunter

execute as @a[scores={vanquisher=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/vanquisher

execute as @a[limit=1,scores={repeating=1..7,helper_repeat=1},nbt={SelectedItem:{tag:{Charged:0b}}}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/repeating
execute as @a[limit=1,scores={repeating=11..17,helper_repeat=1},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b}}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/repeating

execute as @a[scores={repeating=1..7},nbt={SelectedItem:{tag:{Ammo:0,Charged:1b}}}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/repeating_reload
execute as @a[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/repeating_reload

execute as @a[scores={repeating=1..7,helper_fire_cbow=1..},nbt={SelectedItem:{tag:{Charged:0b}}}] at @s run scoreboard players set @s helper_repeat 3
execute as @a[scores={repeating=11..17,helper_fire_cbow=1..},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b}}]}] at @s run scoreboard players set @s helper_repeat 3

execute as @a[scores={overload=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/overload

execute as @a[scores={vicious=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/vicious

execute as @a[scores={stunning=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/stunning

execute as @a[scores={echo=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/echo

execute as @a[scores={surging_strike=1..,helper_deal_dmg=1..,helper_sprint=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/surging_strike

execute as @a[scores={evocation=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/evocation

execute as @a[scores={transfiguration=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/transfiguration

execute as @a[scores={sapper=1..,helper_spawner=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/sapper

execute as @a[scores={eruption=1..,helper_spawner=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/eruption

execute as @a[scores={splintering=1..,helper_bbarrel=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_boakdoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bsprdoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bbirdoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bjundoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bacadoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bdrkdoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bcridoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bwardoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_boaktrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bsprtrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bbirtrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bjuntrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bacatrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bdrktrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bcritrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bwartrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering

execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:flame",lvl:1s}]}}}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/flame_crossbows
execute as @a[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:flame",lvl:1s}]}}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/flame_crossbows

execute as @a[scores={deadeye=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/deadeye

execute as @a[scores={point_blank=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/point_blank
execute as @a[scores={point_blank=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/point_blank

execute as @a[scores={sharpshot=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/sharpshot
execute as @a[scores={sharpshot=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/sharpshot

execute as @a[scores={tempo_theft=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/tempo_theft
execute as @a[scores={tempo_theft=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/tempo_theft

execute as @a[scores={frost=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/frost
execute as @a[scores={frost=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/frost

execute as @a[scores={pin_down=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/pin_down
execute as @a[scores={pin_down=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/pin_down

execute as @a[scores={rend=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/rend
execute as @a[scores={rend=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/rend

execute as @a[scores={conductive=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/conductive
execute as @a[scores={conductive=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/conductive

execute as @a[scores={auto_charge=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/auto_charge

execute as @a[scores={current=1..,helper_trident=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/current

execute as @a[scores={hydraulic=1..,helper_trident=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/hydraulic

execute as @a[scores={tempest=1..,helper_trident=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/tempest

execute as @a[scores={ricochet=1..,helper_trident=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/ricochet

execute as @a[scores={trueshot=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/trueshot
execute as @a[scores={trueshot=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/trueshot

execute as @a[scores={volatile=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/volatile
execute as @a[scores={volatile=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/volatile

execute as @a[scores={infinity_m=1}] at @s run execute positioned ~ -1 ~ run function cartographer_custom_enchantments:loop/enchant_effects/infinity_handler
execute as @a[scores={infinity_o=1}] at @s run execute positioned ~ -1 ~ run function cartographer_custom_enchantments:loop/enchant_effects/infinity_handler

execute as @a[scores={infinity=1..}] at @s run execute positioned ~ -1 ~ run function cartographer_custom_enchantments:loop/enchant_effects/infinity_storing

execute as @a[scores={curse_malevolent=2..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/curse_malevolence

execute as @a[scores={curse_regret=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/curse_regret

execute as @a[scores={helper_deathtime=0}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/curse_shattering

execute as @a[scores={helper_deathtime=1..2}] at @s run tp @e[type=item,nbt={Item:{tag:{Soulbound:1}}}] @s

#End the Second Wind effect if a player dies. Also reset their tier.
execute as @a[scores={helper_deathtime=0}] at @s run scoreboard players set @s second_wind_cool 181
execute as @a[scores={helper_deathtime=0}] at @s run scoreboard players set @s second_wind_tier 0

function cartographer_custom_enchantments:loop/tick/reset

# PROJECTILE SCORE UPDATES

scoreboard players add @e[type=arrow,scores={helper_lifetime=1..},nbt=!{inGround:1b}] helper_lifetime 1
scoreboard players add @e[type=trident,scores={helper_lifetime=1..},nbt=!{inGround:1b}] helper_lifetime 1

scoreboard players add @e[scores={helper_lifetime=1..},type=armor_stand,tag=hydraul_stopper] helper_lifetime 1

execute as @e[type=arrow,scores={helper_lifetime=2..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/process_projectile
execute as @e[type=trident,scores={helper_lifetime=2..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/process_projectile

execute as @a at @s run kill @e[type=armor_stand,distance=..3,tag=hydraul_stopper,scores={helper_lifetime=3..}]
tag @e[tag=bounce] remove bounce
execute as @e[type=#cartographer_core:hostile,tag=current_drag] at @s run execute unless entity @e[type=trident,scores={current=1},distance=..5] run tag @s remove current_drag


schedule function cartographer_custom_enchantments:loop/tick/base 1t