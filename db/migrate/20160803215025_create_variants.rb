class CreateVariants < ActiveRecord::Migration[5.0]
  def change
    create_table :variants do |t|
      t.string :name, null: false
      t.json :value, null: false
      t.belongs_to :split, null: false, foreign_key: { on_delete: :cascade }
      t.timestamps
    end
  end
end
