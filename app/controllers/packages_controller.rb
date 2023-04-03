  require "zlib"
  require 'open-uri'
  require 'json'

class PackagesController < ApplicationController
def index
  url = 'http://cran.r-project.org/src/contrib/PACKAGES.gz'
  package_list = URI.open(url)
  Zlib::GzipReader.open(package_list){|gz|
    @package=JSON.parse(gz.read)
  }
end
#   def index
#     @package=compress_file
#   end
#
#
# def compress_file
#   zipped = "http://cran.r-project.org/src/contrib/PACKAGES.gz"
#   Zlib::GzipWriter.open(zipped) do |gz|
#     gz.mtime = File.mtime(file_name)
#     gz.orig_name = file_name
#     gz.write IO.binread(file_name)
#   end
# end



  def show
  end


end
