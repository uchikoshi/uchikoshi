class CreateContinuities < ActiveRecord::Migration
  def self.up
    create_table :continuities do |t|
      t.belongs_to :stage
      t.belongs_to :music
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :continuities
  end
end
