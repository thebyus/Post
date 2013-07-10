class PostsController < ApplicationController
#  before_action :set_post, except: :destroy

  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  end

  def new
  	@post = Post.new
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def create
  	@post = Post.new(post_params)

  		if @post.save
  			redirect_to root_path, notice: 'Post was successfully created.'
  		else
  		  render :new 
  		end
  end

  def update
  	respond_to do |format|
  		if @post.update(post_params) 
  			format.html {redirect_to @post, notice: 'Post was successfully updated.' }
  			format.json { head :no_content}
  		else
  			format.html { render action: 'edit'}
  			format.json { render json: @post.errors, statuts: :unprocessable_entity }
  		end
  	end
  end

  private
  	 def post_params
  		params.require(:post).permit(:title, :url, :comment)
  	end
#
 # 	def set_post
  #		@post = Post.find(params[:id])
  #	end


end
