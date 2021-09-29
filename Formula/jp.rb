class Jp < Formula
  desc "Command-line interface to JMESPath, a query language for JSON"
  homepage "http://jmespath.org/"
  url "https://github.com/jmespath/jp/archive/0.2.0.tar.gz"
  sha256 "9c46d0683d8bf657505404710056c01c54b5403bc76725a923dc193522f2559b"
  license "Apache-2.0"

  bottle :unneeded

  def install
    bin.install "jp"
  end

  test do
    assert_equal "bar\n", pipe_output("#{bin}/jp -u foo", '{"foo": "bar"}')
  end
end
