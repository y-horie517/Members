class AddProfToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :prof, :binary
  end
end
