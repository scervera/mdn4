class ResourcePolicy
  attr_reader :current_user, :resource

  def initialize(current_user, model)
    @current_user = current_user
    @resource = resource
  end

  def show?
    @current_user.admin?
  end

  def new?
    @current_user.admin?
  end
  
  def edit?
    @current_user.admin?
  end

  def update?
    @current_user.admin?
  end

  def destroy?
    # return false if @current_user == @user
    @current_user.admin?
  end

end