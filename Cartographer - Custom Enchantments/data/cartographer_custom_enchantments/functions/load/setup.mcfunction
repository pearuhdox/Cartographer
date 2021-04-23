
#Setup all necessary scoreboard commands.

scoreboard objectives add adrenaline dummy
scoreboard objectives add agility dummy
scoreboard objectives add aquadynamic dummy
scoreboard objectives add auto_charge dummy
scoreboard objectives add s_cleansing dummy
scoreboard objectives add f_cleansing dummy
scoreboard objectives add w_cleansing dummy
scoreboard objectives add p_cleansing dummy
scoreboard objectives add wi_cleansing dummy
scoreboard objectives add committed dummy
scoreboard objectives add concealed dummy
scoreboard objectives add conductive dummy
scoreboard objectives add current dummy
scoreboard objectives add decay dummy
scoreboard objectives add deadeye dummy
scoreboard objectives add despair_wave dummy
scoreboard objectives add destruction_wave dummy
scoreboard objectives add duelist dummy
scoreboard objectives add echo dummy
scoreboard objectives add evocation dummy
scoreboard objectives add energetic dummy
scoreboard objectives add eruption dummy
scoreboard objectives add evasion dummy
scoreboard objectives add executioner dummy
scoreboard objectives add flash dummy
scoreboard objectives add frenzy dummy
scoreboard objectives add frost dummy
scoreboard objectives add frostbite dummy
scoreboard objectives add hunter dummy
scoreboard objectives add hydraulic dummy
scoreboard objectives add infinity dummy
scoreboard objectives add lifesteal dummy
scoreboard objectives add pin_down dummy
scoreboard objectives add point_blank dummy
scoreboard objectives add putrefy dummy
scoreboard objectives add vanquisher dummy
scoreboard objectives add repeating dummy
scoreboard objectives add regeneration dummy
scoreboard objectives add rend dummy
scoreboard objectives add ricochet dummy
scoreboard objectives add sapper dummy
scoreboard objectives add satiation dummy
scoreboard objectives add second_wind dummy
scoreboard objectives add sharpshot dummy
scoreboard objectives add overload dummy
scoreboard objectives add splintering dummy
scoreboard objectives add spurs dummy
scoreboard objectives add stunning dummy
scoreboard objectives add surging_strike dummy
scoreboard objectives add transfiguration dummy
scoreboard objectives add tempest dummy
scoreboard objectives add tempo_theft dummy
scoreboard objectives add trueshot dummy
scoreboard objectives add unbreakable dummy
scoreboard objectives add vengeance dummy
scoreboard objectives add vicious dummy
scoreboard objectives add volatile dummy
scoreboard objectives add thorns dummy

scoreboard objectives add t_fire dummy
scoreboard objectives add t_frost dummy
scoreboard objectives add t_stun dummy
scoreboard objectives add t_bleed dummy
scoreboard objectives add t_shock dummy
scoreboard objectives add t_vuln dummy
scoreboard objectives add t_decay dummy
scoreboard objectives add t_knock dummy

scoreboard objectives add s_adrenaline dummy
scoreboard objectives add s_frenzy dummy
scoreboard objectives add s_energetic dummy

scoreboard objectives add loyalty dummy
scoreboard objectives add fire_aspect dummy
scoreboard objectives add knockback dummy
scoreboard objectives add punch dummy
scoreboard objectives add flame dummy
scoreboard objectives add power dummy

scoreboard objectives add loyalty_slot dummy

scoreboard objectives add curse_malevolent dummy
scoreboard objectives add curse_regret dummy
scoreboard objectives add curse_two_handed dummy
scoreboard objectives add curse_encumber dummy

#Setup evasion bias score.
scoreboard objectives add evasion_bias dummy

#Setup dummy player score for Second Wind calculations.
scoreboard players set SecondWindHelper second_wind 10

#Setup Second Wind cooldown timer and bank.
scoreboard objectives add second_wind_cool dummy
scoreboard objectives add second_wind_test dummy
scoreboard objectives add second_wind_save dummy
scoreboard objectives add second_wind_kill totalKillCount
scoreboard objectives add second_wind_abso dummy
scoreboard objectives add second_wind_tier dummy

scoreboard objectives add danger_lvl dummy
scoreboard objectives add threat_lvl dummy

#Set all needed constants.
scoreboard players set $custom_enchant.TrueshotDouble ca.CONSTANT 2
scoreboard players set $custom_enchant.TrueshotApprox ca.CONSTANT 18
scoreboard players set $custom_enchant.Reflect_I ca.CONSTANT 200
scoreboard players set $custom_enchant.Reflect_II ca.CONSTANT 100
scoreboard players set $custom_enchant.Reflect_III ca.CONSTANT 6
scoreboard players set $custom_enchant.Reflect_IV ca.CONSTANT 4
scoreboard players set $custom_enchant.Reflect_V ca.CONSTANT 3
scoreboard players set $custom_enchant.Reflect_VI ca.CONSTANT 3
scoreboard players set $custom_enchant.Reflect_VII ca.CONSTANT 3
scoreboard players set $custom_enchant.Reflect_VIII ca.CONSTANT 3
scoreboard players set $custom_enchant.Reflect_IX ca.CONSTANT 3
scoreboard players set $custom_enchant.Reflect_X ca.CONSTANT 20
scoreboard players set $custom_enchant.Hard_MX ca.CONSTANT 15
scoreboard players set $custom_enchant.Easy_MX ca.CONSTANT 7
scoreboard players set $custom_enchant.10_MX ca.CONSTANT 10

scoreboard players set $custom_enchant.2 ca.CONSTANT 2
scoreboard players set $custom_enchant.3 ca.CONSTANT 3
scoreboard players set $custom_enchant.4 ca.CONSTANT 4

#Setup all necessary helper scoreboards.

scoreboard objectives add player_health health

scoreboard objectives add helper_tempo dummy
scoreboard objectives add helper_repeat dummy
scoreboard objectives add helper_kill totalKillCount
scoreboard objectives add helper_evade dummy
scoreboard objectives add helper_damaged minecraft.custom:minecraft.damage_taken
scoreboard objectives add helper_resist minecraft.custom:minecraft.damage_resisted
scoreboard objectives add helper_heal_bank dummy
scoreboard objectives add helper_deal_dmg minecraft.custom:minecraft.damage_dealt
scoreboard objectives add helper_stun_show dummy
scoreboard objectives add helper_melee dummy
scoreboard objectives add helper_spawner minecraft.mined:minecraft.spawner
scoreboard objectives add helper_lifetime dummy
scoreboard objectives add helper_deathtime minecraft.custom:minecraft.time_since_death
scoreboard objectives add helper_sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add helper_evoke dummy
scoreboard objectives add echo_charges dummy
scoreboard objectives add ricochet_cool dummy
scoreboard objectives add helper_ammo dummy
scoreboard objectives add ca.conceal_time dummy
scoreboard objectives add ca.evo_burn dummy

scoreboard objectives add helper_exec_low dummy
scoreboard objectives add helper_exec_max dummy

scoreboard objectives add helper_fire_bow minecraft.used:minecraft.bow
scoreboard objectives add helper_fire_cbow minecraft.used:minecraft.crossbow
scoreboard objectives add helper_arrow_dmg dummy
scoreboard objectives add helper_trident minecraft.used:minecraft.trident
scoreboard objectives add helper_trident2 minecraft.used:minecraft.trident

scoreboard objectives add helper_bbarrel minecraft.mined:minecraft.barrel
scoreboard objectives add helper_boakdoor minecraft.mined:minecraft.oak_door
scoreboard objectives add helper_bsprdoor minecraft.mined:minecraft.spruce_door
scoreboard objectives add helper_bbirdoor minecraft.mined:minecraft.birch_door
scoreboard objectives add helper_bjundoor minecraft.mined:minecraft.jungle_door
scoreboard objectives add helper_bacadoor minecraft.mined:minecraft.acacia_door
scoreboard objectives add helper_bdrkdoor minecraft.mined:minecraft.dark_oak_door
scoreboard objectives add helper_bcridoor minecraft.mined:minecraft.crimson_door
scoreboard objectives add helper_bwardoor minecraft.mined:minecraft.warped_door
scoreboard objectives add helper_boaktrap minecraft.mined:minecraft.oak_trapdoor
scoreboard objectives add helper_bsprtrap minecraft.mined:minecraft.spruce_trapdoor
scoreboard objectives add helper_bbirtrap minecraft.mined:minecraft.birch_trapdoor
scoreboard objectives add helper_bjuntrap minecraft.mined:minecraft.jungle_trapdoor
scoreboard objectives add helper_bacatrap minecraft.mined:minecraft.acacia_trapdoor
scoreboard objectives add helper_bdrktrap minecraft.mined:minecraft.dark_oak_trapdoor
scoreboard objectives add helper_bcritrap minecraft.mined:minecraft.crimson_trapdoor
scoreboard objectives add helper_bwartrap minecraft.mined:minecraft.warped_trapdoor

scoreboard objectives add tra_cool dummy
scoreboard objectives add tra_bias dummy

scoreboard objectives add ca.ce.true_x dummy
scoreboard objectives add ca.ce.true_y dummy
scoreboard objectives add ca.ce.true_z dummy
scoreboard objectives add ca.ce.true_dmg dummy

scoreboard objectives add ca.ce.cur_spd dummy

scoreboard objectives add ca.swim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add ca.water_walk minecraft.custom:minecraft.walk_under_water_one_cm

scoreboard objectives add ca.reflect_v dummy

scoreboard objectives add ui_location dummy

scoreboard objectives add ca.susu dummy
scoreboard objectives add ca.selecteditem dummy
scoreboard objectives add ca.food food

scoreboard objectives add ca.attack_val dummy
scoreboard objectives add ca.vol_dmg dummy
scoreboard objectives add ca.temp_warp dummy

scoreboard objectives add i.var dummy

scoreboard objectives add ca.loyal_check dummy

scoreboard objectives add ca.two_hand_del dummy

scoreboard objectives add ca.dummy dummy
scoreboard objectives add c.var dummy

scoreboard objectives add ca.adren_time dummy
scoreboard objectives add ca.frenz_time dummy
scoreboard objectives add ca.energ_time dummy

scoreboard objectives add ca.cur_dmg dummy
scoreboard objectives add ca.max_dmg dummy
scoreboard objectives add ca.dmg_to_deal dummy

scoreboard objectives add ca.rotation dummy

scoreboard objectives add ca.ind_val dummy

#Set all needed player constants.
execute as @a unless entity @s[scores={echo_charges=-1..}] run scoreboard players set @a echo_charges 0
execute as @a unless entity @s[scores={ca.conceal_time=0..}] run scoreboard players set @a ca.conceal_time 0

#Place extra shulker boxes for Custom Enchantments
#Auto Charge
setblock 4206901 0 4206900 purple_shulker_box replace

#Repeating
setblock 4206900 0 4206901 purple_shulker_box replace

#Infinity
setblock 4206899 0 4206900 purple_shulker_box replace

#Two Handed
setblock 4206900 1 4206900 purple_shulker_box replace

#Loyalty Ghost
setblock 4206900 0 4206899 purple_shulker_box replace

#Start initial required looping to trigger enchant effects. Offset 1 second effects by 30 ticks.
function cartographer_custom_enchantments:loop/tick/base
schedule function cartographer_custom_enchantments:loop/1_second/base 30t
schedule function cartographer_custom_enchantments:loop/3_second/base 30t