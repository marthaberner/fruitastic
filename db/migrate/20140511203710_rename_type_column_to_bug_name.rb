class RenameTypeColumnToBugName < ActiveRecord::Migration
  def change
    rename_column(:bugs, :type, :bug_name)
  end
end
