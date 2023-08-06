class AddCommentToComment < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :comment, foreign_key: {to_table: :comments}
    add_column :comments, :comment_type, :string
  end
end
