# # CREATE USERS
# User.create(
#     email: "krachtig@iron-shadow.com",
#     username: "Krachtig",
#     password: "Krachtig",
#     password_confirmation: "Krachtig"
# )

# User.create(
#     email: "aleni@iron-shadow.com",
#     username: "Aleni",
#     password: "Aleni1",
#     password_confirmation: "Aleni1"
# )

# Character.create(
#     name: "Aleni",
#     race: "Cerean",
#     career: "Explorer",
#     soak: 3,
#     wound_threshold: 12,
#     strain_threshold: 15,
#     defense_ranged: 0,
#     defense_melee: 0,
#     brawn: 2,
#     agility: 3,
#     intellect: 3,
#     cunning: 3,
#     willpower: 2,
#     presence: 2
# )

# Character.create(
#     name: "Krachtig",
#     race: "Kadas'sa'Nikto",
#     career: "Technician",
#     soak: 4,
#     wound_threshold: 14,
#     strain_threshold: 13,
#     defense_ranged: 0,
#     defense_melee: 0,
#     brawn: 3,
#     agility: 3,
#     intellect: 3,
#     cunning: 3,
#     willpower: 2,
#     presence: 1
# )

# Weapon.create(
#     name: "Merr-Sonn E-11 Blaster Rifle",
#     restricted: false,
#     skill: "Ranged (Heavy)",
#     damage: 9,
#     crit: 3,
#     range: "Long",
#     encumbrance: 4,
#     hard_points: 4,
#     cost: 900,
#     rarity: 5,
#     specials: "Stun Setting"
# )
# Weapon.create(
#     name: "Merr-Sonn Model 434 Blaster Pistol",
#     restricted: false,
#     skill: "Ranged (Light)",
#     damage: 7,
#     crit: 3,
#     range: "Medium",
#     encumbrance: 2,
#     hard_points: 3,
#     cost: 700,
#     rarity: 7,
#     specials: "Stun Setting"
# )
# Weapon.create(
#     name: "Merr-Sonn C-22 Frag Grenade",
#     restricted: false,
#     skill: "Ranged (Light)",
#     damage: 8,
#     crit: 4,
#     range: "Short",
#     encumbrance: 1,
#     hard_points: 0,
#     cost: 50,
#     rarity: 5,
#     specials: "Blast:6, Limited Ammo:1"
# )
# Weapon.create(
#     name: "Merr-Sonn C-10 Stun Grenade",
#     restricted: false,
#     skill: "Ranged (Light)",
#     damage: 8,
#     crit: 1000,
#     range: "Short",
#     encumbrance: 1,
#     hard_points: 0,
#     cost: 75,
#     rarity: 4,
#     specials: "Disorient:3, Stun Damage, Blast:8, Limited Ammo:1"
# )
# Armor.create(
#     name: "Heavy Clothing",
#     restricted: false,
#     defense: 0,
#     soak: 1,
#     cost: 50,
#     encumbrance: 1,
#     hard_points: 0,
#     rarity: 0,
#     description: ""
# )
# Equipment.create(
#     name: "Ration Pack",
#     restricted: false,
#     encumbrance: 0,
#     cost: 5,
#     rarity: 0,
#     description: "Meal, ready to eat, for the soldier on the move."
# )
# Equipment.create(
#     name: "Utility Belt",
#     restricted: false,
#     encumbrance: 1000,
#     cost: 25,
#     rarity: 0,
#     description: "Worn belt with pouches for storage. Increases encumbrance by 1."
# )
# Equipment.create(
#     name: "Breath Mask and Respirator",
#     restricted: false,
#     encumbrance: 1,
#     cost: 25,
#     rarity: 1,
#     description: "Allows breathing in contaminated or alien environments."
# )
# Equipment.create(
#     name: "Extra Weapon Reload",
#     restricted: false,
#     encumbrance: 1,
#     cost: 25,
#     rarity: 1,
#     description: "Reload for a weapon. Maneuver to reload."
# )
# Equipment.create(
#     name: "Handheld Comlink",
#     restricted: false,
#     encumbrance: 0,
#     cost: 25,
#     rarity: 0,
#     description: "Provides audio messaging between tow or more parties."
# )
# Equipment.create(
#     name: "Binders",
#     restricted: false,
#     encumbrance: 0,
#     cost: 25,
#     rarity: 0,
#     description: "Handcuffs. Daunting Athletics or Coordination to escape."
# )
# Equipment.create(
#     name: "Stimpack",
#     restricted: false,
#     encumbrance: 0,
#     cost: 25,
#     rarity: 2,
#     description: "Auto-injection tube of medication; Heals wounds with diminishing returns."
# )
# Equipment.create(
#     name: "Backpack",
#     restricted: false,
#     encumbrance: 4000,
#     cost: 50,
#     rarity: 0,
#     description: "Worn satchel for holding gear. Increases encumbrance by 4."
# )
# Equipment.create(
#     name: "Datapad",
#     restricted: false,
#     encumbrance: 1,
#     cost: 75,
#     rarity: 1,
#     description: "Small hand-held computer for storing and utilizing data."
# )
# Equipment.create(
#     name: "Macrobinoculars",
#     restricted: false,
#     encumbrance: 1,
#     cost: 75,
#     rarity: 2,
#     description: "Hand-held visual magnification"
# )
# CharacterEquipment.create(
#     character_id: Character.find_by(name: "Aleni").id,
#     equipment_id: Equipment.find_by(name: "Backpack").id,
#     quantity: 1
# )
# CharacterEquipment.create(
#     character_id: Character.find_by(name: "Aleni").id,
#     equipment_id: Equipment.find_by(name: "Breath Mask and Respirator").id,
#     quantity: 1
# )
# CharacterEquipment.create(
#     character_id: Character.find_by(name: "Aleni").id,
#     equipment_id: Equipment.find_by(name: "Datapad").id,
#     quantity: 1
# )
# CharacterEquipment.create(
#     character_id: Character.find_by(name: "Aleni").id,
#     equipment_id: Equipment.find_by(name: "Ration Pack").id,
#     quantity: 2
# )
# CharacterEquipment.create(
#     character_id: Character.find_by(name: "Aleni").id,
#     equipment_id: Equipment.find_by(name: "Stimpack").id,
#     quantity: 4
# )
# CharacterEquipment.create(
#     character_id: Character.find_by(name: "Aleni").id,
#     equipment_id: Equipment.find_by(name: "Binders").id,
#     quantity: 1
# )
# CharacterEquipment.create(
#     character_id: Character.find_by(name: "Aleni").id,
#     equipment_id: Equipment.find_by(name: "Handheld Comlink").id,
#     quantity: 1
# )
# CharacterEquipment.create(
#     character_id: Character.find_by(name: "Aleni").id,
#     equipment_id: Equipment.find_by(name: "Macrobinoculars").id,
#     quantity: 1
# )
# CharacterEquipment.create(
#     character_id: Character.find_by(name: "Aleni").id,
#     equipment_id: Equipment.find_by(name: "Utility Belt").id,
#     quantity: 1
# )
# CharacterEquipment.create(
#     character_id: Character.find_by(name: "Aleni").id,
#     equipment_id: Equipment.find_by(name: "Extra Weapon Reload").id,
#     quantity: 2
# )
# CharacterArmor.create(
#     character_id: Character.find_by(name: "Aleni").id,
#     armor_id: 1,
#     quantity: 1
# )
# CharacterWeapon.create(
#     character_id: Character.find_by(name: "Aleni").id,
#     weapon_id: Weapon.find_by(name: "Merr-Sonn E-11 Blaster Rifle").id,
#     quantity: 1
# )
# CharacterWeapon.create(
#     character_id: Character.find_by(name: "Aleni").id,
#     weapon_id: Weapon.find_by(name: "Merr-Sonn Model 434 Blaster Pistol").id,
#     quantity: 1
# )
# CharacterWeapon.create(
#     character_id: Character.find_by(name: "Aleni").id,
#     weapon_id: Weapon.find_by(name: "Merr-Sonn C-22 Frag Grenade").id,
#     quantity: 2
# )
# CharacterWeapon.create(
#     character_id: Character.find_by(name: "Aleni").id,
#     weapon_id: Weapon.find_by(name: "Merr-Sonn C-10 Stun Grenade").id,
#     quantity: 1
# )

# general_skills = [
#     ["Astrogation", "Intellect", 0, true],
#     ["Athletics", "Brawn", 0, false],
#     ["Charm", "Presence", 0, false],
#     ["Coercion", "Willpower", 0, false],
#     ["Computers", "Intellect", 0, false],
#     ["Cool", "Presence", 1, true],
#     ["Coordination", "Agility", 0, false],
#     ["Deception", "Cunning", 0, false],
#     ["Discipline", "Willpower", 0, false],
#     ["Leadership", "Presence", 0, false],
#     ["Mechanics", "Intellect", 0, false],
#     ["Medicine", "Intellect", 0, false],
#     ["Negotiation", "Presence", 1, false],
#     ["Perception", "Cunning", 1, true],
#     ["Piloting (Planetary)", "Agility", 0, false],
#     ["Piloting (Space)", "Agility", 2, true],
#     ["Resilience", "Brawn", 0, false],
#     ["Skulduggery", "Cunning", 0, false],
#     ["Stealth", "Agility", 1, true],
#     ["Streetwise", "Cunning", 0, false],
#     ["Survival", "Cunning", 2, true],
#     ["Vigilance", "Willpower", 1, false]
# ]

# combat_skills = [
#     ["Brawl", "Brawn", 0, false],
#     ["Melee", "Brawn", 0, false],
#     ["Ranged (Light)", "Agility", 1, false],
#     ["Ranged (Heavy)", "Agility", 2, true],
#     ["Gunnery", "Agility", 0, false]
# ]

# knowledge_skills = [
#     ["Core Worlds", 0],
#     ["Education", 0],
#     ["Lore", 0],
#     ["Outer Rim", 0],
#     ["Underworld", 0],
#     ["Xenology", 2]
# ]

# general_skills.each do |s|
#     Skill.create(
#         character_id: Character.find_by(name: "Aleni").id,
#         name: s[0],
#         attr: s[1],
#         category: "General",
#         level: s[2],
#         career: s[3]
#     )
# end

# combat_skills.each do |s|
#     Skill.create(
#         character_id: Character.find_by(name: "Aleni").id,
#         name: s[0],
#         attr: s[1],
#         category: "Combat",
#         level: s[2],
#         career: s[3]
#     )
# end

# knowledge_skills.each do |s|
#     Skill.create(
#         character_id: Character.find_by(name: "Aleni").id,
#         name: s[0],
#         attr: "Intellect",
#         category: "Knowledge",
#         level: s[1],
#         career: true
#     )
# end

# general_skills = [
#     ["Astrogation", "Intellect", 1, true],
#     ["Athletics", "Brawn", 0, false],
#     ["Charm", "Presence", 0, false],
#     ["Coercion", "Willpower", 0, false],
#     ["Computers", "Intellect", 1, true],
#     ["Cool", "Presence", 0, false],
#     ["Coordination", "Agility", 2, true],
#     ["Deception", "Cunning", 0, false],
#     ["Discipline", "Willpower", 1, true],
#     ["Leadership", "Presence", 0, false],
#     ["Mechanics", "Intellect", 2, true],
#     ["Medicine", "Intellect", 0, false],
#     ["Negotiation", "Presence", 0, false],
#     ["Perception", "Cunning", 1, true],
#     ["Piloting (Planetary)", "Agility", 1, true],
#     ["Piloting (Space)", "Agility", 0, true],
#     ["Resilience", "Brawn", 0, false],
#     ["Skulduggery", "Cunning", 1, true],
#     ["Stealth", "Agility", 0, false],
#     ["Streetwise", "Cunning", 0, false],
#     ["Survival", "Cunning", 0, false],
#     ["Vigilance", "Willpower", 0, false]
# ]

# combat_skills = [
#     ["Brawl", "Brawn", 1, true],
#     ["Melee", "Brawn", 0, false],
#     ["Ranged (Light)", "Agility", 1, false],
#     ["Ranged (Heavy)", "Agility", 1, false],
#     ["Gunnery", "Agility", 1, false]
# ]

# knowledge_skills = [
#     ["Core Worlds", 0, false],
#     ["Education", 0, false],
#     ["Lore", 0, false],
#     ["Outer Rim", 1, true],
#     ["Underworld", 0, false],
#     ["Xenology", 0, false]
# ]

# general_skills.each do |s|
#     Skill.create(
#         character_id: Character.find_by(name: "Krachtig").id,
#         name: s[0],
#         attr: s[1],
#         category: "General",
#         level: s[2],
#         career: s[3]
#     )
# end

# combat_skills.each do |s|
#     Skill.create(
#         character_id: Character.find_by(name: "Krachtig").id,
#         name: s[0],
#         attr: s[1],
#         category: "Combat",
#         level: s[2],
#         career: s[3]
#     )
# end

# knowledge_skills.each do |s|
#     Skill.create(
#         character_id: Character.find_by(name: "Krachtig").id,
#         name: s[0],
#         attr: "Intellect",
#         category: "Knowledge",
#         level: s[1],
#         career: s[2]
#     )
# end
# CharacterStat.create(
#     character_id: Character.find_by(name: "Aleni").id,
#     combat_kills: 12,
#     combat_assists: 2,
#     combat_damage: 107,
#     combat_crits: 2,
#     wounds_taken: 22,
#     wounds_healed: 7,
#     crit_inj_sustained: 1,
#     crit_inj_healed: 0
# )

# CharacterStat.create(
#     character_id: Character.find_by(name: "Krachtig").id,
#     combat_kills: 21,
#     combat_assists: 3,
#     combat_damage: 168,
#     combat_crits: 6,
#     wounds_taken: 18,
#     wounds_healed: 6,
#     crit_inj_sustained: 1,
#     crit_inj_healed: 2
# )

# Planet.create(
#     name: "Ryloth",
#     system: "Ryloth",
#     sector: "Gaulus",
#     region: "Outer Rim",
#     year: 305,
#     day: 30,
#     population: 1500000000
# )

# Planet.create(
#     name: "Tatooine",
#     system: "Tatoo",
#     sector: "Arkanis",
#     region: "Outer Rim",
#     year: 304,
#     day: 23,
#     population: 200000
# )

# Planet.create(
#     name: "Geonosis",
#     system: "Geonosis",
#     sector: "Arkanis",
#     region: "Outer Rim",
#     year: 256,
#     day: 26,
#     population: 100000000000
# )

# Vehicle.create(
#     name: "Iron Shadow",
#     manufacturer: "Corellian Engineering Corporation",
#     model: "YT-2400",
#     hull_type: "Freighter",
#     primary_hyperdrive: 2,
#     secondary_hyperdrive: 12,
#     navicomputer: true,
#     sensor_range: "Short",
#     passenger_capacity: 6,
#     complement: "Pilots:1, Co-pilot/Engineer:1",
#     cost: 130000,
#     rarity: 5,
#     hard_points: 5,
#     capacity: 140,
#     silhouette: 4,
#     speed: 3,
#     handling: 0,
#     armor: 4,
#     hull_trauma_threshold: 25,
#     system_strain_threshold: 18,
#     defense_fore: 1,
#     defense_aft: 1,
#     defense_port: 0,
#     defense_starboard: 0
# )

# Character.create(
#     name: "41-VEX",
#     race: "Droid",
#     career: "Colonist",
#     soak: 3,
#     wound_threshold: 12,
#     strain_threshold: 12,
#     defense_ranged: 0,
#     defense_melee: 0,
#     brawn: 2,
#     agility: 2,
#     intellect: 4,
#     cunning: 1,
#     willpower: 1,
#     presence: 2
# )

# Contact.create(
#     character_id: Character.find_by(name: "41-VEX").id,
#     last_known_location: "Mos Shuuta",
#     planet_id: Planet.find_by(name: "Tatooine").id,
#     warmth: 3,
#     details: "Partnered to take down Teemo the Hutt. Knew Krachtig from the arena below Teemo's Palace."
# )