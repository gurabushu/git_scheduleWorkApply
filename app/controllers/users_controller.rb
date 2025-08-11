class UsersController < ApplicationController

  def index
    @start_date =
      if params[:start_date].present?
        Date.parse(params[:start_date]) rescue Time.zone.today.to_date
      else
        Time.zone.today.to_date
      end

    @tasks = Task.where(start_at: @start_date.in_time_zone.all_month).order(:start_at)
  end

  
  def show
    @user = User.find(params[:id])
    @tasks = @user.tasks
    end

    def edit
        @user = User.find(params[:id])
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to root_path, notice: "ユーザーを削除しました。"
    end
end
