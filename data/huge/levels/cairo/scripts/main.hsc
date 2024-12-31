(global boolean return_bool false)
(global vehicle return_vehicle none)
(global cutscene_flag return_flag airlock_r0_v_flag)

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
	(if (game_is_authoritative) (begin
		;; Red Hangar Vehicles
		(object_create red_longsword_0)
		(object_create red_pelican_0)
		(object_create red_pelican_1)
		(object_create red_pelican_2)
		(object_create red_kestrel_0)
		(object_create red_kestrel_1)
		(object_create red_scorpian_0)
		(object_create red_hog_0)
		(object_create red_hog_1)
		(object_create red_hog_2)
		(object_create red_hog_3)
		(object_create red_hog_4)
		(object_create red_hog_5)
		(object_create red_hog_6)
		(object_create red_hog_7)

		;; Red Neutral Vehicles
		(object_create neutral_red_kestrel_0)
		(object_create neutral_red_kestrel_1)
		(object_create neutral_red_kestrel_2)
		(object_create neutral_red_kestrel_3)
		(object_create neutral_red_kestrel_4)
		(object_create neutral_red_scorpian_0)
		(object_create neutral_red_hog_0)
		(object_create neutral_red_hog_1)
		(object_create neutral_red_hog_3)
		(object_create neutral_red_hog_4)

		;; Blue Hangar Vehicles
		(object_create blue_longsword_0)
		(object_create blue_pelican_0)
		(object_create blue_pelican_1)
		(object_create blue_pelican_1)
		(object_create blue_kestrel_0)
		(object_create blue_kestrel_1)
		(object_create blue_scorpian_0)
		(object_create blue_hog_0)
		(object_create blue_hog_1)
		(object_create blue_hog_2)
		(object_create blue_hog_3)
		(object_create blue_hog_4)
		(object_create blue_hog_5)
		(object_create blue_hog_6)
		(object_create blue_hog_7)

		;; Blue Neutral Vehicles
		(object_create neutral_blue_kestrel_0)
		(object_create neutral_blue_kestrel_1)
		(object_create neutral_blue_kestrel_2)
		(object_create neutral_blue_kestrel_3)
		(object_create neutral_blue_kestrel_4)
		(object_create neutral_blue_scorpian_0)
		(object_create neutral_blue_hog_0)
		(object_create neutral_blue_hog_1)
		(object_create neutral_blue_hog_3)
		(object_create neutral_blue_hog_4)

		;; Secret Room
		(sleep_until (volume_test_object secret_room (player0)) 15)
		(object_create neutral_tachikoma_0)
		(object_create neutral_tachikoma_1)
		(object_create neutral_tachikoma_2)
		(object_create neutral_tachikoma_3)
		(object_create neutral_tachikoma_4)
		(object_create neutral_tachikoma_5)
		(object_create neutral_tachikoma_6)
		(object_create neutral_tachikoma_7)
	))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; pelican cargo state and vehicle ref storage
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global vehicle var_cargo_object_0 none) (global vehicle var_cargo_object_1 none) (global vehicle var_cargo_object_2 none) (global vehicle var_cargo_object_3 none) (global vehicle var_cargo_object_4 none) (global vehicle var_cargo_object_5 none)
(script static vehicle (get_cargo (vehicle PELICAN))
	(if (= PELICAN red_pelican_0) (set return_vehicle var_cargo_object_0))
	(if (= PELICAN red_pelican_1) (set return_vehicle var_cargo_object_1))
	(if (= PELICAN blue_pelican_0) (set return_vehicle var_cargo_object_2))
	(if (= PELICAN blue_pelican_1) (set return_vehicle var_cargo_object_3))
	(if (= PELICAN red_pelican_2) (set return_vehicle var_cargo_object_4))
	(if (= PELICAN blue_pelican_2) (set return_vehicle var_cargo_object_5))
	return_vehicle
)

(script static void (set_cargo (vehicle PELICAN) (vehicle VEHICLE))
	(if (= PELICAN red_pelican_0) (set var_cargo_object_0 VEHICLE))
	(if (= PELICAN red_pelican_1) (set var_cargo_object_1 VEHICLE))
	(if (= PELICAN blue_pelican_0) (set var_cargo_object_2 VEHICLE))
	(if (= PELICAN blue_pelican_1) (set var_cargo_object_3 VEHICLE))
	(if (= PELICAN red_pelican_2) (set var_cargo_object_4 VEHICLE))
	(if (= PELICAN blue_pelican_2) (set var_cargo_object_5 VEHICLE))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; vehicle teleport flag group getter functions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global short var_flag_index 0)
(script static cutscene_flag (get_group_flag_airlock_r0 (short INDEX))
	(set var_flag_index (modulo INDEX 6))
	(if (= var_flag_index 0) (set return_flag airlock_r0_p_00_flag))
	(if (= var_flag_index 1) (set return_flag airlock_r0_p_01_flag))
	(if (= var_flag_index 2) (set return_flag airlock_r0_p_02_flag))
	(if (= var_flag_index 3) (set return_flag airlock_r0_p_03_flag))
	(if (= var_flag_index 4) (set return_flag airlock_r0_p_04_flag))
	(if (= var_flag_index 5) (set return_flag airlock_r0_p_05_flag))
	return_flag
)

(script static cutscene_flag (get_group_flag_airlock_r1 (short INDEX))
	(set var_flag_index (modulo INDEX 6))
	(if (= var_flag_index 0) (set return_flag airlock_r1_p_00_flag))
	(if (= var_flag_index 1) (set return_flag airlock_r1_p_01_flag))
	(if (= var_flag_index 2) (set return_flag airlock_r1_p_02_flag))
	(if (= var_flag_index 3) (set return_flag airlock_r1_p_03_flag))
	(if (= var_flag_index 4) (set return_flag airlock_r1_p_04_flag))
	(if (= var_flag_index 5) (set return_flag airlock_r1_p_05_flag))
	return_flag
)

(script static cutscene_flag (get_group_flag_airlock_r3 (short INDEX))
	(set var_flag_index (modulo INDEX 6))
	(if (= var_flag_index 0) (set return_flag airlock_r3_p_00_flag))
	(if (= var_flag_index 1) (set return_flag airlock_r3_p_01_flag))
	(if (= var_flag_index 2) (set return_flag airlock_r3_p_02_flag))
	(if (= var_flag_index 3) (set return_flag airlock_r3_p_03_flag))
	(if (= var_flag_index 4) (set return_flag airlock_r3_p_04_flag))
	(if (= var_flag_index 5) (set return_flag airlock_r3_p_05_flag))
	return_flag
)

(script static cutscene_flag (get_group_flag_airlock_b0 (short INDEX))
	(set var_flag_index (modulo INDEX 6))
	(if (= var_flag_index 0) (set return_flag airlock_b0_p_00_flag))
	(if (= var_flag_index 1) (set return_flag airlock_b0_p_01_flag))
	(if (= var_flag_index 2) (set return_flag airlock_b0_p_02_flag))
	(if (= var_flag_index 3) (set return_flag airlock_b0_p_03_flag))
	(if (= var_flag_index 4) (set return_flag airlock_b0_p_04_flag))
	(if (= var_flag_index 5) (set return_flag airlock_b0_p_05_flag))
	return_flag
)

(script static cutscene_flag (get_group_flag_airlock_b1 (short INDEX))
	(set var_flag_index (modulo INDEX 6))
	(if (= var_flag_index 0) (set return_flag airlock_b1_p_00_flag))
	(if (= var_flag_index 1) (set return_flag airlock_b1_p_01_flag))
	(if (= var_flag_index 2) (set return_flag airlock_b1_p_02_flag))
	(if (= var_flag_index 3) (set return_flag airlock_b1_p_03_flag))
	(if (= var_flag_index 4) (set return_flag airlock_b1_p_04_flag))
	(if (= var_flag_index 5) (set return_flag airlock_b1_p_05_flag))
	return_flag
)

(script static cutscene_flag (get_group_flag_airlock_b3 (short INDEX))
	(set var_flag_index (modulo INDEX 6))
	(if (= var_flag_index 0) (set return_flag airlock_b3_p_00_flag))
	(if (= var_flag_index 1) (set return_flag airlock_b3_p_01_flag))
	(if (= var_flag_index 2) (set return_flag airlock_b3_p_02_flag))
	(if (= var_flag_index 3) (set return_flag airlock_b3_p_03_flag))
	(if (= var_flag_index 4) (set return_flag airlock_b3_p_04_flag))
	(if (= var_flag_index 5) (set return_flag airlock_b3_p_05_flag))
	return_flag
)

;; only works on hogs, scorpian, kestrel...
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

(script static void (vehicle_teleports (vehicle VEHICLE))
	(vehicle_teleport VEHICLE airlock_r0 airlock_r0_v_flag)
	(vehicle_teleport VEHICLE airlock_r1 airlock_r0_v_flag)
	(vehicle_teleport VEHICLE airlock_r2 airlock_r1_v_flag)
	(vehicle_teleport VEHICLE airlock_r3 airlock_r3_v_flag)
	(vehicle_teleport VEHICLE airlock_b0 airlock_b0_v_flag)
	(vehicle_teleport VEHICLE airlock_b1 airlock_b0_v_flag)
	(vehicle_teleport VEHICLE airlock_b2 airlock_b1_v_flag)
	(vehicle_teleport VEHICLE airlock_b3 airlock_b3_v_flag)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; vehicle respawn update
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(script static void (vehicle_respawn (vehicle VEHICLE) (cutscene_flag FLAG))
	(if (volume_test_object vehicle_respawn_zone VEHICLE) (object_teleport VEHICLE FLAG))
)

;; if a vehicle falls to the map floor we move it to the respawn box so its not floating in space
(script static void (vehicle_voided (vehicle VEHICLE))
	(if (and (volume_test_object death_zone VEHICLE) (vehicle_is_empty VEHICLE)) (object_teleport VEHICLE void_flag))
)

(global short i 0)
(global unit update_player none)
(global object_list var_players dummy)
(global object_list var_dummy dummy)
(script continuous vehicle_update
	;; memory saves
	(set var_players (players))
	(set var_dummy dummy)

	;; loop value
	(set i (bitwise_and (+ i 1) 15))

	(set update_player (unit (list_get var_players i)))

	;; Kill volume & vehicle voided teleport
	(kill_volume update_player death_zone)
	(vehicle_voided red_kestrel_0)
	(vehicle_voided red_kestrel_1)	

	;; Vehicle respawns
	(vehicle_respawn red_longsword_0 red_longsword_0_flag)
	(vehicle_respawn red_pelican_0 red_pelican_0_flag)
	(vehicle_respawn red_pelican_1 red_pelican_1_flag)
	(vehicle_respawn red_pelican_2 red_pelican_2_flag)
	(vehicle_respawn blue_longsword_0 blue_longsword_0_flag)
	(vehicle_respawn blue_pelican_0 blue_pelican_0_flag)
	(vehicle_respawn blue_pelican_1 blue_pelican_1_flag)
	(vehicle_respawn blue_pelican_2 blue_pelican_2_flag)

	;; Player Teleport FROM Vehicle Teleporters
	(player_teleport update_player airlock_r0 (get_group_flag_airlock_r0 i))
	(player_teleport update_player airlock_r1 (get_group_flag_airlock_r0 i))
	(player_teleport update_player airlock_r2 (get_group_flag_airlock_r1 i))
	(player_teleport update_player airlock_r3 (get_group_flag_airlock_r3 i))
	(player_teleport update_player airlock_b0 (get_group_flag_airlock_b0 i))
	(player_teleport update_player airlock_b1 (get_group_flag_airlock_b0 i))
	(player_teleport update_player airlock_b2 (get_group_flag_airlock_b1 i))
	(player_teleport update_player airlock_b3 (get_group_flag_airlock_b3 i))

	;; Vehicle Teleporters
	(vehicle_teleports red_scorpian_0)
	(vehicle_teleports red_hog_0)
	(vehicle_teleports red_hog_1)
	(vehicle_teleports red_hog_2)
	(vehicle_teleports red_hog_3)
	(vehicle_teleports red_hog_4)
	(vehicle_teleports red_hog_5)
	(vehicle_teleports red_hog_6)
	(vehicle_teleports red_hog_7)
	(vehicle_teleports neutral_red_scorpian_0)
	(vehicle_teleports neutral_red_hog_0)
	(vehicle_teleports neutral_red_hog_1)
	(vehicle_teleports neutral_red_hog_2)
	(vehicle_teleports neutral_red_hog_3)
	(vehicle_teleports neutral_red_hog_4)
	(vehicle_teleports blue_scorpian_0)
	(vehicle_teleports blue_hog_0)
	(vehicle_teleports blue_hog_1)
	(vehicle_teleports blue_hog_2)
	(vehicle_teleports blue_hog_3)
	(vehicle_teleports blue_hog_4)
	(vehicle_teleports blue_hog_5)
	(vehicle_teleports blue_hog_6)
	(vehicle_teleports blue_hog_7)
	(vehicle_teleports neutral_blue_scorpian_0)
	(vehicle_teleports neutral_blue_hog_0)
	(vehicle_teleports neutral_blue_hog_1)
	(vehicle_teleports neutral_blue_hog_2)
	(vehicle_teleports neutral_blue_hog_3)
	(vehicle_teleports neutral_blue_hog_4)

	;; Vehicle Kickout
	(vehicle_kickout update_player red_longsword_0)
	(vehicle_kickout update_player red_pelican_0)
	(vehicle_kickout update_player red_pelican_1)
	(vehicle_kickout update_player red_pelican_2)
	(vehicle_kickout update_player red_kestrel_0)
	(vehicle_kickout update_player red_kestrel_1)
	(vehicle_kickout update_player red_scorpian_0)
	(vehicle_kickout update_player red_hog_0)
	(vehicle_kickout update_player red_hog_1)
	(vehicle_kickout update_player red_hog_2)
	(vehicle_kickout update_player red_hog_3)
	(vehicle_kickout update_player red_hog_4)
	(vehicle_kickout update_player red_hog_5)
	(vehicle_kickout update_player red_hog_6)
	(vehicle_kickout update_player red_hog_7)
	(vehicle_kickout update_player neutral_red_kestrel_0)
	(vehicle_kickout update_player neutral_red_kestrel_1)
	(vehicle_kickout update_player neutral_red_kestrel_2)
	(vehicle_kickout update_player neutral_red_kestrel_3)
	(vehicle_kickout update_player neutral_red_kestrel_4)
	(vehicle_kickout update_player neutral_red_scorpian_0)
	(vehicle_kickout update_player neutral_red_hog_0)
	(vehicle_kickout update_player neutral_red_hog_1)
	(vehicle_kickout update_player neutral_red_hog_3)
	(vehicle_kickout update_player neutral_red_hog_4)
	(vehicle_kickout update_player blue_longsword_0)
	(vehicle_kickout update_player blue_pelican_0)
	(vehicle_kickout update_player blue_pelican_1)
	(vehicle_kickout update_player blue_pelican_2)
	(vehicle_kickout update_player blue_kestrel_0)
	(vehicle_kickout update_player blue_kestrel_1)
	(vehicle_kickout update_player blue_scorpian_0)
	(vehicle_kickout update_player blue_hog_0)
	(vehicle_kickout update_player blue_hog_1)
	(vehicle_kickout update_player blue_hog_2)
	(vehicle_kickout update_player blue_hog_3)
	(vehicle_kickout update_player blue_hog_4)
	(vehicle_kickout update_player blue_hog_5)
	(vehicle_kickout update_player blue_hog_6)
	(vehicle_kickout update_player blue_hog_7)
	(vehicle_kickout update_player neutral_blue_kestrel_0)
	(vehicle_kickout update_player neutral_blue_kestrel_1)
	(vehicle_kickout update_player neutral_blue_kestrel_2)
	(vehicle_kickout update_player neutral_blue_kestrel_3)
	(vehicle_kickout update_player neutral_blue_kestrel_4)
	(vehicle_kickout update_player neutral_blue_scorpian_0)
	(vehicle_kickout update_player neutral_blue_hog_0)
	(vehicle_kickout update_player neutral_blue_hog_1)
	(vehicle_kickout update_player neutral_blue_hog_3)
	(vehicle_kickout update_player neutral_blue_hog_4)

	;; kickout vehicle timeout
	(if (and (!= var_kickout_vehicle none) (> var_kickout_timer 0))
		(set var_kickout_timer (- var_kickout_timer 1))
		(begin
			(unit_set_enterable_by_player var_kickout_vehicle true)
			(set var_kickout_vehicle none)
		)
	)

	;; Pelican cargo main
	(vehicle_cargo_update red_pelican_0)
	(vehicle_cargo_update red_pelican_1)
	(vehicle_cargo_update red_pelican_2)
	(vehicle_cargo_update blue_pelican_0)
	(vehicle_cargo_update blue_pelican_1)
	(vehicle_cargo_update blue_pelican_2)

	;; Backpack Weapons Update
	(backpack_main)
)

(global vehicle var_kickout_vehicle none)
(global short var_kickout_timer 0)
(script static void (vehicle_kickout (unit PLAYER) (vehicle VEHICLE))
	(if (game_is_authoritative)
		(if (unit_has_weapon PLAYER "weapons\flag\flag") (begin
			(vehicle_kickout_check PLAYER VEHICLE "W-driver")
			(vehicle_kickout_check PLAYER VEHICLE "scorpion-driver")
			(vehicle_kickout_check PLAYER VEHICLE "G-driver")
			(vehicle_kickout_check PLAYER VEHICLE "P-pilot")
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

(script static boolean (vehicle_cargo_measure (vehicle PELICAN) (vehicle VEHICLE))
	;;(objects_attach PELICAN "cargo" dummy none)
	;;(set return_bool (<= (objects_distance_to_object var_dummy VEHICLE) 2.5))
	;;(objects_detach PELICAN dummy)
	;;return_bool

	(<= (objects_distance_to_object PELICAN VEHICLE) 3)
)

(script static void (vehicle_cargo_pickup_check (vehicle PELICAN) (vehicle VEHICLE))
	(if (= (get_cargo PELICAN) none) (begin
		(if (and (vehicle_cargo_measure PELICAN VEHICLE) (vehicle_is_empty VEHICLE)) (begin
			(set_cargo PELICAN VEHICLE)
			(objects_attach PELICAN "cargo" VEHICLE none)
		))
	))
)

(script static void (vehicle_cargo_pickup_checks (vehicle PELICAN))
	(vehicle_cargo_pickup_check PELICAN red_scorpian_0)
	(vehicle_cargo_pickup_check PELICAN red_hog_0)
	(vehicle_cargo_pickup_check PELICAN red_hog_1)
	(vehicle_cargo_pickup_check PELICAN red_hog_2)
	(vehicle_cargo_pickup_check PELICAN red_hog_3)
	(vehicle_cargo_pickup_check PELICAN red_hog_4)
	(vehicle_cargo_pickup_check PELICAN red_hog_5)
	(vehicle_cargo_pickup_check PELICAN red_hog_6)
	(vehicle_cargo_pickup_check PELICAN red_hog_7)
	(vehicle_cargo_pickup_check PELICAN neutral_red_scorpian_0)
	(vehicle_cargo_pickup_check PELICAN neutral_red_hog_0)
	(vehicle_cargo_pickup_check PELICAN neutral_red_hog_1)
	(vehicle_cargo_pickup_check PELICAN neutral_red_hog_2)
	(vehicle_cargo_pickup_check PELICAN neutral_red_hog_3)
	(vehicle_cargo_pickup_check PELICAN neutral_red_hog_4)
	(vehicle_cargo_pickup_check PELICAN blue_scorpian_0)
	(vehicle_cargo_pickup_check PELICAN blue_hog_0)
	(vehicle_cargo_pickup_check PELICAN blue_hog_1)
	(vehicle_cargo_pickup_check PELICAN blue_hog_2)
	(vehicle_cargo_pickup_check PELICAN blue_hog_3)
	(vehicle_cargo_pickup_check PELICAN blue_hog_4)
	(vehicle_cargo_pickup_check PELICAN blue_hog_5)
	(vehicle_cargo_pickup_check PELICAN blue_hog_6)
	(vehicle_cargo_pickup_check PELICAN blue_hog_7)
	(vehicle_cargo_pickup_check PELICAN neutral_blue_scorpian_0)
	(vehicle_cargo_pickup_check PELICAN neutral_blue_hog_0)
	(vehicle_cargo_pickup_check PELICAN neutral_blue_hog_1)
	(vehicle_cargo_pickup_check PELICAN neutral_blue_hog_2)
	(vehicle_cargo_pickup_check PELICAN neutral_blue_hog_3)
	(vehicle_cargo_pickup_check PELICAN neutral_blue_hog_4)
)

(script static void (vehicle_cargo_drop (vehicle PELICAN))
	(objects_detach PELICAN (get_cargo PELICAN))
	(set_cargo PELICAN none)
)

(script static void (vehicle_cargo_update (vehicle PELICAN))
	(if (game_is_authoritative) (begin
		(if (unit_get_current_flashlight_state PELICAN) (begin
			(if (= (get_cargo PELICAN) none) (begin
				(vehicle_cargo_pickup_checks PELICAN)
			) (begin
				(vehicle_cargo_drop PELICAN)
			))
			(unit_set_desired_flashlight_state PELICAN false)
		))

		(if (not (= (get_cargo PELICAN) none)) (begin
			;;(if (= (modulo i 2) 0)
				(objects_attach PELICAN "cargo" (get_cargo PELICAN) none)
				(objects_detach PELICAN (get_cargo PELICAN))
			;;)
		))
		
		(if (and (not (= (get_cargo PELICAN) none)) (not (vehicle_test_seat_list PELICAN "P-pilot" var_players))) (begin
			(objects_detach PELICAN (get_cargo PELICAN))
			(set_cargo PELICAN none)
			(print "guh!")
		))
	))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; kill volume
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(script static void (kill_volume (unit PLAYER) (trigger_volume VOLUME))
	(if (volume_test_object VOLUME PLAYER) (unit_kill PLAYER))
)
