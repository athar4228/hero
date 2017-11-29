class Hero < ApplicationRecord

  has_many :abilities, dependent: :destroy
end
