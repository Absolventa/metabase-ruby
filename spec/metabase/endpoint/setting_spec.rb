# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Setting do
  include_context 'with login'

  describe 'settings', vcr: true do
    context 'when success' do
      it 'returns all settings' do
        settings = client.settings
        expect(settings).to be_kind_of(Array)
      end
    end
  end
end
