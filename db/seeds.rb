require 'csv'

Character.create(
    name: "Aleni",
    race: "Cerean",
    career: "Explorer",
    soak: 3,
    wound_threshold: 12,
    strain_threshold: 15,
    defense_ranged: 0,
    defense_melee: 0,
    brawn: 2,
    agility: 3,
    intellect: 3,
    cunning: 3,
    willpower: 2,
    presence: 2,
    category: "Player Character"
)

Character.create(
    name: "Krachtig",
    race: "Kadas'sa'Nikto",
    career: "Technician",
    soak: 4,
    wound_threshold: 14,
    strain_threshold: 13,
    defense_ranged: 0,
    defense_melee: 0,
    brawn: 3,
    agility: 3,
    intellect: 3,
    cunning: 3,
    willpower: 2,
    presence: 1,
    category: "Player Character"
)

Character.create(
    name: "Pax Kal Yuri",
    race: "Pantoran",
    career: "Mystic",
    soak: 3,
    wound_threshold: 14,
    strain_threshold: 12,
    defense_ranged: 1,
    defense_melee: 1,
    brawn: 2,
    agility: 4,
    intellect: 2,
    cunning: 2,
    willpower: 1,
    presence: 4,
    category: "Player Character"
)

Character.create(
    name: "Ajairu Kogiti",
    race: "Cathar",
    career: "Guardian",
    soak: 5,
    wound_threshold: 14,
    strain_threshold: 13,
    defense_ranged: 1,
    defense_melee: 1,
    brawn: 4,
    agility: 3,
    intellect: 2,
    cunning: 1,
    willpower: 2,
    presence: 3,
    category: "Player Character"
)

Character.create(
    name: "Torque",
    race: "Droid",
    career: "Technician",
    soak: 3,
    wound_threshold: 11,
    strain_threshold: 11,
    defense_ranged: 0,
    defense_melee: 0,
    brawn: 1,
    agility: 3,
    intellect: 5,
    cunning: 1,
    willpower: 1,
    presence: 1,
    category: "Player Character"
)

general_skills = [
    ["Astrogation", "Intellect", 0, true],
    ["Athletics", "Brawn", 0, false],
    ["Charm", "Presence", 0, false],
    ["Coercion", "Willpower", 0, false],
    ["Computers", "Intellect", 0, false],
    ["Cool", "Presence", 1, true],
    ["Coordination", "Agility", 0, false],
    ["Deception", "Cunning", 0, false],
    ["Discipline", "Willpower", 0, false],
    ["Leadership", "Presence", 0, false],
    ["Mechanics", "Intellect", 0, false],
    ["Medicine", "Intellect", 0, false],
    ["Negotiation", "Presence", 1, false],
    ["Perception", "Cunning", 1, true],
    ["Piloting (Planetary)", "Agility", 0, false],
    ["Piloting (Space)", "Agility", 2, true],
    ["Resilience", "Brawn", 0, false],
    ["Skulduggery", "Cunning", 0, false],
    ["Stealth", "Agility", 1, true],
    ["Streetwise", "Cunning", 0, false],
    ["Survival", "Cunning", 2, true],
    ["Vigilance", "Willpower", 1, false]
]

combat_skills = [
    ["Brawl", "Brawn", 0, false],
    ["Melee", "Brawn", 0, false],
    ["Ranged (Light)", "Agility", 1, false],
    ["Ranged (Heavy)", "Agility", 2, true],
    ["Gunnery", "Agility", 0, false]
]

knowledge_skills = [
    ["Core Worlds", 0],
    ["Education", 0],
    ["Lore", 0],
    ["Outer Rim", 0],
    ["Underworld", 0],
    ["Xenology", 2]
]

general_skills.each do |s|
    Skill.create(
        character_id: Character.find_by(name: "Aleni").id,
        name: s[0],
        attr: s[1],
        category: "General",
        level: s[2],
        career: s[3]
    )
end

combat_skills.each do |s|
    Skill.create(
        character_id: Character.find_by(name: "Aleni").id,
        name: s[0],
        attr: s[1],
        category: "Combat",
        level: s[2],
        career: s[3]
    )
end

knowledge_skills.each do |s|
    Skill.create(
        character_id: Character.find_by(name: "Aleni").id,
        name: s[0],
        attr: "Intellect",
        category: "Knowledge",
        level: s[1],
        career: true
    )
end

general_skills = [
    ["Astrogation", "Intellect", 1, true],
    ["Athletics", "Brawn", 0, false],
    ["Charm", "Presence", 0, false],
    ["Coercion", "Willpower", 0, false],
    ["Computers", "Intellect", 1, true],
    ["Cool", "Presence", 0, false],
    ["Coordination", "Agility", 2, true],
    ["Deception", "Cunning", 0, false],
    ["Discipline", "Willpower", 1, true],
    ["Leadership", "Presence", 0, false],
    ["Mechanics", "Intellect", 2, true],
    ["Medicine", "Intellect", 0, false],
    ["Negotiation", "Presence", 0, false],
    ["Perception", "Cunning", 1, true],
    ["Piloting (Planetary)", "Agility", 1, true],
    ["Piloting (Space)", "Agility", 0, true],
    ["Resilience", "Brawn", 0, false],
    ["Skulduggery", "Cunning", 1, true],
    ["Stealth", "Agility", 0, false],
    ["Streetwise", "Cunning", 0, false],
    ["Survival", "Cunning", 0, false],
    ["Vigilance", "Willpower", 0, false]
]

combat_skills = [
    ["Brawl", "Brawn", 1, true],
    ["Melee", "Brawn", 0, false],
    ["Ranged (Light)", "Agility", 1, false],
    ["Ranged (Heavy)", "Agility", 1, false],
    ["Gunnery", "Agility", 1, false]
]

knowledge_skills = [
    ["Core Worlds", 0, false],
    ["Education", 0, false],
    ["Lore", 0, false],
    ["Outer Rim", 1, true],
    ["Underworld", 0, false],
    ["Xenology", 0, false]
]

general_skills.each do |s|
    Skill.create(
        character_id: Character.find_by(name: "Krachtig").id,
        name: s[0],
        attr: s[1],
        category: "General",
        level: s[2],
        career: s[3]
    )
end

combat_skills.each do |s|
    Skill.create(
        character_id: Character.find_by(name: "Krachtig").id,
        name: s[0],
        attr: s[1],
        category: "Combat",
        level: s[2],
        career: s[3]
    )
end

knowledge_skills.each do |s|
    Skill.create(
        character_id: Character.find_by(name: "Krachtig").id,
        name: s[0],
        attr: "Intellect",
        category: "Knowledge",
        level: s[1],
        career: s[2]
    )
end

Character.create(
    name: "Storm Trooper",
    race: "Human",
    category: "Minion"
)

Character.create(
    name: "Gamorrean Guard",
    race: "Gamorrean",
    category: "Minion"
)

Character.create(
    name: "Tie Fighter Pilot",
    race: "Human",
    category: "Minion"
)

Character.create(
    name: "Trex",
    race: "Trandoshan",
    category: "Nemesis"
)

Character.create(
    name: "Bounty Hunter",
    race: "Various",
    category: "Rival"
)

Character.create(
    name: "B'ura B'an",
    race: "Twi'lek",
    category: "Rival"
)

Character.create(
    name: "Aqualish Thug",
    race: "Aqualish",
    category: "Minion"
)

Character.create(
    name: "New Meen Villager",
    race: "Twi'lek",
    category: "Minion"
)

Character.create(
    name: "Angu Drombb",
    race: "Human",
    category: "Rival"
)

Character.create(
    name: "Blurrg",
    race: "Blurrg",
    category: "Animal"
)

Character.create(
    name: "Geonosian Guard",
    race: "Geonosian",
    category: "Minion"
)

Character.create(
    name: "Vrixx'tt",
    race: "Gand",
    category: "Rival"
)

Character.create(
    name: "Lowhhrick",
    race: "Wookiee",
    category: "Named NPC"
)

Character.create(
    name: "41-VEX",
    race: "Droid",
    category: "Named NPC"
)

Character.create(
    name: "Pash",
    race: "Human",
    category: "Named NPC"
)

Character.create(
    name: "Oskara",
    race: "Twi'lek",
    category: "Named NPC"
)

Character.create(
    name: "Teemo the Hutt",
    race: "Hutt",
    category: "Nemesis"
)

Character.create(
    name: "Thweek",
    race: "Kubaz",
    category: "Rival"
)

Character.create(
    name: "Guda Azad",
    race: "Devaronian",
    category: "Rival"
)

Character.create(
    name: "Street Tough",
    race: "Various",
    category: "Minion"
)

Character.create(
    name: "Nikto Thug",
    race: "Nikto",
    category: "Minion"
)

Character.create(
    name: "R3-M1",
    race: "Droid",
    category: "Player Character"
)

Character.create(
    name: "Yiyar Clan Member",
    race: "Rodian",
    category: "Minion"
)

Character.create(
    name: "WED Treadwell Repair Droid",
    race: "Droid",
    category: "Minion"
)

Character.create(
    name: "Yav Yiyar",
    race: "Rodian",
    category: "Nemesis"
)

CREATE USERS
User.create!(
    email: "zvenhui@datapad.io",
    username: "zack",
    password: "zvenhui",
    password_confirmation: "zvenhui",
    credits: 0,
    character_id: Character.find_by(name: "Pax Kal-Yuri").id
)

User.create!(
    email: "keithvenh@datapad.io",
    username: "keith",
    password: "keithvenh",
    password_confirmation: "keithvenh",
    credits: 0,
    character_id: Character.find_by(name: "Ajairu Kogiti").id
)

rolls = CSV.parse(File.read('db/rolls.csv'))

rolls.each do |row|
    user = User.find_by(username: row[0].downcase)
    character = Character.find_by(name: row[1])
    Roll.create(
        user: user,
        character: character,
        skill: row[2],
        difficulty: row[3],
        dice: row[4],
        dice_results: row[5],
        roll_result: row[6]
    )
end