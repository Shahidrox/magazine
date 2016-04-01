class SubOneCommentsController < ApplicationController
  def create
  	@sub_comment = SubComment.find(params[:sub_comment_id])
    @sub_one_comment = @sub_comment.sub_one_comments.create(sub_one_comment_params)
    flash[:notice] = 'Comment has been successfully created.'
    redirect_to root_path
  end

  def destroy
  	@sub_comment = SubComment.find(params[:sub_comment_id])
    @sub_one_comment = @sub_comment.sub_one_comments.find(params[:id])
    @sub_one_comment.destroy
    flash[:notice] = 'Replay was successfully destroyed.'
    redirect_to root_path
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_one_comment_params
      params.require(:sub_one_comment).permit(:body, :user_id, :sub_comment_id)
    end
end
