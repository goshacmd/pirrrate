require 'spec_helper'

describe Pirrrate::Util do
  describe '.get_order' do
    it 'gets order value when symbol' do
      expect(described_class.get_order(:seeders)).to eq Pirrrate::ORDERS[:seeders][0]
      expect(described_class.get_order(:leechers, :desc)).to eq Pirrrate::ORDERS[:leechers][1]
    end

    it 'returns passed value if it is a string or a number' do
      expect(described_class.get_order('1')).to eq '1'
    end
  end

  describe '.get_category' do
    it 'gets category value' do
      expect(described_class.get_category(:all)).to eq Pirrrate::CATEGORIES[:all]
      expect(described_class.get_category(:video)).to eq Pirrrate::CATEGORIES[:video][:all]
      expect(described_class.get_category(:audio, :flac)).to eq Pirrrate::CATEGORIES[:audio][:flac]
    end

    it 'returns passed value if it is a string or a number' do
      expect(described_class.get_category('100')).to eq '100'
    end
  end
end
