require 'test_helper'

describe Visitor do

  # 1) set up phase (reloaded before each `it` description is executed):
  let(:visitor_params) { {email: 'user@example.com'} }
  let(:visitor) { Visitor.new visitor_params }

  # the actual behavior description of Visitor is done via `it` method calls
  # 2) execute code and 3) compare actual with expected results phases:
  it 'is valid when created with valid parameters' do
    # .must_be functions as a comparison operator
    visitor.must_be :valid?
  end

  it 'is invalid without an email' do
    # Delete email before visitor let is called
    visitor_params.delete :email
    visitor.wont_be :valid? # Must not be valid without email
    visitor.errors[:email].must_be :present? # Must have error for missing email
  end

end

# Same as the old syntax.
# !!!!!! COMPARE and glean the guiding implications of the new DSL !!!!!!
  # class VisitorTest < ActiveSupport::TestCase
  #
  #   def valid_params
  #     { email: 'john@example.com' }
  #   end
  #
  #   def test_valid
  #     visitor = Visitor.new valid_params
  #     assert visitor.valid?, "Can't create with valid params: #{visitor.errors.messages}"
  #   end
  #
  #   def test_invalid_without_email
  #     params = valid_params.clone
  #     params.delete :email
  #     visitor = Visitor.new params
  #     refute visitor.valid?, "Can't be valid without email"
  #     assert visitor.errors[:email], "Missing error when without email"
  #   end
  #
  # end
