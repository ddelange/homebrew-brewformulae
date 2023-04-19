class Yt < Formula
  desc "Fine-tuning the use of youtube-dl for audio and videophiles"

  homepage "https://github.com/ddelange/yt"
  url "https://github.com/ddelange/yt/archive/0.4.2.tar.gz"
  sha256 "a4f5310a8ac43d0334996477dd6bafa98b2692c838be7bfc6afb3f50f999a8ef"
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
