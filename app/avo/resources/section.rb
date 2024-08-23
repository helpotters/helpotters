class Avo::Resources::Section < Avo::BaseResource
  self.title = :title
  self.includes = []
  # self.search_query = -> do
  #   query.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  def fields
    field :id, as: :id
    field :title, as: :text
    field :projects, as: :has_many
  end
end
