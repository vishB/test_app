class Photo < ActiveRecord::Base
  belongs_to :album
  belongs_to :user
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => ["180x130#"] }
  
  #searchable do
  # string :name
  #end
  
  include Rails.application.routes.url_helpers

  def to_jq_upload
    {
      "name" => read_attribute(:avatar_file_name),
      "size" => read_attribute(:avatar_file_size),
      "url" => avatar.url(:original),
      "delete_url" => photos_path,
      "delete_type" => "DELETE",
      #"create_url" => albums_path
    }
  end
  
end

