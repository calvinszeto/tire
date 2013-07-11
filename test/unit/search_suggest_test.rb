require 'test_helper'

module Tire::Search

  class SuggestTest < Test::Unit::TestCase

    context "Suggest" do

      should "be serialized to JSON" do
        assert_respond_to Suggest.new("spiceworks", :term => {:field => "text"}), :to_json
      end

			should "encode paramters as JSON" do
				assert_equal( {:suggestion => { :text => "Test", :term => {:field => "text"} }}.to_json,
											Suggest.new("Test", :term => {:field => "text"}).to_json )
			end

    end

  end
end

