class ClientFeedbacksController < InheritedResources::Base
before_action :set_client_feedback, only: [:show, :edit, :update, :destroy]

  # GET /client_feedbacks
  # GET /client_feedbacks.json
  def index
    @client_feedbacks = ClientFeedback.approved?
  end

  # GET /client_feedbacks/1
  # GET /client_feedbacks/1.json
  def show
  end

  # GET /client_feedbacks/new
  def new
    @client_feedback = ClientFeedback.new
  end

  # GET /client_feedbacks/1/edit
  def edit
  end

  # POST /client_feedbacks
  # POST /client_feedbacks.json
  def create
    @client_feedback = ClientFeedback.new(client_feedback_params)

    respond_to do |format|
      if @client_feedback.save
        session[:create_sucess] = true
        format.html { redirect_to client_feedbacks_url, notice: 'Client feedback was successfully created.' }
        # format.json { render :show, status: :created, location: @client_feedback }
      else
        format.html { render :new }
        format.json { render json: @client_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_feedbacks/1
  # PATCH/PUT /client_feedbacks/1.json
  def update
    respond_to do |format|
      if @client_feedback.update(client_feedback_params)
        format.html { redirect_to @client_feedback, notice: 'Client feedback was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_feedback }
      else
        format.html { render :edit }
        format.json { render json: @client_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_feedbacks/1
  # DELETE /client_feedbacks/1.json
  def destroy
    @client_feedback.destroy
    respond_to do |format|
      format.html { redirect_to client_feedbacks_url, notice: 'Client feedback was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_client_feedback
    @client_feedback = ClientFeedback.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def client_feedback_params
    params.require(:client_feedback).permit(:first_name, :last_name, :email, :contact, :feedback, :avatar, :address, :city, :state, :country, :zipcode,:approved)
  end
end

