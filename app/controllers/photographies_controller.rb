class PhotographiesController < ApplicationController
  # before_filter :authenticate_user!, except: [:index]

  def index
    # if user_signed_in?
      @photographies = Photography.all
    # else
      # @users = User.all
    # end
  end

  def new
  	@photography = Photography.new
  end

  def create
  	@photography = Photography.new(photography_params)
<<<<<<< HEAD
  	if @photography.save

      redirect_to photographies_path
=======
  	image = params[:photography][:image]
  	unless image.nil?
      @photography.image = params[:photography][:image].original_filename
      upload_picture
    end
  	if @photography.save
  		redirect_to photographies_path
>>>>>>> 131339d46934b4580b06df02d2c30365ff2a98f9
  	else
  		render 'new'
  	end
  end

<<<<<<< HEAD
  def edit
    @photography = Photography.find(params[:id])
  end

  def update
    @photography = Photography.find(params[:id])
    if @photography.update(photography_params)
      upload_picture
      redirect_to photographies_path
    else
      render 'edit'
    end
  end

  def show
  	@photography = Photography.find(params[:id])
  end

  def destroy
  	@photography = Photography.find(params[:id])
  	@photography.destroy

    redirect_to photographies_path
  end

  def gallery
    @photographies = Photography.all.order(created_at: :desc)
  end
=======
  # def show
  # 	@photography = Photography.find(params[:id])
  #   @comment = Comment.new
  #   @comments = Comment.all
  # end

  # def destroy
  # 	@photography = Photography.find(params[:id])
  # 	@photography.destroy

  #   redirect_to photographies_path
  # end

  # def lenta
  #   @users = User.all
  #   @photographies = Photography.all#.comments.order(created_at: :desc)
  # end
>>>>>>> 131339d46934b4580b06df02d2c30365ff2a98f9

  # def following
  #   @title = "Following"
  #   @user = User.find(params[:id])
  #   @users = @user.followed_users
  #   render 'show_follow'
  # end

  # def followers
  #   @title = "Followers"
  #   @user = User.find(params[:id])
  #   @users = @user.followers
  #   render 'show_follow'
  # end

  # def like
  #   @photography = Photography.find(params[:id])
  #   @photography.liked_by current_user
  #   redirect_to :back
  # end

  # def unlike
  #   @photography = Photography.find(params[:id])
  #   @photography.unliked_by current_user
  #   redirect_to :back
  # end

  private

  def photography_params
  	params.require(:photography).permit(:name, :image, :user_id)
  end

  def upload_picture
    uploaded_file = params[:photography][:image]
  	unless uploaded_file.nil?
  		new_file_path = Rails.root.join('public', 'uploads', 'photographies', uploaded_file.original_filename)

  		File.open(new_file_path, "wb") do |file|
  		  file.write uploaded_file.read
  		end
  	end
  end
end
