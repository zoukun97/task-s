class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    todo = Todo.new(todo_params)
    todo.save!
    redirect_to todos_url, notice: "タスク「#{todo.name}」を登録しました。"
  end

  def show
    @todo = Todo.find(params[:id])
  end

  private
    def todo_params
      params.require(:todo).permit(:name, :description)
    end
end