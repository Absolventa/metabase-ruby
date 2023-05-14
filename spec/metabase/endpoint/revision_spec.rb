# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Revision do
  include_context 'with login'

  describe 'revisions', vcr: true do
    context 'with success' do
      it 'returns revisions of the object' do
        revisions = client.revisions(entity: :card, id: 1)
        expect(revisions).to be_kind_of(Array)
      end
    end
  end
end
