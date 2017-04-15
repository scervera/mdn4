class EventPolicy
  attr_reader :current_user, :event

  def initialize(current_user, model)
    @current_user = current_user
    @event = event
  end

  def index?
    @current_user.admin?
  end

  # def mdn_events?
  #   @current_user.admin?
  # end

  def show?
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