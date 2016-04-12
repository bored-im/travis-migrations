class JobsDropIndexType < ActiveRecord::Migration
  self.disable_ddl_transaction!

  def up
    execute "DROP INDEX CONCURRENTLY index_jobs_on_type"
  end

  def down
    execute "CREATE INDEX CONCURRENTLY index_jobs_on_type ON jobs (type)"
  end
end
