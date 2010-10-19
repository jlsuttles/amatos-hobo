# adpated from
# http://www.agileweboperations.com/seed-data-in-ruby-on-rails/

namespace :db do 
  namespace :seed do 
    require 'db/seed_tables'   
    
    desc "dump the tables holding seed data to db/RAILS_ENV_seed.sql. SEED_TABLES need to be defined in config/environment.rb!!!" 
    task :dump => :environment do 
      config = ActiveRecord::Base.configurations[RAILS_ENV] 
      dump_cmd = "mysqldump --user=#{config['username']} --password=#{config['password']} #{config['database']} #{SEED_TABLES.join(" ")} > db/#{RAILS_ENV}_seed.sql" 
      system(dump_cmd) 
    end
    
    desc "load the dumped seed data from db/development_seed.sql into the development database" 
    task :load => :environment do 
      config = ActiveRecord::Base.configurations['development'] 
      system("mysql --user=#{config['username']} --password=#{config['password']} #{config['database']} < db/#{RAILS_ENV}_seed.sql") 
    end 
    
  end 
end


