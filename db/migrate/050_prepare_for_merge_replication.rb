# Only for PostgreSQL databases - will not work on MySQL.

class PrepareForMergeReplication < ActiveRecord::Migration
  def self.up
    execute "ALTER SEQUENCE changesets_id_seq INCREMENT BY 8"
    execute "ALTER SEQUENCE current_nodes_id_seq INCREMENT BY 8"
    execute "ALTER SEQUENCE current_relations_id_seq INCREMENT BY 8"
    execute "ALTER SEQUENCE current_ways_id_seq INCREMENT BY 8"
  end

  def self.down
    execute "ALTER SEQUENCE changesets_id_seq INCREMENT BY 1"
    execute "ALTER SEQUENCE current_nodes_id_seq INCREMENT BY 1"
    execute "ALTER SEQUENCE current_relations_id_seq INCREMENT BY 1"
    execute "ALTER SEQUENCE current_ways_id_seq INCREMENT BY 1"
  end
end
