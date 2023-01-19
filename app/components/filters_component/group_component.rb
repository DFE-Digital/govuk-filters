class FiltersComponent::GroupComponent < ViewComponent::Base
  def call
    safe_join([
      tag.div("This is a group"),
      textboxes
    ])
  end

  renders_many :textboxes, "FiltersComponent::TextBoxComponent"
end