class UserController < ApplicationController
  before_filter :authenticate_user!

  def index
    #user profile
    @today_record = Record.where(:user_id => current_user.id)
    
    @user = current_user.name
    @steps = @today_record.pluck(:steps).first
    @sleep = @today_record.pluck(:sleep).first
    @meditated = @today_record.pluck(:meditation).first
    @enjoyment = @today_record.pluck(:enjoyment).first
    @achievement = @today_record.pluck(:achievement).first
  end

  def team
    @team = Team.where(:id => current_user.team).first

    @team_name = @team.name

    @leaders = User.where(:team_id => current_user.team).order("score DESC").first(3)
  end

  def challenges
  end

  def history
    @history = Record.where(:user_id => current_user.id).order("date DESC")
  end
end
