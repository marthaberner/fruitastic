class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :type
      t.string :color
    end
  end
end
