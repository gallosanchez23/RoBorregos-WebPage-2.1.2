class CreateContests < ActiveRecord::Migration[5.0]
  def change
    create_table :contests do |t|
      t.string  :name
      t.integer :year
      t.text    :description
      t.date    :starts_on
      t.date    :ends_on
      t.string  :city
      t.string  :country
      t.integer :contest_type

      t.timestamps
    end
  end
end
