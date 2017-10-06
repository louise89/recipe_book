class CommentsController < ApplicationController

  http_basic_authenticate_with name: "Louise", password: "secret", only: :destroy

  def new
    @comment = Comment.new
   end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.create(comment_params)
    @comment.save
    redirect_to recipe_path(@recipe)
end

def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.find(params[:id])
    @comment.destroy
    redirect_to recipe_path(@recipe)
  end

private

def comment_params
  params.require(:comment).permit(:commenter, :body)
end

end
#@comment = Comment.new(comment_params)
#    @post = Post.find(params[:post_id])
#    @comment.post_id = @post.id
