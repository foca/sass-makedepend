setup do
  Sass::Makedepend::Tree.new(Sass::Engine.for_file("test/scss/root.scss", {}))
end

test do |tree|
  expected = [
    "test/scss/root.scss: test/scss/foo.scss test/scss/baz.scss test/scss/bar.scss\n\t@touch $@",
    "test/scss/foo.scss: test/scss/baz.scss\n\t@touch $@",
    "test/scss/bar.scss: test/scss/baz.scss\n\t@touch $@",
  ]

  assert_equal expected, tree.to_makefile_rules
end
