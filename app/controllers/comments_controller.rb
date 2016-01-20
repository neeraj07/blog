class CommentsController < ApplicationController
  # before_action :authenticate_user!
      include CommentsHelper
      def create
	       @comment = Comment.new(comment_params)
		     @comment.article_id = params[:article_id]
		     @comment.save
		     redirect_to article_path(@comment.article)		      	
      end
      def destroy
  	     @article = Article.find(params[:article_id])
  	     @comment = @article.comments.find(params[:id])
  	     @comment.destroy
         redirect_to article_path(@article)
      end
      def edit
 	       @comment = Comment.find(params[:id])
         @article = Article.find(params[:article_id])
      	
      end
      def update
         @comment = Comment.find(params[:id])
         if@comment.update(comment_params) 
           redirect_to article_path(@comment.article)
         end
      end


end
