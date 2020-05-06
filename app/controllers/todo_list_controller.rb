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
    end
end
