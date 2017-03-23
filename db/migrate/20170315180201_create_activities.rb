class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string  :name
      t.integer :year
      t.text    :description
      t.date    :starts_on
      t.date    :ends_on
      t.string  :city
      t.string  :country
      t.integer :activity_type

      t.timestamps
    end
  end
end
