class CreateCalculations < ActiveRecord::Migration
  def change
    create_table :calculations do |t|
      t.string :values
      t.string :ip

      t.timestamps
    end
  end
end
