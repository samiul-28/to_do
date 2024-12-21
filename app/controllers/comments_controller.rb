class CommentsController < ApplicationController
    before_action :authenticate_user!
  
    def create
      @task = Task.find(params[:task_id])
      @comment = @task.comments.new(comment_params)
      @comment.user = current_user
  
      if @comment.save
        redirect_to task_path(@task), notice: 'Comment added successfully!'
      else
        redirect_to task_path(@task), alert: 'Comment cannot be blank.'
      end
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:content)
    end
  end
  
