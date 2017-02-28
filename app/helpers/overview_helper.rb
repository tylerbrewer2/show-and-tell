module OverviewHelper
  def flip_form_helper(model, args, &block)
    form_type = Flip.placeholder_over_label? ? 'minimal_form_for' : 'simple_form_for'
    send(form_type, model, args, &block)
  end

  def user_role(user)
    user.user_role.try('name') || user.role
  end
end
