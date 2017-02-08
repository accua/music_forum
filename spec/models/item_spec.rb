require 'rails_helper'

describe Item do
  it { should validate_presence_of :artist }
  it { should validate_presence_of :title }
  it { should validate_presence_of :link }
  it { should belong_to :user }
  it { should belong_to :list }
end
