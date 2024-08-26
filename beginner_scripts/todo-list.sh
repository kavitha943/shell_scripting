#!/bin/bash
todo_file="todo.txt"

echo "Todo List Manager"
echo "1. View tasks"
echo "2. Add a task"
echo "3. Delete a task"
read option

case $option in
    1)
        if [ -f "$todo_file" ]; then
            cat "$todo_file"
        else
            echo "No tasks found."
        fi
        ;;
    2)
        read -p "Enter the task: " task
        echo "$task" >> "$todo_file"
        echo "Task added."
        ;;
    3)
        read -p "Enter the line number to delete: " line
        sed -i "${line}d" "$todo_file"
        echo "Task deleted."
        ;;
    *)
        echo "Invalid option."
        ;;
esac

