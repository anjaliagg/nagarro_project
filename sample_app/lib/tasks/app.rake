namespace :app do

task :ensure_development_environment => :environment do
	if Rails.env.production?
		raise"\nI'm sorry Anjali. I can't do that.\n(You are asking me to drop your production database.)"
	end
end

desc "Reset"
task :reset => [:ensure_development_environment, "db:drop", "db:create", "db:migrate", "db:seed", "app:populate" ]

desc "Populate the database with development data"
task :populate => :environment do
	[	{:first_name => "Anjali", :last_name => "Aggarwal"},
		{:first_name => "Abhinav", :last_name => "Saxena"},
		{:first_name => "Malvika", :last_name => "Gupta"},
		{:first_name => "Aditi", :last_name => "Sangar"},
	].each do |attributes|
		Person.where(attributes).first_or_create!
	end
end

end