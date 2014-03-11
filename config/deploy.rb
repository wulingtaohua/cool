set :application, "cool"
set :repository,  "https://github.com/wulingtaohua/cool.git"

set :scm, :git
# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :deploy_to, "/app/coohua/public/#{application}" #the dir that deploy to remote machine
set :user, "wangxin"
set :password, "coohua#007"
set :use_sudo, false



role :web, "115.28.147.127"                          # Your HTTP server, Apache/etc
role :db, "115.28.147.127"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do

   task :cleanup do
     run "#{try_sudo} rm -rf #{deploy_to}"
   end
 # task :start do ; end
 # task :stop do ; end
 ## task :restart, :roles => :app, :except => { :no_release => true } do
  #  run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  #end
end
