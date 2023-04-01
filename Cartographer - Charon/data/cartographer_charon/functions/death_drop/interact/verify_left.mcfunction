execute store result score $pt_v_1 ca.uuid_interact run data get entity @s attack.player[0]
execute store result score $pt_v_2 ca.uuid_interact run data get entity @s attack.player[1]
execute store result score $pt_v_3 ca.uuid_interact run data get entity @s attack.player[2]
execute store result score $pt_v_4 ca.uuid_interact run data get entity @s attack.player[3]

execute if score $pt_1 ca.uuid_interact = $pt_v_1 ca.uuid_interact if score $pt_2 ca.uuid_interact = $pt_v_2 ca.uuid_interact if score $pt_3 ca.uuid_interact = $pt_v_3 ca.uuid_interact if score $pt_4 ca.uuid_interact = $pt_v_4 ca.uuid_interact run function cartographer_charon:death_drop/interact/do_left