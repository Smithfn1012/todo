class TodoListController < ApplicationController
    def index
        @todo_list = TodoList.all
    end

    def show
        @todo_list = TodoList(params[:id])
    end
end
