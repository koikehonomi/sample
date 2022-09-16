class CorporationsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
    def index
      
        @corporations = Corporation.all
        search = params[:search]
        @corporations = Corporation.joins(:user).where("name LIKE ? OR genre LIKE ?", "%#{search}%", "%#{search}%")
    end 
    
    def new
      @corporation = Corporation.new
    end
  
    #追加箇所
    
    def create
      corporation = Corporation.new(corporation_params)
      corporation.user_id = current_user.id
      if corporation.save
        redirect_to :action => "index"
      else
        redirect_to :action => "new"
      end
    end
  
    def show
      @corporation = Corporation.find(params[:id])
    end

    def edit
      @corporation = Corporation.find(params[:id])
    end

    def update
      corporation = Corporation.find(params[:id])
      if corporation.update(corporation_params)
        redirect_to :action => "show", :id => corporation.id
      else
        redirect_to :action => "new"
      end
    end

    def destroy
      corporation = Corporation.find(params[:id])
      corporation.destroy
      redirect_to action: :index
    end

    def compare
      if params[:search] != nil && params[:search] != ''
        split_keyword = params[:search].split(/[[:blank:]]+/)
        if split_keyword[0] && split_keyword[1]
          @corporations = Corporation.where('name like ?', "%#{split_keyword[0]}%").or(Corporation.where('name like ?', "%#{split_keyword[1]}%"))
        else
          @corporations = Corporation.where('name like ?', "%#{split_keyword[0]}%")
        end
      else
        @corporations = Corporation.all
      end
    
    end

    private
    def corporation_params
      params.require(:corporation).permit(:name, :genre, :work, :strong, :competition, :seminer, :workshop, :internship, :visit, :homepage, :article, :question, :image )
    end
    #ここまで
  
end
