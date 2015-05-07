class Frcbam < Formula

head do
    url "https://github.com/vezzi/FRC_align.git"

    depends_on "cmake" => :build
    depends_on "bamtools"
    depends_on "boost"
  end


  def install
    system "mkdir build" 
    system "cd build" 
    system "cmake", "..", *std_cmake_args
    system "make"
    bin.install "bin/FRC"
  end
end
