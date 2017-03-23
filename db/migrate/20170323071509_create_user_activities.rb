class CreateUserActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :user_activities do |t|
      t.references :user, index: true, foreign_key: true
      t.references :activity, index: true, foreign_key: true

      t.timestamps
    end
  end
end
