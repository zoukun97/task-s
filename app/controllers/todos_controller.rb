class TodosController < ApplicationController
  before_action :authenticate_user!

  def index
    @todos = Todo.all
  end

  def new
    @todo = current_user.todos.build
  end

  def create
    todo = Todo.new(todo_params)
    todo.save!
    redirect_to todos_url, notice: "タスク「#{todo.name}」を登録しました。"
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    todo = Todo.find(params[:id])
    todo.update!(todo_params)
    redirect_to todos_url, notice: "タスク「#{todo.name}」を更新しました。"
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    redirect_to todos_url, notice: "タスク「#{todo.name}」を削除しました。"
  end

  private
    def todo_params
      params.require(:todo).permit(:name, :description)
    end
end