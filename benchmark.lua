project "benchmark"

dofile(_BUILD_DIR .. "/static_library.lua")

configuration { "*" }

uuid "A83E4955-539D-4F1C-AC26-35DB8047C142"

includedirs {
  ".",
  "include",
}

files {
  "**.h",
  "src/benchmark.cc",
  "src/benchmark_api_internal.cc",
  "src/benchmark_name.cc",
  "src/benchmark_register.cc",
  "src/benchmark_runner.cc",
  "src/colorprint.cc",
  "src/commandlineflags.cc",
  "src/complexity.cc",
  "src/console_reporter.cc",
  "src/counter.cc",
  "src/csv_reporter.cc",
  "src/json_reporter.cc",
  "src/reporter.cc",
  "src/sleep.cc",
  "src/statistics.cc",
  "src/string_util.cc",
  "src/sysinfo.cc",
  "src/timers.cc",
}

if (_PLATFORM_ANDROID) then
end

if (_PLATFORM_COCOA) then
end

if (_PLATFORM_IOS) then
end

if (_PLATFORM_LINUX) then
end

if (_PLATFORM_MACOS) then
end

if (_PLATFORM_WINDOWS) then
end

if (_PLATFORM_WINUWP) then
end
