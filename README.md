# GXE Menu

A Menu Service with GraphQL endpoint built with Ruby on Rails.

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/)
- [SQLite3](https://www.sqlite.org/)
- [Rails](https://rubyonrails.org/)

### Set up for local development

1. Get a copy of this project by cloning the repo. `git clone https://github.com/penzur/gxe-menu.git`.
	
2. Run `cd gxe-menu` and then do `bundle install`.
3. Set up db by running `rake db:create db:migrate db:seed`.
4. Run the local server `rails s`.
5. Access the graphiql gui through [http://localhost:3000/graphiql](http://localhost:3000/graphiql).