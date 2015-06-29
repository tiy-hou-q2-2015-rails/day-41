class AddPayolaToSubmittal < ActiveRecord::Migration
  def change

    add_column :submittals, :price, :integer
    add_column :submittals, :name, :string
    add_column :submittals, :permalink, :string
  end
end
