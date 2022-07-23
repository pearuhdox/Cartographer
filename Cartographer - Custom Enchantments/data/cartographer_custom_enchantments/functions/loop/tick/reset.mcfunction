scoreboard players set @s ca.kill_entity 0
scoreboard players set @s ca.take_dmg 0
scoreboard players set @s ca.resist_dmg 0
scoreboard players set @s ca.deal_mel_dmg 0
scoreboard players set @s ca.mine_spawner 0
scoreboard players set @s ca.fire_bow 0
scoreboard players set @s ca.fire_cbow 0
scoreboard players set @s ca.throw_trident 0
scoreboard players set @s[scores={ca.sprint=5..}] ca.sprint 5
scoreboard players remove @s[scores={ca.sprint=1..}] ca.sprint 1
scoreboard players set @s[scores={ca.swim=1..}] ca.swim 0
scoreboard players set @s[scores={ca.water_walk=201..}] ca.water_walk 200
scoreboard players remove @s[scores={ca.water_walk=5..}] ca.water_walk 5

scoreboard players set @s ca.br_barrel 0
scoreboard players set @s ca.br_oak_dr 0
scoreboard players set @s ca.br_spr_dr 0
scoreboard players set @s ca.br_bir_dr 0
scoreboard players set @s ca.br_jun_dr 0
scoreboard players set @s ca.br_aca_dr 0
scoreboard players set @s ca.br_drk_dr 0
scoreboard players set @s ca.br_cri_dr 0
scoreboard players set @s ca.br_war_dr 0
scoreboard players set @s ca.br_oka_trap 0
scoreboard players set @s ca.br_spr_trap 0
scoreboard players set @s ca.br_bir_trap 0
scoreboard players set @s ca.br_jun_trap 0
scoreboard players set @s ca.br_aca_trap 0
scoreboard players set @s ca.br_drk_trap 0
scoreboard players set @s ca.br_cri_trap 0
scoreboard players set @s ca.br_war_trap 0

scoreboard players set @s helper_potion 0
scoreboard players set @s ca.use_splashpot 0
scoreboard players set @s ca.use_lingerpot 0
scoreboard players set @s ca.use_pearl 0
scoreboard players set @s helper_eye 0

scoreboard players set @s helper_bread 0
scoreboard players set @s helper_m_soup 0
scoreboard players set @s helper_apple 0
scoreboard players set @s helper_g_apple 0
scoreboard players set @s helper_eg_apple 0
scoreboard players set @s helper_fish 0
scoreboard players set @s helper_c_fish 0 
scoreboard players set @s helper_salmon 0
scoreboard players set @s helper_c_salmon 0
scoreboard players set @s helper_kelp 0
scoreboard players set @s helper_pork 0
scoreboard players set @s helper_c_pork 0
scoreboard players set @s helper_beef 0
scoreboard players set @s helper_c_beef 0
scoreboard players set @s helper_chicken 0
scoreboard players set @s helper_c_chicken 0
scoreboard players set @s helper_mutton 0
scoreboard players set @s helper_c_mutton 0
scoreboard players set @s helper_rabbit 0
scoreboard players set @s helper_c_rabbit 0
scoreboard players set @s helper_cookie 0
scoreboard players set @s helper_melon 0
scoreboard players set @s helper_pie 0
scoreboard players set @s helper_carrot 0
scoreboard players set @s helper_g_carrot 0
scoreboard players set @s helper_p_potato 0
scoreboard players set @s helper_potato 0
scoreboard players set @s helper_c_potato 0
scoreboard players set @s helper_chorus 0
scoreboard players set @s helper_beet 0
scoreboard players set @s helper_b_soup 0
scoreboard players set @s helper_r_soup 0
scoreboard players set @s helper_flesh 0
scoreboard players set @s helper_s_eye 0
scoreboard players set @s helper_honey 0
scoreboard players set @s helper_milk 0

scoreboard players remove @s[scores={ca.rpt_cdl=2..}] ca.rpt_cdl 1

scoreboard players set @s ca.sneak 0

scoreboard players set @s ca.dmg_resist_sw 0
scoreboard players set @s ca.sw_fall 0

scoreboard players set @s ca.rally_amt 0
scoreboard players set @s ca.rally_rst 0

advancement revoke @s only cartographer_custom_enchantments:second_wind_projectile
advancement revoke @s only cartographer_custom_enchantments:second_wind_explosion