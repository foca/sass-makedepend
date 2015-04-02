require "sass"
require "sass/makedepend/version"

module Sass
  module Makedepend
    class Tree
      attr_reader :root
      attr_reader :dependencies

      def initialize(engine)
        @root = engine.options[:filename]
        @dependencies = engine.dependencies.map { |dep| Tree.new(dep) }
      end

      def to_rule
        if dependencies.any?
          "%s: %s\n\t@touch $@" % [root, dependencies.map(&:root).join(" ")]
        end
      end

      def to_makefile_rules
        [to_rule, *dependencies.map(&:to_rule)].compact
      end
    end
  end
end
