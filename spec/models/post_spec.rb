require 'rails_helper'

RSpec.describe User, type: :model do 

  describe 'associations' do 
    it { should belong_to(:user) }
    it { should have_many(:comments) }
  end 

end