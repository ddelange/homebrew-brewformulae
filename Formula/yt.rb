class Yt < Formula
  desc "Fine-tuning the use of youtube-dl for audio and videophiles"

  homepage "https://github.com/ddelange/yt"
  url "https://github.com/ddelange/yt/archive/0.3.0.tar.gz"
  sha256 "55b2401bf055541eff24bba1cc4f8b1c5adaa6440a4c54ed382b9ecb25910e2f"

  head "https://github.com/ddelange/yt.git"

  bottle :unneeded

  depends_on "atomicparsley"
  depends_on "homebrew-ffmpeg/ffmpeg/ffmpeg" => ["with-fdk-aac", "with-srt", "with-wavpack", "with-xvid"]
  depends_on "youtube-dl"

  def install
    system "bash", "./install.sh", "--prefix=#{prefix}", "yt"
  end

  test do
    system bin/"yt", "--help"
  end
end
