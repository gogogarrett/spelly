# Spelly

This is a simple to use spell check gem that returns back the misspelled words and their common suggestions.

## Dependencies

This gem depends on [Hunspell](http://hunspell.github.io/) lib.

On **MacOS** it is being shipped as a part of the system from version 10.6 (Snow Leopard)

On **Debian** (and derivatives) you might need to install Hunspell prior to this gem installation/usage:

````shell
sudo apt update
sudo apt install hunspell
````

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
    spelly = Spelly.new("en_US")

The gem itself is shipped with `en_GB`, `en_US`, `pt_BR` and `pt_PT` dictionaries.

For **additional dictionaries** see:
[LibreOffice](http://cgit.freedesktop.org/libreoffice/dictionaries/tree/), [LibreOffice extensions](http://extensions.libreoffice.org/extensions?getCategories=Dictionary&getCompatibility=any&sort_on=positive_ratings&path=%2FLibreOffice-Extensions-and-Templates%2Fextension-center&portal_type=PSCProject&SearchableText=), [Mozilla Add-Ons](https://addons.mozilla.org/en-us/firefox/language-tools/) pages.

To use additional dictionaries place them in one of the following dicrectories (**system dependant**):

````shell
# User installed dictionaries
    ${HOME}/.hunspell_default

# OS X brew-instlled hunspell
    ${HOME}/Library/Spelling

# Debian
    /usr/local/share/myspell/dicts
    /usr/share/myspell/dicts

# Ubuntu
    /usr/share/hunspell

# Fedora
    /usr/local/share/myspell
    /usr/share/myspell

# Mac Ports
    /opt/local/share/hunspell
    /opt/share/hunspell
````

Then you can run your spell check against an array of words by simply calling

    > spelly = Spelly.new("en_US")
    > words = %w/car bat yardd/
    > spelly.spell_check words
    => [{:word=>"yardd", :suggest=>["yards", "yard", "yard d"]}]

## Contributing

1. Fork it
1. Create your feature branch (`git checkout -b my-new-feature`)
1. Test your changes (`bundle exec rspec`)
1. Commit your changes (`git commit -am 'Add some feature'`)
1. Push to the branch (`git push origin my-new-feature`)
1. Create new Pull Request

