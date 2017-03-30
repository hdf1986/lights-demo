class CreateLights < ActiveRecord::Migration[5.1]
  def change
    create_table :lights do |t|
      t.boolean :state

      t.timestamps
    end
  end
end
