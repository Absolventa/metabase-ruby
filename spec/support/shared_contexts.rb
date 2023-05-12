# frozen_string_literal: true

RSpec.shared_context 'with client' do
  let(:client) do
    Metabase::Client.new(
      url: 'http://localhost:3030',
      username: 'mb@example.com',
      password: 'p@ssw0rd'
    )
  end
end

RSpec.shared_context 'with login' do
  include_context 'with client'
  before { client.login }
end
