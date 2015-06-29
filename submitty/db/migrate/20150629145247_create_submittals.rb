class CreateSubmittals < ActiveRecord::Migration
  def change
    create_table :submittals do |t|
      t.string :photo

      t.timestamps null: false
    end
  end
end
