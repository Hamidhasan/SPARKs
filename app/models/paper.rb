# == Schema Information
#
# Table name: papers
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Paper < ActiveRecord::Base
  attr_accessible :title, :paperFile
  mount_uploader :paperFile, PaperFileUploader
end
