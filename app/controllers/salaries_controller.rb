class SalariesController < ApplicationController

  def index
    @salaries = Salary.all

    @chart = Fusioncharts::Chart.new({
      :height => 400,
      :width => 600,
      :id => 'chart',
      :type => 'MSColumn2D',
      :renderAt => 'chart-container',
      :dataSource => {
          "chart": {
              "caption": "Salary",
              "subCaption": "In EUR (1) ~ 21 LEI MDL",
              "xAxisName": "Salary",
              "yAxisName": "Lei (MDL)",
              "numberSuffix": "K",
              "theme": "fusion",
          },
          "data": [{

          }]
  end

  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
