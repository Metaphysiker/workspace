class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :title, default: ""
      t.text :content, default: ""

      t.timestamps
    end
  end
end
