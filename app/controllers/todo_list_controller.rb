class TodoListController < ApplicationController
    def index
        @todo_list = TodoList.all
    end

    def show
        @todo_list = TodoList.find(params[:id])
    end

    def new
        @todo_list = TodoList.new
    end

    def create
        @todo_list = TodoList.create todo_list_params
    end

    def edit
      @todo_list = TodoList.find(params[:id])
    end

    private

    def todo_list_params
        params.require(:todo_list).permit(:title, :description)
        redirect_to todo_list_path(@todo_list)
    end
end
