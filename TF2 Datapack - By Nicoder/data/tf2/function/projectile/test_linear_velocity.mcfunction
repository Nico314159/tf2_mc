scoreboard players set @s tf2.mot_x 0
scoreboard players set @s tf2.mot_y 0
scoreboard players set @s tf2.mot_z 1000
tellraw @a ["",{"text":"Test 1: [x, y, z] = ["},{"score":{"name":"@s","objective":"tf2.mot_x"},"type":"score"},{"text":", "},{"score":{"name":"@s","objective":"tf2.mot_y"},"type":"score"},{"text":", "},{"score":{"name":"@s","objective":"tf2.mot_z"},"type":"score"},{"text":"]"}]
function tf2:projectile/linear_velocity_to_quaternion
tellraw @a ["",{"text":"Test 1: [i, j, k, r] = ["},{"score":{"name":"$input_quaternion_i","objective":"tf2.var"},"type":"score"},{"text":", "},{"score":{"name":"$input_quaternion_j","objective":"tf2.var"},"type":"score"},{"text":", "},{"score":{"name":"$input_quaternion_k","objective":"tf2.var"},"type":"score"},{"text":", "},{"score":{"name":"$input_quaternion_r","objective":"tf2.var"},"type":"score"},{"text":"]"}]
tellraw @a "Test 1: expected [0, 0, 0, 1000]\n"
scoreboard players set @s tf2.mot_x 0
scoreboard players set @s tf2.mot_y 1000
scoreboard players set @s tf2.mot_z 1000
tellraw @a ["",{"text":"Test 2: [x, y, z] = ["},{"score":{"name":"@s","objective":"tf2.mot_x"},"type":"score"},{"text":", "},{"score":{"name":"@s","objective":"tf2.mot_y"},"type":"score"},{"text":", "},{"score":{"name":"@s","objective":"tf2.mot_z"},"type":"score"},{"text":"]"}]
function tf2:projectile/linear_velocity_to_quaternion
tellraw @a ["",{"text":"Test 2: [i, j, k, r] = ["},{"score":{"name":"$input_quaternion_i","objective":"tf2.var"},"type":"score"},{"text":", "},{"score":{"name":"$input_quaternion_j","objective":"tf2.var"},"type":"score"},{"text":", "},{"score":{"name":"$input_quaternion_k","objective":"tf2.var"},"type":"score"},{"text":", "},{"score":{"name":"$input_quaternion_r","objective":"tf2.var"},"type":"score"},{"text":"]"}]
tellraw @a "Test 2: expected [382, 0, 0, 923]\n"
scoreboard players set @s tf2.mot_x 814
scoreboard players set @s tf2.mot_y 518
scoreboard players set @s tf2.mot_z 259
tellraw @a ["",{"text":"Test 3: [x, y, z] = ["},{"score":{"name":"@s","objective":"tf2.mot_x"},"type":"score"},{"text":", "},{"score":{"name":"@s","objective":"tf2.mot_y"},"type":"score"},{"text":", "},{"score":{"name":"@s","objective":"tf2.mot_z"},"type":"score"},{"text":"]"}]
function tf2:projectile/linear_velocity_to_quaternion
tellraw @a ["",{"text":"Test 3: [i, j, k, r] = ["},{"score":{"name":"$input_quaternion_i","objective":"tf2.var"},"type":"score"},{"text":", "},{"score":{"name":"$input_quaternion_j","objective":"tf2.var"},"type":"score"},{"text":", "},{"score":{"name":"$input_quaternion_k","objective":"tf2.var"},"type":"score"},{"text":", "},{"score":{"name":"$input_quaternion_r","objective":"tf2.var"},"type":"score"},{"text":"]"}]
tellraw @a "Test 3: expected [-192, 577, 192, 769]\n"