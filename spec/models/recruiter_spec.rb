require 'rails_helper'

RSpec.describe Recruiter, type: :model do
  describe print_text('FACTORY', color: :purple) do
    it 'has a valid factory' do
      expect(build(:recruiter))
    end
  end
end
