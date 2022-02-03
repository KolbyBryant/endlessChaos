buffs_to_customize = {
	attack_speed = {
		max_stacks = 20
	},
	stamina = {
		max_stacks = 10
	},
	push_block_arc = {
		max_stacks = 2
	},
	crit_chance = {
		max_stacks = 10
	},
	ability_cooldown_reduction = {
		max_stacks = 10
	},
	crit_boost = {
		max_stacks = 20
	},
	health = {
		max_stacks = 10
	},
	block_cost = {
		max_stacks = 2
	},
	movespeed = {
		max_stacks = 40
	},
	deus_extra_shot = {
		max_stacks = 7
	}
}

stat_power_ups = {
	"attack_speed",
	"stamina",
	"crit_chance",
	"push_block_arc",
	"ability_cooldown_reduction",
	"crit_boost",
	"health",
	"block_cost",
	"movespeed",
	"revive_speed",
	"fatigue_regen"
}
DeusPowerUpAvailabilityTypes = {
	cursed_chest = "cursed_chest",
	terror_event = "terror_event",
	weapon_chest = "weapon_chest",
	shrine = "shrine",
	risk_of_rats_stats = "risk_of_rats_stats"
}

new_stat_availability = {

}
for _, name in pairs(stat_power_ups) do
  DeusPowerUps["rare"][name].availability = {
	DeusPowerUpAvailabilityTypes.terror_event,
	DeusPowerUpAvailabilityTypes.risk_of_rats_stats
  }
end

return buffs_to_customize