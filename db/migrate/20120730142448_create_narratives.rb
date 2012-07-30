class CreateNarratives < ActiveRecord::Migration
  def change
    create_table :narratives do |t|
      t.string :title
      t.text :content
      t.string :location

      t.timestamps
    end
  end
end
