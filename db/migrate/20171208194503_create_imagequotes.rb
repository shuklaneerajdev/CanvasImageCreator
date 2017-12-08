class CreateImagequotes < ActiveRecord::Migration[5.0]
  def change
    create_table :imagequotes do |t|
      t.text :name
      t.text :value

      t.timestamps
    end
  end
end
