(global short i 0)
(script continuous kill_update
	;; loop value
	(set i (bitwise_and (+ i 1) 15))

	(kill_volume (unit (list_get (players) i)) death_plane)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; kill volume
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(script static void (kill_volume (unit PLAYER) (trigger_volume VOLUME))
	(if (volume_test_object VOLUME PLAYER) (unit_kill PLAYER))
)