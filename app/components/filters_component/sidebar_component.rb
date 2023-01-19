class FiltersComponent::SidebarComponent < ViewComponent::Base
  def call
    safe_join([
      tag.div("This is the sidebar"),
      safe_join(groups)
    ])
  end

  renders_many :groups, "FiltersComponent::GroupComponent"
end