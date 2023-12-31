scoreboard players operation $add_amount tf2.var *= @a[tag=tf2.recipient] tf2.max_health
scoreboard players operation $add_amount tf2.var /= 100 tf2.const
scoreboard players operation @a[tag=tf2.recipient] tf2.health += $add_amount tf2.var
scoreboard players operation @a[tag=tf2.recipient] tf2.health < @a[tag=tf2.recipient] tf2.max_health