# frozen_string_literal: true

require_relative '../lib/spelly'

describe Spelly do
  it 'should load a dictionary given en_US language' do
    expect(Spelly.new('en_US').dict).to be_a_kind_of(Hunspell)
  end

  context '#spell_check en_GB' do
    it 'should return suggestions for misspelt words' do
      words = %w[girll boy dog]
      spelly = Spelly.new('en_GB')
      expect(spelly.spell_check(words)).to eql [{ word: 'girll', suggest: ['grill', 'girl', 'gill', 'girls','girly', 'girl l'] }]
    end
  end

  it 'should load a dictionary given pt_BR language' do
    expect(Spelly.new('pt_BR').dict).to be_a_kind_of(Hunspell)
  end

  context '#spell_check pt_PT' do
    it 'should return suggestions for misspelt words' do
      words = %w[portugues analis do brazil saude ossea pre-menopausa pos-menopausa]
      spelly = Spelly.new('pt_PT')
      expect(spelly.spell_check(words)).to eql [
        { suggest: %w[português portuguesa], word: 'portugues' },
        { suggest: ['inalas', 'anilas', 'anais', 'analisa', 'analise', 'analiso', 'anal is', 'anal-is'], word: 'analis' },
        { suggest: %w[Brasil braile braille braquial], word: 'brazil' },
        { suggest: %w[saúde saudei sande salde], word: 'saude' },
        { suggest: ['óssea'], word: 'ossea' },
        { suggest: %w[per-menopausa pré-menopausa ore-menopausa pare-menopausa apre-menopausa pire-menopausa are-menopausa pie-menopausa ire-menopausa pro-menopausa pró-menopausa põe-menopausa menopausa pausadamente andropausa], word: 'pre-menopausa' },
        { suggest: %w[pós-menopausa pôs-menopausa os-menopausa posa-menopausa pose-menopausa pois-menopausa poso-menopausa aos-menopausa por-menopausa nos-menopausa tos-menopausa dos-menopausa mos-menopausa los-menopausa pus-menopausa], word: 'pos-menopausa' }
      ]
    end
  end
end
