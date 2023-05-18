class DocumentResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :name, as: :text
  field :public, as: :boolean, name: 'Made Public'
  # add fields here
  field :pdf, as: :file, accept: '.pdf ', display_filename: true
end
