class ArticlesController < ApplicationController

    def index
        @articles = Article.all
      end
    
      def new
        @article = Article.new
      end
    
      def create
        # @article = Article.new(article_params)
        
      end
    
      def show
        # @article = Article.find(params[:id])
    
      end

      # private

      # def article_params
      #   params.require(:article).permit(:title, :content, :title_image)
      # end
end
