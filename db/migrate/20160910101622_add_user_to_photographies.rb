class AddUserToPhotographies < ActiveRecord::Migration[5.0]
  def change
    add_reference :photographies, :user, foreign_key: true
  end
end
