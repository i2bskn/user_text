require "spec_helper"

RSpec.describe UserText do
  it "has a version number" do
    expect(UserText::VERSION).not_to be nil
  end
end
