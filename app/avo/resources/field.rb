class Avo::Resources::Field < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   query.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  def fields
    field :id, as: :id
    field :title, as: :text
    # field :body, as: :textarea
    # field :project, as: :belongs_to
  end
end
