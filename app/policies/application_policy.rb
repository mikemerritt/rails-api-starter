# frozen_string_literal: true

class ApplicationPolicy
  attr_reader :context, :user, :scope

  def initialize(context, scope)
    @context = context
    @user = context.respond_to?(:user) ? context.user : context
    @scope = scope
  end
end
