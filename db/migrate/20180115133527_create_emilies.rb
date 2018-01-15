class CreateEmilies < ActiveRecord::Migration[5.1]
  def change
    create_table :emilies do |t|
      t.string :name
      t.string :dsc

      t.timestamps
    end
  end
end
