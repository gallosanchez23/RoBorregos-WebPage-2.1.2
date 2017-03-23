class CreateTeamContests < ActiveRecord::Migration[5.0]
  def change
    create_table :team_contests do |t|
      t.references :team, index: true, foreign_key: true
      t.references :contest, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps
    end
  end
end
