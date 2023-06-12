class ProjectResource < Avo::BaseResource
  self.title = :title
  self.includes = []
  self.link_to_child_resource = true
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  field :title, as: :text,
                name: "Title"
  field :subtitle, as: :text
  field :link, as: :text

  field :images, as: :files, accept: "/iamge", display_filename: true
  field :thumbnail, as: :file, accept: "/iamge", display_filename: true
  field :section, as: :belongs_to
  field :fields, as: :has_many, use_resource: FieldResource, name: "SubSection"

  # add fields here
end
