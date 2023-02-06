module Api
  module V1
    class KeysController < ApplicationController
      before_action :set_key, only: %i[show edit update destroy]

      # GET /keys or /keys.json
      def index
        @keys = Key.where(project_id: params[:project_id])
        render json: @keys
      end

      # GET /keys/1 or /keys/1.json
      def show
        render json: @key
      end

      # GET /keys/new
      def new
        render json: @key = Key.new
      end

      # GET /keys/1/edit
      def edit
        render json: @key
      end

      # POST /keys or /keys.json
      def create
        @key = Key.new(key_params)

        respond_to do |format|
          if @key.save
            # format.html { redirect_to api_v1_key_url(@key), notice: 'key was successfully created.' }
            format.json { render :show, status: :created }
          else
            # format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @key.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /keys/1 or /keys/1.json
      def update
        respond_to do |format|
          if @key.update(key_params)
            # format.html { redirect_to api_v1_key_url(@key), notice: 'key was successfully updated.' }
            format.json { render :show, status: :ok, }
          else
            # format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @key.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /keys/1 or /keys/1.json
      def destroy
        @key.destroy

        respond_to do |format|
          format.html { redirect_to api_v1_keys_url, notice: 'key was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_key
        @key = Key.find_by_id(params[:id])
        render json: { error: 'key not found' }, status: :not_found if @key.nil?
      end

      # Only allow a list of trusted parameters through.
      def key_params
        params.require(:key).permit( :mac, :cut, :page, :reference, :assigneeName, :assigneeEmail, :assigneePhone, :details, :assignmentDate, :techName, :techEmail, :techPhone, :notes, :oDate, :keyTitle, :stamp, :description, :usable, :inUse, :reserved, :archived, :status, :project_id)
      end
    end
  end
end

