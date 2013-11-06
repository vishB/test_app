 require 'rubygems'
 require 'zip/zip'
 require 'pathname'
 require 'zip/zipfilesystem'
 
class Album < ActiveRecord::Base
  has_many :photos,:dependent => :destroy
  belongs_to :user
  
  def self.get_zip(zip_info,album)
    puts "#{album}"
        
    zipfile_name = "/home/vishal/workspace/fotoz/public/zip/#{album}.zip"
    puts "#{zipfile_name}"
           
    if !File.exists?("#{zipfile_name}")

      Zip::ZipFile.open(zipfile_name, Zip::ZipFile::CREATE) do |zipfile|
        puts zip_info.count
        zip_info.each do |filename,path|
          trimmed_path = path.slice(0..(path.index('l')))
          new_path = "#{Rails.root}" + '/' + 'public'+ trimmed_path
          zipfile.add(filename, "#{new_path}" + '/' + filename)
        end
      end
      return zipfile_name
    else
      return zipfile_name
    end
  end
  
  def self.delete_zip(fpath)
  
    zip_file = fpath

    File.delete(zip_file) if File.exists?(zip_file)

  end
  
end


    
