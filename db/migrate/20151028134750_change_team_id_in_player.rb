class ChangeTeamIdInPlayer < ActiveRecord::Migration
  def up
    remove_column :players, :team_id
    add_column :players, :team_id, :integer
  end

  def down
    remove_column :players, :team_id
    add_column :players, :team_id, :string
  end
end
