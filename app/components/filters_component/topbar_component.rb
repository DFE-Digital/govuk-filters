class FiltersComponent::TopbarComponent < ViewComponent::Base
  def call
    safe_join([
      tag.div("This is the topbar"),
      safe_join(groups)
    ])
  end

  renders_many :groups, "FiltersComponent::GroupComponent"
end
