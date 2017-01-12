set :user, "narco"
set :rails_env, "production"
server "narcoisabitch.com", :roles => %w(web app db), :primary => true, :user => "narco"
server "narcoisabitch.com", :roles => %w(web app), :user => "narco"
