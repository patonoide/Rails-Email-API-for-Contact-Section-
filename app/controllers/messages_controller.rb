class MessagesController < ApplicationController


  # GET /messages
  def index
    @messages = Message.all

  end
  #only using this method
  # POST /Messages
  def create
    @message = Message.create!(message_params)
    NewEmailMailer.email(@message.id).deliver_now

  end

  # GET /Messages/:id
  def show

  end

  # PUT /Messages/:id
  def update
    @message.update(message_params)
    head :no_content
  end

  # DELETE /Messages/:id
  def destroy
    @message.destroy
    head :no_content
  end

  private

  def message_params
    # whitelist params
    params.permit(:sender, :message)
  end

  def set_Message
    @message = Message.find(params[:id])
  end

end
