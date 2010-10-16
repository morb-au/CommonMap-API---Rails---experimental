# Only for PostgreSQL databases - will not work on MySQL.

class AlterLatitudeLongitudeHigherPrecision < ActiveRecord::Migration
  def self.up
    execute "ALTER TABLE current_nodes ALTER COLUMN latitude TYPE bigint"
    execute "ALTER TABLE current_nodes ALTER COLUMN longitude TYPE bigint"
    execute "ALTER TABLE nodes ALTER COLUMN latitude TYPE bigint"
    execute "ALTER TABLE nodes ALTER COLUMN longitude TYPE bigint"
    execute "ALTER TABLE gps_points ALTER COLUMN latitude TYPE bigint"
    execute "ALTER TABLE gps_points ALTER COLUMN longitude TYPE bigint"
    # Also deal with derived columns
    execute "ALTER TABLE changesets ALTER COLUMN max_lat TYPE bigint"
    execute "ALTER TABLE changesets ALTER COLUMN min_lat TYPE bigint"
    execute "ALTER TABLE changesets ALTER COLUMN max_lon TYPE bigint"
    execute "ALTER TABLE changesets ALTER COLUMN min_lon TYPE bigint"
  end

  def self.down
    execute "ALTER TABLE current_nodes ALTER COLUMN latitude TYPE integer"
    execute "ALTER TABLE current_nodes ALTER COLUMN longitude TYPE integer"
    execute "ALTER TABLE nodes ALTER COLUMN latitude TYPE integer"
    execute "ALTER TABLE nodes ALTER COLUMN longitude TYPE integer"
    execute "ALTER TABLE gps_points ALTER COLUMN latitude TYPE integer"
    execute "ALTER TABLE gps_points ALTER COLUMN longitude TYPE integer"
    # Also deal with derived columns
    execute "ALTER TABLE changesets ALTER COLUMN max_lat TYPE integer"
    execute "ALTER TABLE changesets ALTER COLUMN min_lat TYPE integer"
    execute "ALTER TABLE changesets ALTER COLUMN max_lon TYPE integer"
    execute "ALTER TABLE changesets ALTER COLUMN min_lon TYPE integer"
  end
end
