load("@build_bazel_rules_apple//apple:ios.bzl", "ios_unit_test")

def def_tests(count, frameworks, deps):
    for i in range(count):
        ios_unit_test(
            name = "size_test_" + str(i),
            frameworks = frameworks,
            minimum_os_version = "17.0",
            deps = deps,
        )
