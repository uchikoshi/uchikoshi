class CreatePositions < ActiveRecord::Migration
  def self.up
    create_table :positions do |t|
      t.belongs_to :continuity
      t.belongs_to :member
      t.belongs_to :equipment
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :positions
  end
end
