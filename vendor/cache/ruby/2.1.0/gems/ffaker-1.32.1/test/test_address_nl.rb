# encoding: utf-8

require 'helper'

class TestAddressNL < Test::Unit::TestCase

  def setup
    @tester = Faker::AddressNL
  end

  def test_city
    assert_match /[ a-z]+/, @tester.city
  end

  def test_province
    assert_match /[ a-z]/, @tester.province
  end

  def test_zip_code
    assert_match /^\d{4}\s\w{2}$/, @tester.zip_code
  end

  def test_street_name
    assert_match /[ a-z]+/, @tester.street_name
  end

  def test_street_address
    assert_match /[ a-z]+/, @tester.street_address
  end
end
