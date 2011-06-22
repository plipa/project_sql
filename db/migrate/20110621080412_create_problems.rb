class CreateProblems < ActiveRecord::Migration
  def self.up
    create_table :problems do |t|
      t.string :nazwa
      t.string :opis
      t.integer :project_id
      t.integer :id_problemu
      t.timestamps
    end
  end

  def self.down
    drop_table :problems
  end
end
