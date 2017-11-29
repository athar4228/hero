class AbilitySerializer < BaseSerializer

  attributes :name, :description, :is_ultimate, :hero

  def hero
    self.object.hero.as_json
  end
end
