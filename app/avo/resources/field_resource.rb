class FieldResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  field :title, as: :text
  field :body, as: :textarea
  field :project, as: :belongs_to
  # add fields here
end
