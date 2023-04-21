scoreboard players operation $reduce catt.proj_prot = $100 catt.var
scoreboard players operation $reduce catt.proj_prot -= @s catt.proj_prot


scoreboard players operation @s bbl.damage_queue *= $reduce catt.proj_prot
scoreboard players operation @s bbl.damage_queue /= $100 catt.var