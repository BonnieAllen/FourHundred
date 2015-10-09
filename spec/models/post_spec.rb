require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user){ FactoryGirl.create(:user) }

  it { should respond_to :image }
  it { should respond_to :user_id }
end
