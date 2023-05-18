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
  has_one_attached :pdf

  after_save :transfer_to_public_directory, if: :public?
  after_destroy :remove_from_public_directory

  def transfer_to_public_directory
    return unless pdf.attached?

    # Remove existing file from the public directory if it exists
    remove_from_public_directory if File.exist?(public_file_path)

    # Transfer the attached file to the public directory
    FileUtils.cp(pdf_path, public_file_path)
  end

  def remove_from_public_directory
    return unless File.exist?(public_file_path)

    # Remove the file from the public directory
    File.delete(public_file_path)
  end

  private

  def pdf_path
    ActiveStorage::Blob.service.send(:path_for, pdf.key)
  end

  def public_file_path
    Rails.public_path.join(pdf_filename)
  end

  def pdf_filename
    "#{pdf.filename}"
  end
end
