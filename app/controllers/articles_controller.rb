class ArticlesController < ApplicationController
	  # before_action :authenticate_user! , except: [:index]
	include ArticlesHelper
 def index
 	@articles = Article.all
 	
 end
 def show
 	   
    
 	 @article = Article.find(params[:id])
 	 @comment = Comment.new
     @comment.article_id = @article.id


 end
 def new
 	@article = Article.new
 	
 end
 def create
 	@article = Article.new(article_params)
 	if@article.save
 		redirect_to @article
 	else
 		render 'new'
 	end
 	
 end
 def edit
 	@article = Article.find(params[:id])
 	
 end
 def destroy
 	@article = Article.find(params[:id])
 	@article.destroy
 	redirect_to articles_path
 	
 end
 def update
 	@article = Article.find(params[:id])
 	if @article.update(article_params)
 		redirect_to @article
 		else
 		render 'new'	
 		
 	end
 	
 end

end
