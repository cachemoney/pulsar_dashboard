## Pulsar Dashboard
This application demonstrates several shippable features that effect every level of the development stack.  I been able to dig into some advanced features of Postgres, building dynamic Angular components as well as testing javascript using Jasmine and phantomJS, rspec unit tests, capybara acceptance tests.

### Rails
 - Uses Devise for Authentication
 - Bootstrap for UX
 - Bower-gem to manage JS dependencies for Bootstrap and Angular
 
 ### Postgres
 - uses [constraints](db/migrate/20160210192833_add_email_constraint_to_users.rb) to further validate signup form.
 - implements fast queries with [Postgres indexes](db/migrate/20160211002253_add_lower_indexes_to_customers.rb)
 - uses [materialized views](db/migrate/20160215232348_create_customer_details_materialized_view.rb) to cache slow queries(address fields)
 - refreshes materialized views using a [database trigger](db/migrate/20160215234716_trigger_refresh_customer_details.rb) based on create/update on address fields
 - user [hstore](db/migrate/20160217160846_add_settings.rb) for key/value pairs for users settings
 
### UI/Frontend
 - [Ajax Search/Pagination](app/assets/javascripts/customers_app.js) using Typeahead Implementation
 - [JS Unit tests](spec/javascripts/customers_app/controllers/customer_search_controller_spec.js) with Jasmine/Teaspoon test runner
 - Uses AngularRoutes to create a SinglePageApp(SPA)
 - [Bootstraps Grid & Components](app/assets/javascripts/templates/customer_detail.html)
 - Uses [AngularResource](app/assets/javascripts/customers_app.js) to load data asyncronously from multiple sources
 - Angular Form Validation and siplaying feedback with [AngularMessages](app/assets/javascripts/templates/customer_detail.html)