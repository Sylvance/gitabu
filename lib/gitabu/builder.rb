# frozen_string_literal: true

require "erb"

# Ruby gem that helps you work with Github API.
module Gitabu
  # Builder class for files given target and template.
  class Builder
    include ERB::Util

    attr_accessor :class_name, :items, :target, :template, :version

    def self.save(class_name:, items:, target:, template:, version:)
      new(class_name, items, target, template, version).save
    end

    def initialize(class_name, items, target, template, version)
      @class_name = class_name
      @items      = items
      @target     = target
      @template   = template
      @version    = version
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
