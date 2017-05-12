# Mahallu

What we need to get this up and running
Ruby version 2.3.1
Rails version 5


## Install Ruby
The best way to install any ruby version is using an rvm. Navigate to https://rvm.io/rvm/install to learn more about how to install for Mac OSx (and Ubuntu?).

Once ruby 2.3.1 or higher is installed then fork and download this project

    git clone <your fork url>/mahallu
    cd mahallu
    gem install bundler
    bundle install

`bundle install` should install all dependant gems with their versions locked with Gemfile.lock

Once all the gems are installed then run tests

`rspec`

Navigation:

Curl command (there is no view) 
    
    http://localhost:3000/mosques/1
    