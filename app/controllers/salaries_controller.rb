# require 'fusioncharts-rails'
class SalariesController < ApplicationController

  def index
    @salaries = Salary.all

    @salaries.each do |s|
      @user = current_user.id == s.user_id
    end
  end

  def show
    @salary = Salary.find(params[:id])
  end

  def new
    @salary = Salary.new
  end

  def create
    @salary = Salary.new(salary_params)
    @salary.user = current_user
    if @salary.save
      redirect_to salaries_path
    else
      render :new, stauts: :unprocessable_entity
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end


  private

  def salary_params
    params.require(:salary).permit(:salary, :bonus, :month)
  end
end
