class DocumentResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :name, as: :text
  field :public, as: :boolean, name: 'Made Public'
  field :pdf, as: :file, accept: '.pdf ', display_filename: true
end
