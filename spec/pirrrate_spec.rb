require 'spec_helper'

describe Pirrrate do
  describe '.search' do
    it 'creates a search list' do
      list = Pirrrate.search('breaking bad s01e01', category: :video, order: :size, page: 42)

      expect(list.query).to eq 'breaking bad s01e01'
    end
  end
end
