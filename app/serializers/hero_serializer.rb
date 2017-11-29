class HeroSerializer < BaseSerializer

  attributes :name, :real_name, :health, :armour, :shield, :abilities

  def abilities
    self.object.abilities.as_json
  end
end
