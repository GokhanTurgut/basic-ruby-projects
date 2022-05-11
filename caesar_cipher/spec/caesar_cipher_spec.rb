# frozen_string_literal: true

require_relative '../lib/caesar_cipher'

RSpec.describe 'Caesar Cipher' do
  describe 'takes a sentence and shifting factor then returns shifted characters' do
    it 'works with single character' do
      expect(caesar_cipher('a', 1)).to eq('b')
    end

    it 'works with 26 as shifting number' do
      expect(caesar_cipher('a', 26)).to eq('a')
    end

    it 'works with bigger shifting numbers than 26' do
      expect(caesar_cipher('a', 27)).to eq('b')
    end

    it 'works with word with all downcase characters' do
      expect(caesar_cipher('what', 5)).to eq('bmfy')
    end

    it 'works with capital letter, space and special characters' do
      expect(caesar_cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
    end
  end
end
