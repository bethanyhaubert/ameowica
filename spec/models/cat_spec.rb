# frozen_string_literal: true

require "rails_helper"

RSpec.describe Cat, type: :model do
  it "creates a cat with an image" do
    cat = create(:cat)
    # how to create this file?
    cat.images.attach(need_to_create_this_file)
    expect(post.images.any?).to eq(true)
  end
end
