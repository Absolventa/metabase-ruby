# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Util do
  include_context 'with login'

  describe 'logs', vcr: true do
    context 'with success' do
      it 'returns application logs' do
        logs = client.logs
        expect(logs).to be_kind_of(Array)
      end
    end
  end
end
