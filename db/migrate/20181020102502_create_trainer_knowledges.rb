class CreateTrainerKnowledges < ActiveRecord::Migration[5.2]
  def change
    create_table :trainer_knowledges do |t|
      t.string :title
      t.string :script

      t.timestamps
    end
  end
end
