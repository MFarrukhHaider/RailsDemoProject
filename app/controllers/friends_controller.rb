class FriendsController < ApplicationController
    def index
        @friends =Friend.all
    end

    def edit
        @friend=Friend.find(params[:id])

    end

    def show
        @friend=Friend.find(params[:id])
    end


    def new
        @friend=Friend.new
    end

    def create
        @friend=Friend.new(friends_attributes)

        if @friend.save
            redirect_to "/friends_show/#{@friend.id}"
        else
            render :new, status: :unprocessable_entity
        end
    end

    def update
        @friend = Friend.find(params[:id])

        if @friend.update(friends_attributes)
            redirect_to index_path
        else
            render :edit,status: :unprocessable_entity
    end
end
    private
    def friends_attributes
      params.require(:friend).permit(:first_name, :last_name, :phone_number, :email, :twitter_handle)
    end

end