lazy-head-gen
=============

Lazy Head Gen is simply a couple of extra generators for the excellent [Padrino](https://github.com/padrino/padrino-framework) framework.

It is currently tied into assuming that you are using ActiveRecord and MiniTest, as that is what I normally use when developing at Head.

Installation:
-------------

```
gem install lazy-head-gen
```

In a Gemfile:

```ruby
gem 'lazy-head-gen'
```

Padrino gotcha: You'll need to put the `gem 'lazy-head-gen'` requirement *after* `gem 'padrino'` in your Gemfile.
Lazy Head Gen needs Padrino loaded before it can show up in a Gemfile.

Usage
-----

There are currently 2 extra generators, scaffold and admin_controller_tests.

Scaffold
========

To generate a new scaffold:

```
padrino g scaffold ModelName property:type
```

For example to generate a scaffold for Products:

```
padrino g scaffold Product title:string summary:text quantity:integer available_from:datetime display:boolean
```

This will generate the following:

* A controller, helper and controller test for Products
* An index and show view for Products
* A model, model test and database migration for Product
* A blueprints file if one doesn't exist

It will also add:

* A reference to blueprints.rb to test_config.rb if required
* Add a Product blueprint and it's properties to the blueprints.rb file


Admin Controller Tests
======================

To generate a new admin controller test:

```
padrino g admin_controller_tests ControllerName
```

Controller name should be the name of an existing admin controller.

For example to generate an admin controller test for products:

```
padrino g admin_controller_tests products
```

This will generate a fully tested admin controller test for the 7 CRUD routes.

Other requirements
------------------

test_config.rb
==============

You will need to add the following code to your test_config.rb for the generated tests to work correctly.

```
# Allows testing as a logged in admin user
#
def login_as_admin(account)
  post "/admin/sessions/create", {
    :email => account.email, :password => "password"
  }
  follow_redirect!
end

# Standard assertions to test when a user is not logged in
# and trys to view an admin page
#
def assert_not_logged_in
  assert !ok?
  assert_equal 302, status
  assert_equal "http://example.org/admin/sessions/new", location
end

# Assertions to test when a user is not logged in
# and trys to call a destroy action
#
def assert_destroy_not_logged_in
  assert !ok?
  assert_equal 405, status
  assert_nil location
end

# Standard assertions to test when a user is logged in
# and trys to view an admin page using GET
#
def assert_logged_in
  assert ok?
  assert_equal 200, status
end

# Returns a key and new value which is set depending
# on the old values class.
#
def get_key_and_value(instance)
  # Discount PK and Timestamps
  keys = instance.attributes.keys.delete_if do |k|
    ["id", "created_at", "updated_at"].include?(k) or instance.attributes[k].nil?
  end

  key = old_value = new_value = nil

  if keys.length > 0
    # Pick a key at random
    key = keys[rand(keys.length)]
    old_value = instance.attributes[key]

    case old_value.class.name
      when "Integer"
        new_value = old_value + 1
      when "Time"
        new_value = old_value + 36000
      when "String"
        new_value = "This is a modified string"
      when "TrueClass"
        new_value = false
      when "FalseClass"
        new_value = true
      else
        puts old_value.class.name
    end
  end

  return [key, new_value]
end

# Some shorthands for last_request and last_response varibles
#
def path
  last_request.path
end

def session
  last_request.env['rack.session']
end

def body
  last_response.body
end

def status
  last_response.status
end

def location
  last_response.original_headers["Location"]
end

def ok?
  last_response.ok?
end
```

blueprints.rb
=============

If you already have a blueprints.rb file in your current Padrino project then you will need to add the following for some of the tests to work:

```
module Factory
  class << self

    def make_admin
      account = Account.make(:admin)
      account.save!
      account
    end

  end
end
```

Also the scaffold generator looks for *# END blueprints* as a marker to insert the generated models blueprint. This is a bit... well crap... but I currently haven't thought of another way to do it.

To Do List
----------

* Finish writing up the Read Me
* Get generators to check the test_config.rb to make sure that the test helpers have been added
* Tighten up some of the other requirements, certainly the blueprint inserts


Contributing to lazy-head-gen
-----------------------------

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
---------

Copyright (c) 2012 Stuart Chinery, http://www.headlondon.com
See LICENSE.txt for further details.