class Jp < Formula
  desc "Command-line interface to JMESPath, a query language for JSON"
  homepage "http://jmespath.org/"
  url "https://github.com/jmespath/jp/releases/download/0.2.0/jp-0.2.0.tar.gz"
  sha256 "8083f87df1bd550f0cddbb143be82f10e2e6cadaf6b633d133656c593f25e666"
  license "Apache-2.0"

  def install
    bin.install "jp"
  end

  test do
    assert_equal "bar\n", pipe_output("#{bin}/jp -u foo", '{"foo": "bar"}')
  end
end
