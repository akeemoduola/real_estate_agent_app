class AddRoleToUser < ActiveRecord::Migration[6.0]
  def up
   execute <<-SQL
     CREATE TYPE role AS ENUM ('master', 'secondary');
   SQL
   add_column :users, :role, :role, index: true
 end

 def down
   remove_column :users, :role
   execute <<-SQL
     DROP TYPE role;
   SQL
 end
end
