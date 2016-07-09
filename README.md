# Data Hive

**Initial Setup**

since secrets.yml is not committed, my work-around is to create a new rails app by `rails new test_app` then create a new `secrets.yml` file under `data-hive/config`, and copy the content of `test_app/config/secrets.yml` over to our new file.

**Database creation & initialization**

1. `cd data-hive`
2. `brew update`
3. `brew install pg`
4. `sudo bundle install`
5. `rake db:migrate`

**Running local server**

`rails s -p 3000`
