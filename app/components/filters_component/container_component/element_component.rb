class FiltersComponent::ContainerComponent::ElementComponent < ViewComponent::Base
  def initialize(text:)
    @text = text

    super
  end
end
