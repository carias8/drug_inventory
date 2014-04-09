Drug Inventory for Planned Parenthood

Running Sinatra + ActiveRecord on MySql and WEBrick


To get started make sure to run bundler to get the required gems and run the sql file to set up the db

```
bundle install
mysql <ddrugdb.sql
```

Then just `ruby main.rb` and sinatra will take the stage



Architecture

{ NextGen/SS } -> [ Cleaning Script ] -> { OurData } ⇔ ( Sinatra+AR ) ⇔ [ UI ]


Data source:

will be pulled in from wherever we can. Right now this seems like either NextGen or some spreadsheet.
Will be done nightly (rake/cron) 

(Cleaning Script will be using ActiveRecord or raw sql for db + ruby has CSV lib for spreadsheets)


Data architecture:


Pages:


-index       - inventory list

-admin index - editable inventory list

-admin config- config for user



