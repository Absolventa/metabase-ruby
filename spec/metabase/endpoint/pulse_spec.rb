# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Pulse do
  include_context 'with login'

  describe 'pulses', vcr: true do
    context 'with success' do
      it 'returns all pulses' do
        pulses = client.pulses
        expect(pulses).to be_kind_of(Array)
      end
    end
  end
end
