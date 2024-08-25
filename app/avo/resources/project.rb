class Avo::Resources::Project < Avo::BaseResource
  self.title = :title
  self.includes = []
  self.link_to_child_resource = true
  # self.search_query = -> do
  #   query.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  def fields
    field :id, as: :id

    field :title, as: :text
    field :subtitle, as: :text

    field :start_date, as: :date
    field :end_date, as: :date

    field :article, as: :markdown
    field :link, as: :text

    field :images, as: :files, accept: "/image", display_filename: true
    field :thumbnail, as: :file, accept: "/image", display_filename: true
    field :section, as: :belongs_to
    field :fields, as: :has_many, use_resource: Avo::Resources::Field, name: "SubSection"
  end
end
