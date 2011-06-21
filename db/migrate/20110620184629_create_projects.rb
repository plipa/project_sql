class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :nazwa
      t.string :opis

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
