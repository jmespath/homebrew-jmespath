class Jp < Formula
  desc "Command-line interface to JMESPath, a query language for JSON"
  homepage "http://jmespath.org/"
  url "https://github.com/jmespath/jp/archive/0.1.0.tar.gz"
  sha256 "5f140fe8320dbea391bcb1b0fa800a2a42dca7a381485aaa039a6d23a5920966"

  depends_on "go" => :build

  def install
    system "scripts/build-self-contained.sh"
    bin.install "jp"
  end

  test do
    assert_equal "bar\n", pipe_output("#{bin}/jp -u foo", '{"foo": "bar"}')
  end
end
