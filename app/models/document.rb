# == Schema Information
#
# Table name: documents
#
#  id         :bigint           not null, primary key
#  name       :string
#  public     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Document < ApplicationRecord
  has_one_attached :file

  after_save :transfer_to_public_directory, if: :public?
  after_destroy :remove_from_public_directory, if: :public?
  after_update :remove_from_public_directory, :transfer_to_public_directory, if: :public?

  def transfer_to_public_directory
    return unless file.attached?

    # Remove existing file from the public directory if it exists
    remove_from_public_directory if File.exist?(public_file_path)

    # Transfer the attached file to the public directory
    FileUtils.cp(file_path, public_file_path)
  end

  def remove_from_public_directory
    return unless File.exist?(public_file_path)

    # Remove the file from the public directory
    File.delete(public_file_path)
  end

  private

  def file_path
    ActiveStorage::Blob.service.send(:path_for, file.key)
  end

  def public_file_path
    Rails.public_path.join(file_filename)
  end

  def file_filename
    "#{file.filename}"
  end
end
