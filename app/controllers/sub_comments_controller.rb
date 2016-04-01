class SubCommentsController < ApplicationController
	def create
  	@comment = Comment.find(params[:comment_id])
    @sub_comment = @comment.sub_comments.create(sub_comment_params)
    flash[:notice] = 'Comment has been successfully created.'
    redirect_to root_path
  end

  def destroy
  	@comment = Comment.find(params[:comment_id])
    @sub_comment = @comment.sub_comments.find(params[:id])
    @sub_comment.destroy
    flash[:notice] = 'Replay was successfully destroyed.'
    redirect_to root_path
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_comment_params
      params.require(:sub_comment).permit(:body, :user_id, :comment_id)
    end
end
