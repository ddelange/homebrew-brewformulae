class Yt < Formula
  desc "Fine-tuning the use of youtube-dl for audio and videophiles"

  homepage "https://github.com/ddelange/yt"
  url "https://github.com/ddelange/yt/archive/0.4.1.tar.gz"
  sha256 "30b0a3ca343044372903b4db12deb97b3f64c10958dff35d60962449ca814fe1"
  head "https://github.com/ddelange/yt.git"

  depends_on "atomicparsley"
  depends_on "homebrew-ffmpeg/ffmpeg/ffmpeg" => ["with-fdk-aac", "with-srt", "with-wavpack", "with-xvid"]
  depends_on "ddelange/brewformulae/youtube-dl"

  def install
    system "bash", "./install.sh", "--prefix=#{prefix}", "yt"
  end

  test do
    system bin/"yt", "--help"
  end
end
