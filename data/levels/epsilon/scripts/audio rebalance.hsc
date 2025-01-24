;; BRO SPEAK UP I LITERALLY CANT HEAR YOU
(script startup audio_balance_fix
	(sleep 1)

	;; game sound effects
	(sound_class_set_gain "projectile_impact" 0.6 1)
	(sound_class_set_gain "projectile_detonation" 0.6 1)
	(sound_class_set_gain "weapon_fire" 0.6 1)
	(sound_class_set_gain "weapon_ready" 0.6 1)
	(sound_class_set_gain "weapon_reload" 0.6 1)
	(sound_class_set_gain "weapon_empty" 0.6 1)
	(sound_class_set_gain "weapon_charge" 0.6 1)
	(sound_class_set_gain "weapon_overheat" 0.6 1)
	(sound_class_set_gain "weapon_idle" 0.6 1)
	(sound_class_set_gain "object_impacts" 0.6 1)
	(sound_class_set_gain "particle_impacts" 0.6 1)
	(sound_class_set_gain "slow_particle_impacts" 0.6 1)
	(sound_class_set_gain "unit_footsteps" 0.6 1)
	(sound_class_set_gain "vehicle_collision" 0.6 1)
	(sound_class_set_gain "vehicle_engine" 0.6 1)
	(sound_class_set_gain "device_door" 0.6 1)
	(sound_class_set_gain "device_force_field" 0.6 1)
	(sound_class_set_gain "device_machinery" 0.6 1)
	(sound_class_set_gain "device_nature" 0.6 1)
	(sound_class_set_gain "device_computers" 0.6 1)
	(sound_class_set_gain "ambient_nature" 0.6 1)
	(sound_class_set_gain "ambient_machinery" 0.6 1)
	(sound_class_set_gain "ambient_computers" 0.6 1)
	(sound_class_set_gain "first_person_damage" 0.6 1)
	(sound_class_set_gain "game_event" 0.6 1)

	;; scripted sound effects
	(sound_class_set_gain "scripted_effect" 0.85 1)

	;; music
	(sound_class_set_gain "music" 0.7 1)

	;; people talking
	(sound_class_set_gain "unit_dialog" 0.825 1)
	(sound_class_set_gain "scripted_dialog_player" 1.0 1)
	(sound_class_set_gain "scripted_dialog_other" 1.0 1)
	(sound_class_set_gain "scripted_dialog_force_unspatialized" 1.0 1)

	;; auto duck
	(set sound_gain_under_dialog 0.5)
)