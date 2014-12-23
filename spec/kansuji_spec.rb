# -*- coding: utf-8 -*-
require 'rspec'
require_relative '../kansuji'

describe 'Kansuji Class' do
  context 'initialize' do
    it 'can encode int' do
      expect(Kansuji.encode(1  )).to eql('一')
      expect(Kansuji.encode(10 )).to eql('十')
      expect(Kansuji.encode(123)).to eql('百二十三')
      expect(Kansuji.encode(321)).to eql('三百二十一')
    end
  end
end
