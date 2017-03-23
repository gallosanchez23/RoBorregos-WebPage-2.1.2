class CreateExternalRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :external_roles do |t|
      t.string :name
      t.text   :description

      t.timestamps
    end
  end
end
