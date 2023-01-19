class FiltersComponent < ViewComponent::Base
  attr_reader :form

  def initialize(form, title:)
    @form = form
    @title = title

    super
  end

  renders_one :container, FiltersComponent::ContainerComponent
end
