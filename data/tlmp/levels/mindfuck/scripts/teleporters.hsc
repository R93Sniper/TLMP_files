(global cutscene_flag return_flag red_teleport_v_flag)
(global boolean return_bool false)

;; GUH!
(global short var_modulo 0)
(script static short (modulo (short a) (short b))
	(set var_modulo (/ a b))
(- a (* var_modulo b))
)

;; only works on hogs, ghost, scorpion, banshee
(script static boolean (vehicle_is_empty (vehicle VEHICLE))
	(set return_bool true)
	(if (vehicle_test_seat_list VEHICLE "W-driver" var_players) (set return_bool false))
	(if (vehicle_test_seat_list VEHICLE "W-passenger" var_players) (set return_bool false))
	(if (vehicle_test_seat_list VEHICLE "W-gunner" var_players) (set return_bool false))
	(if (vehicle_test_seat_list VEHICLE "scorpion-driver" var_players) (set return_bool false))
	(if (vehicle_test_seat_list VEHICLE "scorpionRF" var_players) (set return_bool false))
	(if (vehicle_test_seat_list VEHICLE "scorpionLF" var_players) (set return_bool false))
	(if (vehicle_test_seat_list VEHICLE "scorpionRB" var_players) (set return_bool false))
	(if (vehicle_test_seat_list VEHICLE "scorpionLB" var_players) (set return_bool false))
	(if (vehicle_test_seat_list VEHICLE "G-driver" var_players) (set return_bool false))
	(if (vehicle_test_seat_list VEHICLE "B-driver" var_players) (set return_bool false))
	return_bool
)

(global short var_flag_index 0) ;; temp value
(script static cutscene_flag (get_group_flag_red (short INDEX))
	(set var_flag_index (modulo INDEX 6))
	(if (= var_flag_index 0) (set return_flag red_teleport_p_0_flag))
	(if (= var_flag_index 1) (set return_flag red_teleport_p_1_flag))
	(if (= var_flag_index 2) (set return_flag red_teleport_p_2_flag))
	(if (= var_flag_index 3) (set return_flag red_teleport_p_3_flag))
	(if (= var_flag_index 4) (set return_flag red_teleport_p_4_flag))
	(if (= var_flag_index 5) (set return_flag red_teleport_p_5_flag))
	return_flag
)

(script static cutscene_flag (get_group_flag_blue (short INDEX))
	(set var_flag_index (modulo INDEX 6))
	(if (= var_flag_index 0) (set return_flag blue_teleport_p_0_flag))
	(if (= var_flag_index 1) (set return_flag blue_teleport_p_1_flag))
	(if (= var_flag_index 2) (set return_flag blue_teleport_p_2_flag))
	(if (= var_flag_index 3) (set return_flag blue_teleport_p_3_flag))
	(if (= var_flag_index 4) (set return_flag blue_teleport_p_4_flag))
	(if (= var_flag_index 5) (set return_flag blue_teleport_p_5_flag))
	return_flag
)

(script static void (vehicle_teleport (vehicle VEHICLE) (trigger_volume SOURCE) (cutscene_flag DESTINATION))
	(if (game_is_authoritative)
		(if (and (volume_test_object SOURCE VEHICLE) (vehicle_is_empty VEHICLE)) (object_teleport VEHICLE DESTINATION))
	)
)

(script static void (player_teleport (unit PLAYER) (trigger_volume SOURCE) (cutscene_flag DESTINATION))
	(if (volume_test_object SOURCE PLAYER) (begin
		(object_teleport PLAYER DESTINATION)
		(damage_object "tlmp\levels\mindfuck\effects\teleport" PLAYER)
	))
)

(script static void (vehicle_teleports (vehicle VEHICLE))
	(vehicle_teleport VEHICLE red_teleport_entrance red_teleport_v_flag)
	(vehicle_teleport VEHICLE blue_teleport_entrance blue_teleport_v_flag)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; main
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global short i 0)
(global unit update_player none)
(global object_list var_players (player0))
(script continuous vehicle_update
	;; memory saves
	(set var_players (players))

	;; loop value
	(set i (bitwise_and (+ i 1) 15))

	(set update_player (unit (list_get var_players i)))

	;; Player Teleport FROM Vehicle Teleporters
	(player_teleport update_player red_teleport_entrance (get_group_flag_red i))
	(player_teleport update_player blue_teleport_entrance (get_group_flag_blue i))

	;; Vehicle Teleporters
	(vehicle_teleports vehicle_1)
	(vehicle_teleports vehicle_2)
	(vehicle_teleports vehicle_3)
	(vehicle_teleports vehicle_4)
	(vehicle_teleports vehicle_5)
	(vehicle_teleports vehicle_6)
	(vehicle_teleports vehicle_7)
	(vehicle_teleports vehicle_8)
	(vehicle_teleports vehicle_9)
	(vehicle_teleports vehicle_10)
	(vehicle_teleports vehicle_11)
	(vehicle_teleports vehicle_12)
	(vehicle_teleports vehicle_13)
	(vehicle_teleports vehicle_14)
	(vehicle_teleports vehicle_15)
	(vehicle_teleports vehicle_16)
	(vehicle_teleports vehicle_17)
	(vehicle_teleports vehicle_18)
	(vehicle_teleports vehicle_19)
	(vehicle_teleports vehicle_20)
	(vehicle_teleports vehicle_21)
)