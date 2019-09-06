class MoviesController < ApplicationController
  def index
      @movies = Movie.all
      @categories = Category.all
      
      if params[:store]
          @movie = Movie.where('movie like ?', "%#{params[:store]}%")
      else
          @movie = Movie.all
      end
  end

  def movie_params
    params.require(:movie).permit(:store, :id)
  end
    
  def show
      @movie = Movie.find(params[:id]) 
  end
  
  def update
      @movie = Movie.find(params[:id])
      if @movie.update title: params[:title]
        redirect_to "/movies/#{params[:id]}"
      else
        render 'show'   
      end
      #@movie = Movie.find(params[:id])
      #@movie.title = params[:title]
      #@movie.save
      #redirect_to "/movies/#{params[:id]}"
  end
    
  def destroy
     #@movie = Movie.find(params[:id])
     #@movie.destroy
      Movie.find(params[:id]).destroy
      redirect_to "/movies" 
  end
    
  def create
    #ajout ligne form synop => params[:synop]
      
      #METHODE 1
      #movie = Movie.new
      #movie.title = params[:title]
      #movie.save
      
      #METHODE 2
      Movie.create title: params[:title], category_id: params[:category_id]
      
    #actualiser la page  
    redirect_to "/movies" 
  end
end
