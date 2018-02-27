class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :body
      t.string :urgency
      t.string :deadline

      t.timestamps
    end
  end
end
