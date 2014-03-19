class FixColumnName < ActiveRecord::Migration
  def up
  	rename_column :mbtis, :type, :typecode
  end

  def down
  end
end
