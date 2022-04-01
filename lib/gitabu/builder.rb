# frozen_string_literal: true

require "erb"

# Ruby gem that helps you work with Github API.
module Gitabu
  # Builder class for files given target and template.
  class Builder
    include ERB::Util

    attr_accessor :items, :target, :template

    def self.save(items:, target:, template:)
      new(items, target, template).save
    end

    def initialize(items, target, template)
      @items     = items
      @target    = target
      @template  = template
    end

    def save
      File.open(target, "w+") do |f|
        f.write(render)
      end
    end

    private

    def render
      ERB.new(template).result(binding)
    end
  end
end
