class TodoListController < ApplicationController
    def index
        @todo_list = TodoList.all
    end

    def show
    end
end
