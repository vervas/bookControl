class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user || User.new # for guest
    send(@user.role)
  end

  def editor
    can :manage, Book
  end

  def admin
    editor
    can :manage, User
  end

  def superadmin
    admin
    can :manage, :all
  end
end
