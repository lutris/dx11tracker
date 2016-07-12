class CreateDlls < ActiveRecord::Migration[5.0]
  def change
    create_table :dlls do |t|
      t.string :name
      t.string :spec_path

      t.timestamps
    end
  end
end
