class CreateMbrackets < ActiveRecord::Migration
  def change
    create_table :mbrackets do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
