# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Alert do
  include_context 'with login'

  describe 'alerts', vcr: true do
    context 'when success' do
      it 'returns all alerts' do
        alerts = client.alerts
        expect(alerts).to be_kind_of(Array)
      end
    end
  end
end
