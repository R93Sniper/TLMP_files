(global boolean return_bool false)
(global cutscene_flag return_flag red_airlock_00_p_00_flag)

;; GUH!
(global short var_modulo 0)
(script static short (modulo (short a) (short b))
	(set var_modulo (/ a b))
(- a (* var_modulo b))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; spawn vehicles
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(script startup vehicle_spawn
	(object_create pelican0)
	(object_create longsword0)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; vehicle teleport flag group getter functions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global short var_flag_index 0)
(script static cutscene_flag (get_group_flag_red_airlock_a (short INDEX))
	(set var_flag_index (modulo INDEX 4))
	(if (= var_flag_index 0) (set return_flag red_airlock_00_p_00_flag))
	(if (= var_flag_index 1) (set return_flag red_airlock_00_p_01_flag))
	(if (= var_flag_index 2) (set return_flag red_airlock_00_p_02_flag))
	(if (= var_flag_index 3) (set return_flag red_airlock_00_p_03_flag))
	return_flag
)

;; only works on hogs, scorpian, kestrel...
(script static boolean (vehicle_is_empty (vehicle VEHICLE))
	(set return_bool true)
	(if (vehicle_test_seat_list VEHICLE "W-driver" (players)) (set return_bool false))
	(if (vehicle_test_seat_list VEHICLE "W-passenger" (players)) (set return_bool false))
	(if (vehicle_test_seat_list VEHICLE "W-gunner" (players)) (set return_bool false))
	(if (vehicle_test_seat_list VEHICLE "scorpion-driver" (players)) (set return_bool false))
	(if (vehicle_test_seat_list VEHICLE "scorpionRF" (players)) (set return_bool false))
	(if (vehicle_test_seat_list VEHICLE "scorpionLF" (players)) (set return_bool false))
	(if (vehicle_test_seat_list VEHICLE "scorpionRB" (players)) (set return_bool false))
	(if (vehicle_test_seat_list VEHICLE "scorpionLB" (players)) (set return_bool false))
	(if (vehicle_test_seat_list VEHICLE "G-driver" (players)) (set return_bool false))
	return_bool
)


(script static void (vehicle_teleport (vehicle VEHICLE) (trigger_volume SOURCE) (cutscene_flag DESTINATION))
	(if (game_is_authoritative)
		(if (and (volume_test_object SOURCE VEHICLE) (vehicle_is_empty VEHICLE)) (object_teleport VEHICLE DESTINATION))
	)
)

(script static void (player_teleport (unit PLAYER) (trigger_volume SOURCE) (cutscene_flag DESTINATION))
	(if (volume_test_object SOURCE PLAYER) (begin
		(object_teleport PLAYER DESTINATION)
		(damage_object "huge\levels\cairo\effects\teleport" PLAYER) ;; authoritative or?
	))
)

(global short i 0)
(global unit update_player none)
(script continuous vehicle_update
	(set i (bitwise_and (+ i 1) 15))

	(set update_player (unit (list_get (players) i)))

	(player_teleport update_player red_airlock_00 (get_group_flag_red_airlock_a i))

	(vehicle_teleport hog0 red_airlock_00 red_airlock_00_v_flag)
	(vehicle_teleport hog1 red_airlock_00 red_airlock_00_v_flag)
	(vehicle_teleport hog2 red_airlock_00 red_airlock_00_v_flag)
	(vehicle_teleport tank0 red_airlock_00 red_airlock_00_v_flag)

	(vehicle_kickout update_player hog0)
	(vehicle_kickout update_player hog1)
	(vehicle_kickout update_player hog2)
	(vehicle_kickout update_player tank0)

	;; kickout vehicle timeout
	(if (and (!= var_kickout_vehicle none) (> var_kickout_timer 0))
		(set var_kickout_timer (- var_kickout_timer 1))
		(begin
			(unit_set_enterable_by_player var_kickout_vehicle true)
			(set var_kickout_vehicle none)
		)
	)
)

(global vehicle var_kickout_vehicle none)
(global short var_kickout_timer 0)
(script static void (vehicle_kickout (unit PLAYER) (vehicle VEHICLE))
	(if (game_is_authoritative)
		(if (unit_has_weapon PLAYER "weapons\flag\flag") (begin
			(vehicle_kickout_check PLAYER VEHICLE "W-driver")
			(vehicle_kickout_check PLAYER VEHICLE "scorpion-driver")
		))
	)
)

(script static void (vehicle_kickout_check (unit PLAYER) (vehicle VEHICLE) (string SEAT))
	(if (vehicle_test_seat VEHICLE SEAT PLAYER) (begin
		(vehicle_unload VEHICLE SEAT)
		(damage_object "huge\levels\cairo\effects\kickout" PLAYER)

		(unit_set_enterable_by_player var_kickout_vehicle true)
		(set var_kickout_vehicle VEHICLE)
		(set var_kickout_timer 90)
		(unit_set_enterable_by_player var_kickout_vehicle false)
	))
)