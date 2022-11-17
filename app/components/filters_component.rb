class FiltersComponent < ViewComponent::Base
  def initialize(word:)
    @word = word

    super
  end

  renders_one :container, FiltersComponent::ContainerComponent
end