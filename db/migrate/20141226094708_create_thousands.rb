class CreateThousands < ActiveRecord::Migration
  def change
    create_table :thousands do |t|
      t.integer :num

      t.timestamps null: false
    end
  end
end
