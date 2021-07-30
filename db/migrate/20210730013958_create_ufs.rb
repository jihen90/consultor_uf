class CreateUfs < ActiveRecord::Migration[5.2]
  def change
    create_table :ufs do |t|
      t.date :day
      t.float :ufvalue

      t.timestamps
    end
  end
end
