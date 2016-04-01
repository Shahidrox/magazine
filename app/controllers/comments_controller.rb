class CommentsController < ApplicationController

  def create
  	@article = Article.find(params[:article_id])
    @comment = @article.comments.create(commente_params)
    flash[:notice] = 'Comment has been successfully created.'
    redirect_to root_path
  end

  def destroy
  	@article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    flash[:notice] = 'Comment was successfully destroyed.'
    redirect_to root_path
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def commente_params
      params.require(:comment).permit(:body, :user_id, :article_id)
    end
end
