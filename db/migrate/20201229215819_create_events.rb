class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title, default: ""
      t.datetime :starting
      t.datetime :ending

      t.timestamps
    end
  end
end
