class CommentsController < OpenReadController
  before_action :set_comment, only: [:show, :update, :destroy]

  # GET /comments
  def index
    @comments = Comment.all

    render json: @comments
  end

  # GET /comments/1
  def show
    render json: @comment
  end

  # POST /comments
  def create
    @article = Article.find(params[:article_id])
    @comment = Comment.new(comment_params)

    # current_user.comments.create(comment_params)

    if @comment.save
      render json: @comment, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

# TODO remove nested routes/controller actions where Article is
# TODO change this action to Create
  # DELETE /comments/1
  def destroy
    @comment.destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
# TODO render JSON
    redirect_to article_path(@article)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:comment_body, :user_id, :article_id)
    end
end
