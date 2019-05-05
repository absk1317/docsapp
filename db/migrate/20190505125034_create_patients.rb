class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string  :name,    index: true, null: false
      t.string  :mobile,  index: true, null: false
      t.text    :address, index: true, null: false
      t.text    :description
      t.string  :status, default: 'active'

      t.timestamps null: false
    end
  end
end
