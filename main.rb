#!/usr/bin/env ruby -I ../lib -I lib
require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'mysql2',
  :database =>  'drugdb',
  :host     => 'localhost',
  :username => 'root',
  :password => 'ifeveryporkchopwereperfect'
)

# Loading our models
Dir[File.dirname(__FILE__) + '/models/*.rb'].each do |file|
  puts "Requiring #{file}"
  require file
end

# Loading our router
require './router'


# Everything past the word layout is in fact the layout.
#  The view gets rendered in the call to yield
__END__
@@layout

<html>
  <title>
    <%= @title %>
  </title>
  <script type="text/javascript" src="jquery-1.11.0.min.js"></script>
  <link rel="stylesheet" type="text/css" href="layout.css">
  <%= yield %>
</html>




