class FiltersComponent::ContainerComponent < ViewComponent::Base
  attr_reader :form
  attr_reader :title
  attr_reader :topbar
  attr_reader :sidebar

  def initialize(form:, title:, topbar: false)
    @form = form
    @title = title
    @topbar = topbar
    @sidebar = topbar == false

    super
  end

  renders_one :element, FiltersComponent::ContainerComponent::ElementComponent
end
