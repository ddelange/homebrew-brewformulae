class Yt < Formula
  desc "Fine-tuning the use of youtube-dl for audio and videophiles"

  homepage "https://github.com/ddelange/yt"
  url "https://github.com/ddelange/yt/archive/0.1.1.tar.gz"
  sha256 "5bace03a9e8a2b0151a802d1546ab4a5844cc22c72d5c314efdfb6219c7d3c84"

  version "0.1.1"
  # revision 1
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
