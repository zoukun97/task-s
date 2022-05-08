class TodosController < ApplicationController
  before_action :authenticate_user!

  def index
    @todos = current_user.todos.all
  end

  def new
    @todo = current_user.todos.build
  end

  def create
    @todo = current_user.todos.build(todo_params)
    if @todo.save
      redirect_to todos_url, notice: "タスク「#{@todo.name}」を登録しました。"
    else
      render :new
    end
  end

  def show
    @todo = current_user.todos.find(params[:id])
  end

  def edit
    @todo = current_user.todos.find(params[:id])
  end

  def update
    @todo = current_user.todos.find(params[:id])
    if @todo.update(todo_params)
      redirect_to todos_url, notice: "タスク「#{@todo.name}」を更新しました。"
    else
      render :edit
    end
  end

  def destroy
    todo = current_user.todos.find(params[:id])
    todo.destroy
    redirect_to todos_url, notice: "タスク「#{todo.name}」を削除しました。"
  end

  private
    def todo_params
      params.require(:todo).permit(:name, :description)
    end
end