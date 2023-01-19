class FiltersComponent::ContainerComponent < ViewComponent::Base
  attr_reader :title
  attr_reader :topbar
  attr_reader :sidebar

  def initialize(title:, topbar: false)
    @title = title
    @topbar = topbar
    @sidebar = topbar == false

    super
  end

  def container_class
    "govuk-filter__container" + (sidebar ? " govuk-grid-column-one-third" : "govuk-grid-column-full")
  end

  renders_one :element, FiltersComponent::ContainerComponent::ElementComponent
end
