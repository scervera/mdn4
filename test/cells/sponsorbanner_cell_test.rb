require 'test_helper'

class SponsorbannerCellTest < Cell::TestCase
  test "show" do
    html = cell("sponsorbanner").(:show)
    assert html.match /<p>/
  end


end
