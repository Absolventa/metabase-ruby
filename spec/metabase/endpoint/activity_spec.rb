# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Activity do
  include_context 'with login'

  describe 'activities', vcr: true do
    context 'when success' do
      it 'returns recent activities' do
        activities = client.activities
        expect(activities).to be_kind_of(Array)
      end
    end
  end
end
