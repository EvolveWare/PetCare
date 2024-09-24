class CreateVaccineRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :vaccine_records do |t|
      t.references :pet, null: false, foreign_key: true
      t.string :vaccine_name
      t.date :date_administered
      t.date :next_due_date

      t.timestamps
    end
  end
end
