# frozen_string_literal: true
require "nokogiri"

class ArtCompositionComponent < ViewComponent::Base
  DEFAULT_FOLDER = "default"

  def initialize(folder: DEFAULT_FOLDER, color_mapping: {})
    @folder = folder
    @color_mapping = color_mapping.with_indifferent_access
    @svg_files = find_svg_files
    @composition = art_composition(@svg_files)
  end

  private

  def find_svg_files
    svg_folder_path = Rails.root.join("app", "assets", "images", @folder)
    Dir.glob(File.join(svg_folder_path, "*.svg"))
  end

  def get_svg_filenames
    svg_folder_path = Rails.root.join("app", "assets", "images", @folder)
    Dir.glob(File.join(svg_folder_path, "*.svg")).map { |path| }
  end

  def art_composition(parts)
    composition = parts.map do |svg_file|
      svg_content = File.read(svg_file)
      filename = File.basename(svg_file, ".svg")
      extract_paths(svg_content, filename)
    end

    sorted_comp = composition.sort_by do |svg_content|
      filename = svg_content.match(/id="(.*?)"/)&.captures&.first || "" # Extract the filename from the SVG content
      @color_mapping.keys.index(filename)
    end
    sorted_comp.join.html_safe
  end

  def extract_paths(svg_content, svg_filename = nil)
    doc = Nokogiri::XML(svg_content)
    paths = doc.css("path").map do |path|
      assign_color_class(path, svg_filename)
      assign_id(path, svg_filename)
      path.to_html
    end

    paths.join
  end

  def assign_color_class(path, svg_filename = nil)
    id = path["id"] || svg_filename
    color_class = @color_mapping[id]
    path["class"] = color_class if color_class
  end

  def assign_id(path, svg_filename = nil)
    id = path["id"] || svg_filename
    path["id"] = id if id
  end
end
