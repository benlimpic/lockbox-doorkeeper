module Api::V1
    class ProjectsController < ApplicationController
      
      # GET /project or /project.json
      def index
        @projects = Project.all
        render json: @projects
      end

      # GET /projects/1 or /projects/1.json
      def show
        @project = Project.find_by_id(params[:id])
        render json: @project
      end

      # POST /projects or /projects.json
      def create
        @project = Project.new(project_params)
          if @project.save
          render json: @project, status: :created
        else
          render json: @project.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /projects/1 or /projects/1.json
      def update
        if @project.update(project_params)
          render json: @project, status: :ok
        else
          render json: @project.errors, status: :unprocessable_entity

        end
      end

      # DELETE /projects/1 or /projects/1.json
      def destroy
        @project.destroy
        render json: { message: 'project deleted' }, status: :ok
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_project
        @project = Project.find_by_id(params[:id])
        render json: { error: 'project not found' }, status: :not_found if @project.nil?
      end

      # Only allow a list of trusted parameters through.
      def project_params
        params.require(:project).permit( 
      :mac,
      :tmk,
      :sop,
      :dateCreated,
      :siteKeyway,
      :siteName,
      :siteAddress,
      :siteCity,
      :siteState,
      :siteZip,
      :siteDescription,
      :siteNotes,
      :contactName,
      :contactPosition,
      :contactEmail,
      :contactPhone,
      :contactDetails,
      :user_id  )
      end
    end
  end
