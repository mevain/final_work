class PublishersController < ApplicationController
  before_action :set_publisher, only: %i[ show edit update destroy]

  # GET /publishers or /publishers.json
  def index
    @publishers = Publisher.all
  end

  # GET /publishers/1 or /publishers/1.json
  def show
    @pub_id = params[:id]
    @pub_users = Membership.where(publisher_id: params[:id])
    @pu_names = Array.new
    @pub_users.each do |pub_user|
      @pu_names.push(User.where(id: pub_user.user_id) )
    end
    @pu_books = Array.new
    @pu_names.each do |pu_name|
      pu_name.each do |pn|
        @pu_books.push(Book.where(user_id: pn.id))
      end
    end
  end

  # GET /publishers/new
  def new
    @publisher = Publisher.new
  end

  # GET /publishers/1/edit
  def edit
  end

  # POST /publishers or /publishers.json
  def create
    @publisher = Publisher.new(publisher_params)

    respond_to do |format|
      if @publisher.save
        format.html { redirect_to publisher_url(@publisher), notice: "Publisher was successfully created." }
        format.json { render :show, status: :created, location: @publisher }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @publisher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publishers/1 or /publishers/1.json
  def update
    respond_to do |format|
      if @publisher.update(publisher_params)
        format.html { redirect_to publisher_url(@publisher), notice: "Publisher was successfully updated." }
        format.json { render :show, status: :ok, location: @publisher }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @publisher.errors, status: :unprocessable_entity }
      end
    end
  end

  def newsub
    Subscription.create(user_id: current_user.id,  publisher_id: params[:publisher_id])
  end
  

  # DELETE /publishers/1 or /publishers/1.json
  def destroy
    @publisher.destroy

    respond_to do |format|
      format.html { redirect_to publishers_url, notice: "Publisher was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publisher
      @publisher = Publisher.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def publisher_params
      params.require(:publisher).permit(:pub_house)
    end
end
