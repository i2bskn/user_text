# frozen_string_literal: true

require "active_support/core_ext/string/output_safety"
require "rails-html-sanitizer"

require_relative "user_text/helper"
require_relative "user_text/version"

module UserText
  extend ::UserText::Helper
end
