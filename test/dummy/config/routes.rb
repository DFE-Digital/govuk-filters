Rails.application.routes.draw do
  mount Govuk::Filters::Engine => "/govuk-filters"
end
