class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :summary
      t.Date :date

      t.timestamps
    end
  end
end
