scoreboard players set @a helper_kill 0
scoreboard players set @a helper_damaged 0
scoreboard players set @a helper_resist 0
scoreboard players set @a helper_deal_dmg 0
scoreboard players set @a helper_spawner 0
scoreboard players set @a helper_fire_bow 0
scoreboard players set @a helper_fire_cbow 0
scoreboard players set @a helper_trident 0
scoreboard players set @a[scores={helper_sprint=5..}] helper_sprint 5
scoreboard players remove @a[scores={helper_sprint=1..}] helper_sprint 1
scoreboard players set @a[scores={ca.swim=1..}] ca.swim 0
scoreboard players set @a[scores={ca.water_walk=201..}] ca.water_walk 200
scoreboard players remove @a[scores={ca.water_walk=5..}] ca.water_walk 5

scoreboard players set @a helper_bbarrel 0
scoreboard players set @a helper_boakdoor 0
scoreboard players set @a helper_bsprdoor 0
scoreboard players set @a helper_bbirdoor 0
scoreboard players set @a helper_bjundoor 0
scoreboard players set @a helper_bacadoor 0
scoreboard players set @a helper_bdrkdoor 0
scoreboard players set @a helper_bcridoor 0
scoreboard players set @a helper_bwardoor 0
scoreboard players set @a helper_boaktrap 0
scoreboard players set @a helper_bsprtrap 0
scoreboard players set @a helper_bbirtrap 0
scoreboard players set @a helper_bjuntrap 0
scoreboard players set @a helper_bacatrap 0
scoreboard players set @a helper_bdrktrap 0
scoreboard players set @a helper_bcritrap 0
scoreboard players set @a helper_bwartrap 0

scoreboard players set @a helper_potion 0
scoreboard players set @a helper_splashpot 0
scoreboard players set @a helper_lingerpot 0
scoreboard players set @a helper_pearl 0
scoreboard players set @a helper_eye 0

scoreboard players set @a helper_bread 0
scoreboard players set @a helper_m_soup 0
scoreboard players set @a helper_apple 0
scoreboard players set @a helper_g_apple 0
scoreboard players set @a helper_eg_apple 0
scoreboard players set @a helper_fish 0
scoreboard players set @a helper_c_fish 0 
scoreboard players set @a helper_salmon 0
scoreboard players set @a helper_c_salmon 0
scoreboard players set @a helper_kelp 0
scoreboard players set @a helper_pork 0
scoreboard players set @a helper_c_pork 0
scoreboard players set @a helper_beef 0
scoreboard players set @a helper_c_beef 0
scoreboard players set @a helper_chicken 0
scoreboard players set @a helper_c_chicken 0
scoreboard players set @a helper_mutton 0
scoreboard players set @a helper_c_mutton 0
scoreboard players set @a helper_rabbit 0
scoreboard players set @a helper_c_rabbit 0
scoreboard players set @a helper_cookie 0
scoreboard players set @a helper_melon 0
scoreboard players set @a helper_pie 0
scoreboard players set @a helper_carrot 0
scoreboard players set @a helper_g_carrot 0
scoreboard players set @a helper_p_potato 0
scoreboard players set @a helper_potato 0
scoreboard players set @a helper_c_potato 0
scoreboard players set @a helper_chorus 0
scoreboard players set @a helper_beet 0
scoreboard players set @a helper_b_soup 0
scoreboard players set @a helper_r_soup 0
scoreboard players set @a helper_flesh 0
scoreboard players set @a helper_s_eye 0
scoreboard players set @a helper_honey 0
scoreboard players set @a helper_milk 0

scoreboard players remove @a[scores={helper_repeat=2..}] helper_repeat 1

scoreboard players set @s ca.dmg_resist_sw 0
scoreboard players set @s ca.sw_fall 0

advancement revoke @a only cartographer_custom_enchantments:second_wind_projectile
advancement revoke @a only cartographer_custom_enchantments:second_wind_explosion