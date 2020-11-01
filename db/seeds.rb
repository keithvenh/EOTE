# CREATE USERS
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
    presence: 2
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
    presence: 1
)