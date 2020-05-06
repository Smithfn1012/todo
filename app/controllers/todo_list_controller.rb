class TodoListController < ApplicationController
    def index
        @todo_list = TodoList.all
    end
end
