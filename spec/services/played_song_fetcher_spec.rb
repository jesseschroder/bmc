require 'rails_helper'

RSpec.describe PlayedSongFetcher do
  subject { described_class.fetch_and_save }

  it { is_expected.to be true }

end
