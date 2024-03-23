data modify storage cartographer_mimics:colossus data set value {}
$data modify storage cartographer_mimics:colossus data set from storage cartographer_mimics:colossus registry[{x:$(x),y:$(y),z:$(z)}]

say test

execute if data storage cartographer_mimics:colossus data{type:"colossus"} run function cartographer_mimics:break_spawner/spawn_colossus with storage cartographer_mimics:colossus data

execute if data storage cartographer_mimics:colossus data{type:"falling"} run function cartographer_mimics:trap_spawner/fall_spawner/do_drop