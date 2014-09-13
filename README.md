# Contact Validations

This template provides a basic [Sinatra](http://www.sinatrarb.com/) application
that includes:

- [Active Record](http://guides.rubyonrails.org/active_record_querying.html)
using [sinatra-activerecord](https://github.com/janko-m/sinatra-activerecord)
- [PostgreSQL](http://www.postgresql.org/) for a database
- [RSpec](https://github.com/rspec/rspec) for unit testing
- [Capybara](https://github.com/jnicklas/capybara) for acceptance testing
- [Pry](https://github.com/pry/pry) for debugging

## Getting Started

```no-highlight
# Clone down this template
git clone git@github.com:LaunchAcademy/contact_validations.git

# Move into your app's directory
cd contact_validations

# Install all the gems
bundle install

# Create the database
rake db:create

# Migrate the database
rake db:migrate

# Copy the db schema to test db
rake db:test:prepare
```
