# frozen_string_literal: true

require 'ffi/hunspell'

class Spelly
  attr_accessor :dict

  def initialize(language)
    path = File.expand_path('../lib/dict', File.dirname(__FILE__))
    FFI::Hunspell.directories = FFI::Hunspell.directories << path

    @dict = FFI::Hunspell.dict(language)
  end

  def spell_check(words)
    results = []

    words.each do |word|
      unless @dict.check?(word)
        results << { word: word, suggest: @dict.suggest(word) }
      end
    end

    results
  end
end
