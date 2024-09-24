class CreateVetVisits < ActiveRecord::Migration[7.1]
  def change
    create_table :vet_visits do |t|
      t.references :pet, null: false, foreign_key: true
      t.date :visit_date
      t.string :reason

      t.timestamps
    end
  end
end
