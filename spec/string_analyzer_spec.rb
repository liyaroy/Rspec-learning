require 'string_analyzer'

describe StringAnalyzer do
  context 'with valid input' do

    it 'should detect when a string contains vowel' do
      sa = StringAnalyzer.new
      test_string = 'aeiou'
      expect(sa.has_vowels? test_string).to be true
    end

    it 'should detect when a string does not contain vowel' do
      sa = StringAnalyzer.new
      test_string = 'bcd'
      expect(sa.has_vowels? test_string).to be false
    end

    it 'should detect when a string xontails combination of vowels and other letters' do
      sa = StringAnalyzer.new
      test_string = 'qayehigonu'
      expect(sa.has_vowels? test_string).to be true
    end

    it 'should detect when a string has onlly one vowel and no other letters' do
      sa = StringAnalyzer.new
      test_string = 'uuu'
      expect(sa.has_vowels? test_string).to be true
    end

    it 'should detect when a string is  upper class' do
      sa = StringAnalyzer.new
      test_string = "AEIOU"
      expect(sa.has_vowels? test_string).to be true
    end
  end
end


