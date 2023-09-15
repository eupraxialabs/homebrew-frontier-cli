class FrontierCli < Formula
    desc "Description of mytool"
    homepage "https://example.com/mytool"
    url "https://eupraxia-labs-downloads.s3.amazonaws.com/frontier-cli-v0.0.11.tar.gz"
    sha256 "0553f2fecee2931e743582a86ba97c6f0ec4bde05c9d0d065978d2a660bdda12"
  
    def install
        # Determine the user's architecture and OS
        arch = Hardware::CPU.arch
        os = OS.kernel_name

        folder = "frontier-cli"
        filename = "frontier-cli"

        case os
        when "Linux"
            folder += "_linux"
        when "Darwin"
            folder += "_darwin"
        else 
            print "Unsupported Operating System: #{os}"
        end

        case arch
        when :x86_64
            folder += "_amd64"
        when :arm64 
            folder += "_arm64"
        else
            print "Unsupported Architecture: #{arch}"
        end
        
        bin.install "#{folder}/#{filename}"
    end
  
    test do
      # TODO: Add tests
    end
end
  
