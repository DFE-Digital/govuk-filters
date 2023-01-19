class FiltersComponent::TextBoxComponent < ViewComponent::Base
  def initialize(label:)
    @label = label
  end

  def call
    safe_join([
      tag.label(@label),
      tag.input
    ])
  end
end