module OverviewHelper
  def flip_form_helper(model, args, &block)
    form_type = Flip.placeholder_over_label? ? 'minimal_form_for' : 'simple_form_for'
    send(form_type, model, args, &block)
  end
end
