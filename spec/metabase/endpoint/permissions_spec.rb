# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Permissions do
  include_context 'with login'

  describe 'groups', vcr: true do
    context 'with success' do
      it 'returns all permissions groups' do
        groups = client.groups
        expect(groups).to be_kind_of(Array)
      end
    end
  end
end
