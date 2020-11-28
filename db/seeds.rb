# CREATE USERS
User.create(
    email: "zvenhui@eote.com",
    username: "zvenhui",
    password: "zvenhui  zvenhui",
    password_confirmation: "zvenhui",
    credits: 0
)

User.create(
    email: "aleni@eote.com",
    username: "Aleni",
    password: "Aleni1",
    password_confirmation: "Aleni1",
    credits: 0
)

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