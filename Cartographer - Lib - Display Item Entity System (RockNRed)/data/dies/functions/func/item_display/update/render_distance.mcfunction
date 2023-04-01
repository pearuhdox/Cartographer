
execute if score $target_render_distance dies.master matches 8 run data merge entity @s {view_range:0.125f}
execute if score $target_render_distance dies.master matches 16 run data merge entity @s {view_range:0.25f}
execute if score $target_render_distance dies.master matches 32 run data merge entity @s {view_range:0.5f}
execute if score $target_render_distance dies.master matches 64 run data merge entity @s {view_range:1f}
execute if score $target_render_distance dies.master matches 128 run data merge entity @s {view_range:2f}
