class Feature < ActiveRecord::Base
  extend Flip::Declarable

  strategy Flip::CookieStrategy
  # strategy Flip::DatabaseStrategy
  # strategy Flip::DeclarationStrategy
  default false

  feature :placeholder_over_label,
          description: 'When this toggle is turned on, there will no longer be labels.'

  feature :specific_user_role,
          description: 'When flipped on, user\'s will need to choose from specific roles'
end
