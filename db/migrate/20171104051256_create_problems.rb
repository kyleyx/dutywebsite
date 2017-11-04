class CreateProblems < ActiveRecord::Migration[5.1]
  def change
    create_table :problems do |t|
      t.string :date
      t.string :author
      t.boolean :status
      t.string :detail
      t.string :computer_num
      t.string :string

      t.timestamps
    end
  end
end
