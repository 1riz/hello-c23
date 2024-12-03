add_rules("mode.debug", "mode.release")
add_requires("unity_test")

set_toolchains("gcc")
set_languages("c23")
set_warnings("all", "extra", "pedantic", "error")

target("hello_lib")
  set_kind("static")
  add_files("src/hello.c")

target("hello")
  set_kind("binary")
  add_deps("hello_lib")
  add_files("src/main.c")
  add_tests("hello_test")

target("hello_test")
  set_kind("binary")
  add_deps("hello_lib")
  add_includedirs("src")
  add_packages("unity_test")
  add_files("tests/hello_test.c")
