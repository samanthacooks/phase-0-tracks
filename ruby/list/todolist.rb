class TodoList

	def initialize(task)
		@task = ["do the dishes", "mow the lawn"]
	end

	def get_items
		p @task
	end

	def add_item(new_task)
		@task << new_task
	end

	def delete_item(task)
		@task.delete(task)
	end

	def get_item(index)
		@task[index]
	end

end