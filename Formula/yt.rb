class Yt < Formula
  desc "Fine-tuning the use of youtube-dl for audio and videophiles"

  homepage "https://github.com/ddelange/yt"
  url "https://github.com/ddelange/yt/archive/0.4.0.tar.gz"
  sha256 "5bfda40960462479600da3a1ce622d688d4edc3888cfe085c5c4092f841dcc02"
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
