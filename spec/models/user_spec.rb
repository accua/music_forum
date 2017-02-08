require 'rails_helper'

describe User do
  it { should validate_presence_of :user_name }
  it { should belong_to :list }
  it { should have_many :items }
  it { should have_many(:lists).through(:items)}
end
