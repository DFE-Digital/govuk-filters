class FiltersComponent < ViewComponent::Base
  def initialize(title:)
    @title = title

    super
  end

  renders_one :topbar, FiltersComponent::TopbarComponent
  renders_one :sidebar, FiltersComponent::SidebarComponent
end
