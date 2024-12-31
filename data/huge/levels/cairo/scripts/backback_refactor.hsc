;; fake array. contains all the weapon tags that can be backpack'd and gives them a short id
(global object_definition return_object_definition none)
(script static object_definition (get_weapon (short INDEX))
	(if (= INDEX 0) (set return_object_definition "huge\weapons\flag\flag"))
	(if (= INDEX 1) (set return_object_definition "huge\weapons\ball\ball"))
	(if (= INDEX 2) (set return_object_definition "huge\weapons\assault rifle\assault rifle"))
	(if (= INDEX 3) (set return_object_definition "huge\weapons\pistol\pistol"))
	(if (= INDEX 4) (set return_object_definition "huge\weapons\rocket launcher\rocket launcher"))
	(if (= INDEX 5) (set return_object_definition "huge\weapons\shotgun\shotgun"))
	(if (= INDEX 6) (set return_object_definition "huge\weapons\sniper rifle\sniper rifle"))
	(if (= INDEX 7) (set return_object_definition "huge\weapons\nuke\nuke"))
	return_object_definition
)

;; fake array. contains strings for permutations. the short value (i) must correspond to the above array.
;; EX: 2 is the flamethrower tag above, and here 2 is the string name for the permutation of the flamethrower
(global string return_string none)
(script static string (get_permutation (short INDEX))
	(if (= INDEX 0) (set return_string "__nothing"))
	(if (= INDEX 1) (set return_string "__nothing"))
	(if (= INDEX 2) (set return_string "assault_rifle"))
	(if (= INDEX 3) (set return_string "pistol"))
	(if (= INDEX 4) (set return_string "rocket_launcher"))
	(if (= INDEX 5) (set return_string "shotgun"))
	(if (= INDEX 6) (set return_string "sniper_rifle"))
	(if (= INDEX 7) (set return_string "__nothing"))
	return_string
)

;; fake array. getter+setter. contains references to the player units.
;; this is needed to alter the permutations of players after death. the (players) object_list returns "none" for dead players so we can't use that
(global unit ref_player0 none) (global unit ref_player1 none) (global unit ref_player2 none) (global unit ref_player3 none)
(global unit ref_player4 none) (global unit ref_player5 none) (global unit ref_player6 none) (global unit ref_player7 none)
(global unit ref_player8 none) (global unit ref_player9 none) (global unit ref_player10 none) (global unit ref_player11 none)
(global unit ref_player12 none) (global unit ref_player13 none) (global unit ref_player14 none) (global unit ref_player15 none)
(global unit return_unit none)
(script static unit (get_player_ref (short INDEX))
	(if (= INDEX 0) (set return_unit ref_player0))
	(if (= INDEX 1) (set return_unit ref_player1))
	(if (= INDEX 2) (set return_unit ref_player2))
	(if (= INDEX 3) (set return_unit ref_player3))
	(if (= INDEX 4) (set return_unit ref_player4))
	(if (= INDEX 5) (set return_unit ref_player5))
	(if (= INDEX 6) (set return_unit ref_player6))
	(if (= INDEX 7) (set return_unit ref_player7))
	(if (= INDEX 8) (set return_unit ref_player8))
	(if (= INDEX 9) (set return_unit ref_player9))
	(if (= INDEX 10) (set return_unit ref_player10))
	(if (= INDEX 11) (set return_unit ref_player11))
	(if (= INDEX 12) (set return_unit ref_player12))
	(if (= INDEX 13) (set return_unit ref_player13))
	(if (= INDEX 14) (set return_unit ref_player14))
	(if (= INDEX 15) (set return_unit ref_player15))
	return_unit
)

(script static void (set_player_ref (short INDEX) (unit PLAYER))
	(if (= INDEX 0) (set ref_player0 PLAYER))
	(if (= INDEX 1) (set ref_player1 PLAYER))
	(if (= INDEX 2) (set ref_player2 PLAYER))
	(if (= INDEX 3) (set ref_player3 PLAYER))
	(if (= INDEX 4) (set ref_player4 PLAYER))
	(if (= INDEX 5) (set ref_player5 PLAYER))
	(if (= INDEX 6) (set ref_player6 PLAYER))
	(if (= INDEX 7) (set ref_player7 PLAYER))
	(if (= INDEX 8) (set ref_player8 PLAYER))
	(if (= INDEX 9) (set ref_player9 PLAYER))
	(if (= INDEX 10) (set ref_player10 PLAYER))
	(if (= INDEX 11) (set ref_player11 PLAYER))
	(if (= INDEX 12) (set ref_player12 PLAYER))
	(if (= INDEX 13) (set ref_player13 PLAYER))
	(if (= INDEX 14) (set ref_player14 PLAYER))
	(if (= INDEX 15) (set ref_player15 PLAYER))
)

;; (global object_list var_players (player0)) ;; cairo already has a variable by this name but its safe to share it so we are fine
(script static void backpack_main
	;; memory saves
	;; (set var_players (players)) already done by main...

	;; update all 16 players
	(backpack_update 0)
	(backpack_update 1)
	(backpack_update 2)
	(backpack_update 3)
	(backpack_update 4)
	(backpack_update 5)
	(backpack_update 6)
	(backpack_update 7)
	(backpack_update 8)
	(backpack_update 9)
	(backpack_update 10)
	(backpack_update 11)
	(backpack_update 12)
	(backpack_update 13)
	(backpack_update 14)
	(backpack_update 15)
)

 (global unit update_player_backpack none)
(global boolean has_weapon_update false)
(script static void (backpack_update (short INDEX))
	;; temp vars
	(set update_player_backpack (unit (list_get var_players INDEX)))
	(set has_weapon_update false)

	;; Check if a player reference is deaded
	(if (!= (get_player_ref INDEX) none) (begin                                             ;; exists?
		(if (= (unit_get_health (get_player_ref INDEX)) 0) (begin                       ;; health is 0 - aka - being deaded
			(object_set_permutation (get_player_ref INDEX) backpack __nothing)
			(set_player_ref INDEX none)
		))
	))

	;; if player exists
	(if (!= update_player_backpack none) (begin
		(set_player_ref INDEX update_player_backpack)
	
		;; update all 12 weapons
		(backpack_update_weapon update_player_backpack 0)
		(backpack_update_weapon update_player_backpack 1)
		(backpack_update_weapon update_player_backpack 2)
		(backpack_update_weapon update_player_backpack 3)
		(backpack_update_weapon update_player_backpack 4)
		(backpack_update_weapon update_player_backpack 5)
		(backpack_update_weapon update_player_backpack 6)
		(backpack_update_weapon update_player_backpack 7)
		(backpack_update_weapon update_player_backpack 8)
		(backpack_update_weapon update_player_backpack 9)
		(backpack_update_weapon update_player_backpack 10)
		(backpack_update_weapon update_player_backpack 11)
		(backpack_update_weapon update_player_backpack 12)

		;; if the script can't figure out what weapon you have it just defaults to nothing on your back
		(if (not has_weapon_update)
			(object_set_permutation update_player_backpack backpack __nothing)
		)
	))
)

;; checks if a player has a weapon but its not equipped, if it finds that it sets the backpack weapon to match that. also flags that we found the backpack weapon for above script
(script static void (backpack_update_weapon (unit PLAYER) (short INDEX))
	(if (and (unit_has_weapon PLAYER (get_weapon INDEX)) (not (unit_has_weapon_readied PLAYER (get_weapon INDEX)))) (begin
		(object_set_permutation PLAYER backpack (get_permutation INDEX))
		(set has_weapon_update true)
	))
)