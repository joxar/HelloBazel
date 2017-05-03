load(":helo.bzl","helo","mycmd")

helo(
  name = "helo",
  msg = "this is sample message.",
)

mycmd(
  name = "mycmd",
  dir = "../bazel-app",
)

java_test(
  name = "bazel-app-test",
  srcs = glob( ["**/*Test.java"] ),
  deps = [
    "@junit//jar",
  ],
  test_class = "com.snufkin.bazel.AppTest",
)

java_binary(
  name = "bazel-app",
  srcs = glob(["*/main/**/*.java"]),
  main_class = "com.snufkin.bazel.App",
)

