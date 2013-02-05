# Spelly

This is a simple to use spell check gem that returns back the mispelt words and their common suggestions.  

## Installation

Add this line to your application's Gemfile:

    gem 'spelly'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spelly

## Usage

You can create the Spelly object by calling

    # passing in the language dictionary
    # could also call in en_AU, en_CA, etc.
    spelly = Spelly.new("en_GB")

A full list of dictionaries can be found here:
http://wiki.openoffice.org/wiki/Dictionaries#English_.28AU.2CCA.2CGB.2CNZ.2CUS.2CZA.29

Then you can run your spell check against an array of words by simply calling

    > words = %w/car bat yardd/
    => ["car", "bat", "yardd"] 
    > s.spell_check words
    => [{:word=>"yardd", :suggest=>["yards", "yard", "yard d"]}] 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## TODO: 
Add ability to allow end users to easily upload new dictionary files.
