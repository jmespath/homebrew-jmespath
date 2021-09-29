class Jp < Formula
  desc "Command-line interface to JMESPath, a query language for JSON"
  homepage "http://jmespath.org/"
  url "https://github.com/jmespath/jp/releases/download/0.1.3/jp-0.1.3.tar.gz"
  sha256 "69c9f545d552125eff246e9275cb5205109a232ff9b40b94bfab10f226caae65"

  bottle :unneeded

  def install
    bin.install "jp"
  end

  test do
    assert_equal "bar\n", pipe_output("#{bin}/jp -u foo", '{"foo": "bar"}')
  end
end
