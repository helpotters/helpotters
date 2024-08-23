class Avo::Resources::Document < Avo::BaseResource
  self.title = :name
  self.includes = []
  # self.search_query = -> do
  #   query.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  def fields
    field :name, as: :text
    field :public, as: :boolean, name: 'Made Public'
    field :file, as: :file, accept: '.pdf,.png ', display_filename: true
  end
end
