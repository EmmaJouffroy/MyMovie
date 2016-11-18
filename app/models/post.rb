# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  film        :string
#  citation    :text
#  realisateur :string
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates_presence_of :film, :citation, :realisateur
  has_and_belongs_to_many :tags

  def tags_to_s

  end

  def tags_to_s=(value)
    value.split(', ').each do |v|
      tags << Tag.where(title: v).first_or_create
    end
  end
end
