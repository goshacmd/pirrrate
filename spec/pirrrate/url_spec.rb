require 'spec_helper'

describe Pirrrate::URL do
  subject(:url) { described_class.new('http://thepiratebay.se', '', [:page, :query], ['0', 'yo']) }

  describe '#[]' do
    it 'accesses segment value' do
      expect(url[:page]).to eq '0'
    end
  end

  describe '#[]=' do
    it 'sets segment value' do
      expect { url[:query] = 'bb' }.to change { url[:query] }.from('yo').to('bb')
    end
  end

  describe '#to_uri' do
    it 'creates a URI' do
      expect(url.to_uri).to eq URI('http://thepiratebay.se/0/yo')
    end
  end
end
