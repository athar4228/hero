p "Creating Heros:"

h = Hero.create!(
  name: 'Tom Hardy',
  real_name: 'Tom Hardy',
  health: 100,
  armour: 100,
  shield: 100
)

Ability.create!(
  hero_id: h.id,
  name: 'Biotic Rifle',
  description: 'Ana\u2019s rifle shoots darts that can restore health to her allies or deal ongoing damage to her enemies. She can use the rifle\u2019s scope to zoom in on targets and make highly accurate shots.',
  is_ultimate: false,
)

Ability.create!(
  hero_id: h.id,
  name: 'Sleep Dart',
  description: 'Ana fires a dart from her sidearm, rendering an enemy unconscious (though any damage will rouse them).',
  is_ultimate: false,
)


h = Hero.create!(name: 'Adam', real_name: 'Adman', health: 100, armour: 100, shield: 100)

Ability.create!(
  hero_id: h.id,
  name: 'Biotic Rifle',
  description: 'Ana\u2019s rifle shoots darts that can restore health to her allies or deal ongoing damage to her enemies. She can use the rifle\u2019s scope to zoom in on targets and make highly accurate shots.',
  is_ultimate: false,
)

Ability.create!(
  hero_id: h.id,
  name: 'Sleep Dart',
  description: 'Ana fires a dart from her sidearm, rendering an enemy unconscious (though any damage will rouse them).',
  is_ultimate: false,
)
