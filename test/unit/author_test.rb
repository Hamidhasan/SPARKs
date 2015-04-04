# == Schema Information
#
# Table name: authors
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  email              :string(255)
#  password           :string(255)
#  salt               :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  encrypted_password :string(255)
#

require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
