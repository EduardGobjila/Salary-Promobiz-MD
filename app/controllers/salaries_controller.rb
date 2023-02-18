# require 'fusioncharts-rails'
class SalariesController < ApplicationController

  def index
    @salaries = Salary.all

    @monthly_salary = {}
    Salary.where(:user_id => current_user.id).each do |s|
      @monthly_salary[s.month] = s.salary
    end
    @monthly_bonus = {}
    Salary.where(:user_id => current_user.id).each do |s|
      @monthly_bonus[s.month] = s.bonus
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
