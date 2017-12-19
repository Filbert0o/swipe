require 'rails_helper'

describe Balance, type: :model do
    it { should have_valid(:available).when(120, 305.01, nil) }
    it { should have_valid(:current).when(304, 1230.01, nil) }
    it { should have_valid(:current).when(10000000, nil) }

    it { should have_valid(:account_id).when(1, 100) }
end
