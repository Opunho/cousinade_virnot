class Participant < ApplicationRecord
  mineur = 0
  CHOIX_AGE = [0]
  17.times do
    mineur = mineur + 1
    CHOIX_AGE << mineur.to_s
  end
  CHOIX_AGE << '18+'

  validates :prenom, uniqueness: true, presence: true
  validates :nom, :tel, :age, :participation, presence: true
end
