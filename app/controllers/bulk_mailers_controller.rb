class BulkMailersController < ApplicationController
  before_action :set_bulk_mailer, only: %i[ show edit update destroy ]

  # GET /bulk_mailers or /bulk_mailers.json
  def index
    @bulk_mailers = BulkMailer.all
  end

  # GET /bulk_mailers/1 or /bulk_mailers/1.json
  def show
  end

  # GET /bulk_mailers/new
  def new
    @bulk_mailer = BulkMailer.new
  end

  # GET /bulk_mailers/1/edit
  def edit
  end

  # POST /bulk_mailers or /bulk_mailers.json
  def create
    @bulk_mailer = BulkMailer.new(bulk_mailer_params)

    respond_to do |format|
      if @bulk_mailer.save
        format.html { redirect_to bulk_mailer_url(@bulk_mailer), notice: "Bulk mailer was successfully created." }
        format.json { render :show, status: :created, location: @bulk_mailer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bulk_mailer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bulk_mailers/1 or /bulk_mailers/1.json
  def update
    respond_to do |format|
      if @bulk_mailer.update(bulk_mailer_params)
        format.html { redirect_to bulk_mailer_url(@bulk_mailer), notice: "Bulk mailer was successfully updated." }
        format.json { render :show, status: :ok, location: @bulk_mailer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bulk_mailer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bulk_mailers/1 or /bulk_mailers/1.json
  def destroy
    @bulk_mailer.destroy!

    respond_to do |format|
      format.html { redirect_to bulk_mailers_url, notice: "Bulk mailer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bulk_mailer
      @bulk_mailer = BulkMailer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bulk_mailer_params
      params.require(:bulk_mailer).permit(:to, :cc, :subject, :body, mail_attach: [])
    end
end
