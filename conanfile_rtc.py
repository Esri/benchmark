from conans import ConanFile


class BenchmarkConan(ConanFile):
    name = "benchmark"
    version = "1.5.0"
    url = "https://github.com/Esri/benchmark/tree/runtimecore"
    license = "https://github.com/Esri/benchmark/blob/runtimecore/LICENSE"
    description = "A library to benchmark code snippets similar to unit tests."

    # RTC specific triple
    settings = "platform_architecture_target"

    def package(self):
        base = self.source_folder + "/"
        relative = "3rdparty/benchmark/"

        # headers
        self.copy("*", src=base + "include", dst=relative + "include")

        # libraries
        output = "output/" + str(self.settings.platform_architecture_target) + "/staticlib"
        self.copy("*" + self.name + "*", src=base + "../../" + output, dst=output)
