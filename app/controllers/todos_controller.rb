class TodosController < ApplicationController
  def index
  end

  def new
    @task = Todo.new
  end

end