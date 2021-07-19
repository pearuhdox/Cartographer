scoreboard players set @a ca.kill_entity 0
scoreboard players set @a ca.take_dmg 0
scoreboard players set @a ca.resist_dmg 0
scoreboard players set @a ca.deal_mel_dmg 0
scoreboard players set @a ca.mine_spawner 0
scoreboard players set @a ca.fire_bow 0
scoreboard players set @a ca.fire_cbow 0
scoreboard players set @a ca.throw_trident 0
scoreboard players set @a[scores={ca.sprint=5..}] ca.sprint 5
scoreboard players remove @a[scores={ca.sprint=1..}] ca.sprint 1
scoreboard players set @a[scores={ca.swim=1..}] ca.swim 0
scoreboard players set @a[scores={ca.water_walk=201..}] ca.water_walk 200
scoreboard players remove @a[scores={ca.water_walk=5..}] ca.water_walk 5

scoreboard players set @a ca.br_barrel 0
scoreboard players set @a ca.br_oak_dr 0
scoreboard players set @a ca.br_spr_dr 0
scoreboard players set @a ca.br_bir_dr 0
scoreboard players set @a ca.br_jun_dr 0
scoreboard players set @a ca.br_aca_dr 0
scoreboard players set @a ca.br_drk_dr 0
scoreboard players set @a ca.br_cri_dr 0
scoreboard players set @a ca.br_war_dr 0
scoreboard players set @a ca.br_oka_trap 0
scoreboard players set @a ca.br_spr_trap 0
scoreboard players set @a ca.br_bir_trap 0
scoreboard players set @a ca.br_jun_trap 0
scoreboard players set @a ca.br_aca_trap 0
scoreboard players set @a ca.br_drk_trap 0
scoreboard players set @a ca.br_cri_trap 0
scoreboard players set @a ca.br_war_trap 0

scoreboard players set @a helper_potion 0
scoreboard players set @a ca.use_splashpot 0
scoreboard players set @a ca.use_lingerpot 0
scoreboard players set @a ca.use_pearl 0
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

scoreboard players remove @a[scores={ca.rpt_cdl=2..}] ca.rpt_cdl 1

scoreboard players set @a ca.sneak 0

scoreboard players set @a ca.dmg_resist_sw 0
scoreboard players set @a ca.sw_fall 0

scoreboard players set @a ca.rally_amt 0
scoreboard players set @a ca.rally_rst 0

advancement revoke @a only cartographer_custom_enchantments:second_wind_projectile
advancement revoke @a only cartographer_custom_enchantments:second_wind_explosion