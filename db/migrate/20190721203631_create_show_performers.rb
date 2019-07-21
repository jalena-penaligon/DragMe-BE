class CreateShowPerformers < ActiveRecord::Migration[5.2]
  def change
    create_table :show_performers do |t|
      t.references :performer, foreign_key: true
      t.references :show, foreign_key: true
    end
  end
end
