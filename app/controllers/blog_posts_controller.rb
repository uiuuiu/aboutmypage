class BlogPostsController < ApplicationController
	before_action :load_blog_post, only: [:show]

  def new
    @index = 0
    gon.global.index = @index
  end

  def create
  	@blog_post = BlogPost.create(title: params[:title])
  	create_paragraphs
  end

  def show
  	
  end

  private

  	def load_blog_post
  		@blog_post = BlogPost.find(params[:id])
  		@paragraphs = @blog_post.paragraphs.order(:id)
  	end

  	def create_paragraphs
  		params[:paragraph].each do |p|
  			@blog_post.paragraphs.create(paragraph_params(p))
  		end
  	end

  	def paragraph_params(p)
  		params[:content] = p[:content]
  		params[:post_style_id] = p[:post_style_id]
  		params.permit(:content, :post_style_id)
  	end
end
