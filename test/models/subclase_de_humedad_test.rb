require 'test_helper'

class SubclaseDeHumedadTest < ActiveSupport::TestCase
  subject { build_stubbed :subclase_de_humedad }

  describe 'validaciones' do
    it 'es válida' do
      subject.must_be :valid?
    end

    it 'requiere valor' do
      build_stubbed(:subclase_de_humedad, valor: nil).wont_be :valid?
    end
  end

  describe 'asociaciones' do
    subject { humedad.subclases.first }
    let(:humedad) { create :humedad, con_subclases: 1 }

    it 'se recorre en ambos sentidos' do
      humedad.subclases.first.must_equal subject

      subject.humedades.first.must_equal humedad
    end
  end
end
