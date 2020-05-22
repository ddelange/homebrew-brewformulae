class Yt < Formula
  desc "Fine-tuning the use of youtube-dl for audio and videophiles"

  homepage "https://github.com/ddelange/yt"
  url "https://github.com/ddelange/yt/archive/0.1.0.tar.gz"
  sha256 "7e90ff7ac0b0e845f50d5764580939690600b2b3e8c3e2febff5faf50b030d01"

  version "0.1.0"
  revision 1
  head "https://github.com/ddelange/yt.git"

  bottle :unneeded

  depends_on "homebrew-ffmpeg/ffmpeg/ffmpeg" => ["with-fdk-aac", "with-srt", "with-wavpack", "with-xvid"]
  depends_on "youtube-dl"
  depends_on "atomicparsley"

  def install
    system "bash", "./install.sh", "--prefix=#{prefix}", "yt"
  end

  test do
    system bin/"yt", "--help"
  end
end
