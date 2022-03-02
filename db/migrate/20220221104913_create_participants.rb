class CreateParticipants < ActiveRecord::Migration[6.1]
  def change
    create_table :participants do |t|
      t.string :prenom
      t.string :nom
      t.string :tel
      t.string :participation
      t.string :age

      t.timestamps
    end
  end
end
