module OverviewHelper
  def form_helper
    Flip.placeholder_over_label? ? 'minimal_form_for' : 'simple_form_for'
  end
end
