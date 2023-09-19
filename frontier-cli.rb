class FrontierCli < Formula
    desc "Frontier CLI is the command line interface for interacting with your Frontier Managed Clusters"
    homepage "https://www.eupraxialabs.com/xtreme-products/#federal-frontier"
    url "https://eupraxia-labs-downloads.s3.amazonaws.com/frontier-cli-v0.1.4.tar.gz"
    sha256 "e63240af5683879c5482ab61e49ee1268ecb8f3078f7ae30fce78027998b6810"
  
    def install
        # Determine the user's architecture and OS
        arch = Hardware::CPU.arch
        os = OS.kernel_name

        folder = "frontier-cli"
        filename = "frontier"

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
            folder += "_amd64_v1"
        when :arm64 
            folder += "_arm64"
        else
            print "Unsupported Architecture: #{arch}"
        end
        
        bin.install "#{folder}/#{filename}"
    end
  
    test do
        # # Test the command
        # assert_predicate bin/"frontier", :exist?
        # assert_predicate shell_output("#{bin}/frontier"), :empty?
      end
end
  
