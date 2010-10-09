# Only for PostgreSQL databases - will not work on MySQL.

class AlterLatitudeLongitudeHigherPrecision < ActiveRecord::Migration
  def self.up
    execute "ALTER TABLE current_nodes ALTER COLUMN latitude TYPE bigint"
    execute "ALTER TABLE current_nodes ALTER COLUMN longitude TYPE bigint"
    execute "ALTER TABLE nodes ALTER COLUMN latitude TYPE bigint"
    execute "ALTER TABLE nodes ALTER COLUMN longitude TYPE bigint"
  end

  def self.down
    execute "ALTER TABLE current_nodes ALTER COLUMN latitude TYPE integer"
    execute "ALTER TABLE current_nodes ALTER COLUMN longitude TYPE integer"
    execute "ALTER TABLE nodes ALTER COLUMN latitude TYPE integer"
    execute "ALTER TABLE nodes ALTER COLUMN longitude TYPE integer"
  end
end
