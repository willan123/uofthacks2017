class AddTeamNumberToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :team_number, :integer, array: true
  end
end
