class FiltersComponent < ViewComponent::Base
  attr_reader :form

  def initialize(form, title:)
    @form = form
    @title = title

    super
  end

  def container_class
    container.sidebar ? "govuk-grid-column-one-third" : "govuk-grid-column-full"
  end

  renders_one :container, FiltersComponent::ContainerComponent
end
