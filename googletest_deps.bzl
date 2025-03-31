"""Load dependencies needed to use the googletest library as a 3rd-party consumer."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def googletest_deps():
    """Loads common dependencies needed to use the googletest library."""

    if not native.existing_rule("com_googlesource_code_re2"):
        http_archive(
            name = "com_googlesource_code_re2",  # 2023-03-17T11:36:51Z
            sha256 = "a835fe55fbdcd8e80f38584ab22d0840662c67f2feb36bd679402da9641dc71e",
            strip_prefix = "re2-2024-07-02",
            urls = ["https://github.com/google/re2/releases/download/2024-07-02/re2-2024-07-02.zip"],
        )

    if not native.existing_rule("com_google_absl"):
        http_archive(
            name = "com_google_absl",  #  2025-01-27
            sha256 = "c51713a5346679e5c3def73a4d683ff64aca5558261d92a9d1f062923b41da9c",
            strip_prefix = "abseil-cpp-20250127",
            urls = ["https://github.com/abseil/abseil-cpp/archive/refs/tags/20250127.1.zip"],
        )
