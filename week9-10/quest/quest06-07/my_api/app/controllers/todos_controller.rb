class TodosController < ApplicationController
  # APIではCSSRFトークンを必要としないため、CSRF保護機能を無効にする
  protect_from_forgery with: :null_session

  def index
    todos = Todo.all
    render json: { todo: todos.as_json(only: [:id, :title])}
  end

  def create
    todo = Todo.new(todo_params)
    if todo.save
      render json: { todo: { id: todo.id, title: todo.title} }, status: :created
    else
      render json: { errors: todo.errors }, status: :unprocessable_entity
    end
  end

  def update
    todo = Todo.find(params[:id])
    todo.update(todo_params)
    if todo.save
      render json: { todo: { id: todo.id, title: todo.title}  }, status: :created
    else
      render json: { errors: todo.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy

    head :no_content
  end

# クラス内のみ使えるプライベート
  private
  # ストロングパラメータ
  def todo_params
    params.require(:todo).permit(:title)
  end
end
