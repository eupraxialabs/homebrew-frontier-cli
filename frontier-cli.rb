class FrontierCli < Formula
    desc "Description of mytool"
    homepage "https://example.com/mytool"
    url "file:///Users/franciswilliams/Documents/Projects/frontier-cli/dist-0.0.1.tar.gz"
    sha256 "db7992145e673666f3f7362e2bb583e6ca1f63165c02391a719eaef92e28ef1c"
  
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
  
