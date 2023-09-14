class Yt < Formula
  desc "Fine-tuning the use of youtube-dl / yt-dlp for audio and videophiles"

  homepage "https://github.com/ddelange/yt"
  url "https://github.com/ddelange/yt/archive/0.5.0.tar.gz"
  sha256 "cd3b5619d58e2b5d6868536fe4a24d96a382158a9c07e8a1cd06a3899b5686db"
  head "https://github.com/ddelange/yt.git"

  depends_on "atomicparsley"
  depends_on "homebrew-ffmpeg/ffmpeg/ffmpeg" => ["with-fdk-aac", "with-srt", "with-wavpack", "with-xvid", "enable-audiotoolbox"]
  depends_on "yt-dlp"

  def install
    system "bash", "./install.sh", "--prefix=#{prefix}", "yt"
  end

  test do
    system bin/"yt", "--help"
  end
end
