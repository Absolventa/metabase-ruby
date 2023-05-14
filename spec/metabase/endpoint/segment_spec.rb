# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Segment do
  include_context 'with login'

  describe 'segments', vcr: true do
    context 'with success' do
      it 'returns all segments' do
        segments = client.segments
        expect(segments).to be_kind_of(Array)
      end
    end
  end
end
