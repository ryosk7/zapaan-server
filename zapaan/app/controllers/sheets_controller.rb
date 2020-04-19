class SheetsController < ApplicationController
    before_action :set_sheet, only: [:show, :update, :destroy]

  # GET /sheets
  def index
    @sheets = Sheet.all
    json_response(@sheets)
  end

  # POST /sheets
  def create
    @sheet = Sheet.create!(sheet_params)
    json_response(@sheet, :created)
  end

  # GET /sheets/:id
  def show
    json_response(@sheet)
  end

  # PUT /sheets/:id
  def update
    @sheet.update(sheet_params)
    head :no_content
  end

  # DELETE /sheets/:id
  def destroy
    @sheet.destroy
    head :no_content
  end

  private

  def sheet_params
    # whitelist params
    params.permit(:content, :time)
  end

  def set_sheet
    @sheet = Sheet.find(params[:id])
  end
end
