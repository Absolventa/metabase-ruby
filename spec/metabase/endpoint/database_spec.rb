# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Database do
  include_context 'with login'

  describe 'databases', vcr: true do
    context 'with success' do
      it 'returns all databases' do
        databases = client.databases
        expect(databases).to be_kind_of(Hash)
      end
    end
  end
end
