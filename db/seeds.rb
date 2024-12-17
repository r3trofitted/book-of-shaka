# These are sample pre-generated characters

Character.find_or_create_by(kin: Kins::Human, profession: Professions::Hunter) do |c|
  c.name       = "Bryne Tueur-de-Loup"
  c.age        = 28
  c.pride      = "Ma flèche ne rate jamais sa cible."
  c.appearance = <<~TXT.squish
    Porte des cuirs patinés et une cape dans des tons verts et bruns, conçus pour le
    camouflage dans les environnements forestiers. Les flèches qui dépassent de son carquois sont
    empennées avec les plumes de corbeau. Son visage buriné par les éléments est souvent caché
    dans l'ombre de sa capuche.
  TXT
  c.dark_secret = "Un jour, j'ai  abandonné un ami grièvement blessé dans les bois pour sauver ma peau."
  c.strength    = Attribute.new 2
  c.agility     = Attribute.new 5
  c.wits        = Attribute.new 3
  c.empathy     = Attribute.new 4
  c.skills      = SkillSet.new(marksmanship: 3, melee: 1, move: 1, scouting: 2, stealth: 1, survival: 2)
  c.talents     = TalentSet.new(adaptive: 1, lucky: 1, path_of_the_forest: 2)
  c.food        = Consumable.new "d8"
  c.water       = Consumable.new "d8"
  c.arrows      = Consumable.new "d10"
  c.equipment   = EquipmentSet.new [Weapon::Longbow.new, TradeGood::SmallTent.new, TradeGood::Blanket.new, Equipment::Backpack.new, Equipment::Waterskin.new]
  c.coins       = { silver: 4 }

  c.portrait.attach io: File.open(Rails.root.join("app/assets/images/portraits/human_hunter.png")), filename: "bryne.png"
end

Character.find_or_create_by(kin: Kins::Human, profession: Professions::Fighter) do |c|
  c.name        = "Borel Nez-brisé"
  c.age         = 29
  c.pride       = "Je ne m'enfuis jamais pendant un combat."
  c.appearance  = <<~TXT.squish
    Ses vêtements sont de soies et de lins clairs, qui révèlent sa musculature. Son armure de cuir
    porte les traces de nombreux combats passés. Une épée à la poignée ceinte de cuir noir est
    glissée dans un fourreau dans son dos.
  TXT
  c.dark_secret = "J'ai jadis tué un Frère du Rouillé; depuis, les Ferrons ont mis ma tête à prix."
  c.strength    = Attribute.new 4
  c.agility     = Attribute.new 3
  c.wits        = Attribute.new 5
  c.empathy     = Attribute.new 2
  c.skills      = SkillSet.new crafting: 1, endurance: 2, melee: 3, might: 2, move: 2
  c.talents     = TalentSet.new adaptive: 1, path_of_the_blade: 1, sword_fighter: 1, pain_resistant: 1
  c.food        = Consumable.new "d8"
  c.water       = Consumable.new "d8"
  c.equipment   = EquipmentSet.new [Weapon::Longsword.new, Armor::StuddedLeatherArmor.new, Equipment::SleepingFur.new, Equipment::Backpack.new, Equipment::Waterskin.new]
  c.coins       = { silver: 4 }

  c.portrait.attach io: File.open(Rails.root.join("app/assets/images/portraits/human_fighter.png")), filename: "borel.png"
end

Character.find_or_create_by(kin: Kins::Human, profession: Professions::Peddler) do |c|
  c.name        = "Milus Sourire-d'Argent"
  c.age         = 23
  c.pride       = "J'ai le don d'inspirer confiance à n'importe qui."
  c.appearance  = <<~TXT
    Arbore des vêtements colorés et un chapeau à large bord. Est toujours chargé de nombreuses besaces.
    Sa barbe est taillée court, et ses yeux ont constamment un air mélancolique.
  TXT
  c.dark_secret = "Persuadé que tout le monde cherche à me voler, je ne fais plus confiance à personne."
  c.strength    = Attribute.new 3
  c.agility     = Attribute.new 3
  c.wits        = Attribute.new 3
  c.empathy     = Attribute.new 6
  c.skills      = SkillSet.new crafting: 1, sleight_of_hand: 1, insight: 2, scouting: 1, manipulation: 3
  c.talents     = TalentSet.new adaptive: 1, path_of_words: 1, pack_rat: 1
  c.food        = Consumable.new "d8"
  c.water       = Consumable.new "d8"
  c.equipment   = EquipmentSet.new [Weapon::Knife.new, Equipment::Bandages.new, Equipment::FlintAndSteel.new, Equipment::Rope.new, Equipment::Backpack.new, Equipment::Waterskin.new]
  c.coins       = { silver: 9 }

  c.portrait.attach io: File.open(Rails.root.join("app/assets/images/portraits/human_peddler.png")), filename: "milus.png"
end

Character.find_or_create_by(kin: Kins::Human, profession: Professions::Rider) do |c|
  c.name        = "Timaios Lance-Ailée"
  c.age         = 19
  c.pride       = "En selle, je chevauche plus vite que le vent."
  c.appearance  = <<~TXT
    Vêtu de cuirs serrés, sa peau est tannée par le grand air. Il porte des cheveux longs tressés, et son air est toujours
    pensif.
  TXT
  c.dark_secret = "Je panique dès que je me trouve dans une pièce étroite et fermée."
  c.strength    = Attribute.new 4
  c.agility     = Attribute.new 4
  c.wits        = Attribute.new 4
  c.empathy     = Attribute.new 3
  c.skills      = SkillSet.new endurance: 1, melee: 2, marksmanship: 2, survival: 1, animal_handling: 2
  c.talents     = TalentSet.new adaptive: 1, path_of_the_companion: 2
  c.food        = Consumable.new "d8"
  c.water       = Consumable.new "d8"
  c.arrows      = Consumable.new "d10"
  c.equipment   = EquipmentSet.new [Weapon::ShortSpear.new, Weapon::ShortBow.new, Equipment::Quiver.new, Equipment::Backpack.new, Equipment::Waterskin.new]
  c.coins       = { silver: 2 }

  c.portrait.attach io: File.open(Rails.root.join("app/assets/images/portraits/human_rider.png")), filename: "timaios.png"
end

Character.find_or_create_by(kin: Kins::Human, profession: Professions::Druid) do |c|
  c.name        = "Oroden Serre-de-Corbeau"
  c.age         = 40
  c.pride       = "Je perçois les phénomènes contre nature avant tout le monde."
  c.appearance  = <<~TXT
    Porte une robe et une cape usées et mal entretenues, malmenées par la vie en extérieur. Des feuilles, des branches
    et des ossements décorent sa parure. Il tient un bâton tordu et entremêlé de plantes grimpates.
  TXT
  c.dark_secret = "Je suis un cuistre moralisateur qui prétends connaître les desseins des dieux."
  c.strength    = Attribute.new 2
  c.agility     = Attribute.new 3
  c.wits        = Attribute.new 5
  c.empathy     = Attribute.new 4
  c.skills      = SkillSet.new endurance: 2, insight: 2, healing: 3, survival: 1, animal_handling: 1, marksmanship: 1
  c.talents     = TalentSet.new adaptive: 1, path_of_shifting_shapes: 2, herbalist: 1
  c.food        = Consumable.new "d8"
  c.water       = Consumable.new "d8"
  c.equipment   = EquipmentSet.new [Weapon::Staff.new, Equipment::SleepingFur.new, Equipment::Backpack.new, Equipment::Waterskin.new]
  c.coins       = { silver: 3 }

  c.portrait.attach io: File.open(Rails.root.join("app/assets/images/portraits/human_druid.png")), filename: "oroden.png"
end

Character.find_or_create_by(kin: Kins::Elf, profession: Professions::Minstrel) do |c|
  c.name        = "Tassarion"
  c.age         = 210
  c.pride       = "Mes amis donneraient leur vie pour moi."
  c.appearance  = <<~TXT
    Un Elfe aux traits fins et droits, typiques de son peuple, mais dont les oreilles sont inhabituellement longues et
    pointues. Porte des vêtements fins dans des tons sombres, amples, décorés de fines chaînes et de dentelles.
  TXT
  c.dark_secret = "Je suis secrètement amoureux d'un de mes compagnons."
  c.strength    = Attribute.new 3
  c.agility     = Attribute.new 4
  c.wits        = Attribute.new 2
  c.empathy     = Attribute.new 5
  c.skills      = SkillSet.new lore: 3, insight: 2, manipulation: 1, performance: 3, healing: 1
  c.talents     = TalentSet.new inner_peace: 1, path_of_song: 1, fast_footwork: 1, fearless: 1
  c.food        = Consumable.new "d8"
  c.water       = Consumable.new "d8"
  c.equipment   = EquipmentSet.new [Weapon::Knife.new, Equipment::Lyre.new, Equipment::Tankard.new, Equipment::Backpack.new, Equipment::Waterskin.new]
  c.coins       = { silver: 3 }

  c.portrait.attach io: File.open(Rails.root.join("app/assets/images/portraits/elf_minstrel.png")), filename: "tassarion.png"
end

Character.find_or_create_by(kin: Kins::HalfElf, profession: Professions::Rogue) do |c|
  c.name        = "Horderan Demi-Doigt"
  c.age         = 52
  c.pride       = "Personne ne peut m'attraper."
  c.appearance  = <<~TXT
    Arbore les traits anguleux des Elfes, mais le regard intense et la barbe de deux jours d'un Humain. Des vêtements
    noirs, dont une grande cape dans laquelle il est facile de se dissimuler – ou de cacher des dagues.
  TXT
  c.dark_secret = "Ma bourse est bien souvent vide, l'argent me brûle les doigts."
  c.strength    = Attribute.new 3
  c.agility     = Attribute.new 5
  c.wits        = Attribute.new 4
  c.empathy     = Attribute.new 2
  c.skills      = SkillSet.new melee: 2, sleight_of_hand: 1, stealth: 3, move: 3, manipulation: 1
  c.talents     = TalentSet.new psychic_power: 1, path_of_the_face: 1, lockpicker: 1, lucky: 1
  c.food        = Consumable.new "d6"
  c.water       = Consumable.new "d6"
  c.equipment   = EquipmentSet.new [Weapon::Dagger.new, Equipment::Lockpicks.new, Equipment::FlintAndSteel.new, Equipment::Backpack.new, Equipment::Waterskin.new]
  c.coins       = { silver: 10 }

  c.portrait.attach io: File.open(Rails.root.join("app/assets/images/portraits/half_elf_rogue.png")), filename: "horderan.png"
end

Character.find_or_create_by(kin: Kins::Human, profession: Professions::Sorcerer) do |c|
  c.name        = "Klaros Parles-aux-Roches"
  c.age         = 55
  c.pride       = "J'ai tellement voyagé, tellement vu, d'horreurs et d'atrocités. La peur a disparu de mon esprit…"
  c.appearance  = <<~TXT
    Étonnamment grand pour son âge certain, il est robuste comme le roc.
    Le crane rasé, sa barbe marque ses années. Des bracelets de pierre enserrent ses poignets.
    Son allure est celle d'un voyageur, que ses périples ont façonné comme les roches le sont par la pluie et le vent.
  TXT
  c.dark_secret = <<~TXT
    Depuis que j'ai trouvé ce masque, je suis hanté par ces visions de mort et de destructions démoniaques. Mon pays, tout ce feu et ces cendres…
    Mais pourquoi est-ce que je ne parviens pas à m’en séparer ?
  TXT
  c.strength    = Attribute.new 4
  c.agility     = Attribute.new 3
  c.wits        = Attribute.new 3
  c.empathy     = Attribute.new 3
  c.skills      = SkillSet.new endurance: 1, melee: 1, crafting: 1, lore: 2, survival: 3, insight: 1, marksmanship: 1, healing: 1, animal_handling: 1
  c.talents     = TalentSet.new adaptive: 1, path_of_stone: 1, poisoner: 1, quartermaster: 1, incorruptible: 1
  c.food        = Consumable.new "d6"
  c.water       = Consumable.new "d8"
  c.equipment   = EquipmentSet.new [Equipment::Mask.new, Equipment::SmallTent.new, Equipment::Cauldron.new, Equipment::LethalPoison.new(4), Equipment::Backpack.new, Equipment::Waterskin.new]
  c.coins       = { silver: 7 }

  c.portrait.attach io: File.open(Rails.root.join("app/assets/images/portraits/human_sorcerer.png")), filename: "klaros.png"
end
