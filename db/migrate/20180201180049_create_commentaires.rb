class CreateCommentaires < ActiveRecord::Migration[5.1]
  def change
    create_table :commentaires do |t|
      t.text :com
      t.references :pin, foreign_key: true

      t.timestamps
    end
  end
end
