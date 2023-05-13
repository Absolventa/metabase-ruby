# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::XRay do
  include_context 'with login'

  describe 'x_ray_card', vcr: true do
    context 'with success' do
      # obsolte, needs to be removed
      xit 'returns x-ray job' do
        x_ray = client.x_ray_card(1)
        expect(x_ray).to be_kind_of(Hash)
      end
    end
  end
end
