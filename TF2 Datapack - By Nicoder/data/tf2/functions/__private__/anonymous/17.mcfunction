function retina:traverse/setup
execute if data storage retina:output {Target: "ENTITY"} run tag @e[type=#tf2:player_like,tag=tf2.check,limit=1] add tf2.damage