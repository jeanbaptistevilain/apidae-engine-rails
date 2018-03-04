require_dependency "apidae/application_controller"

module Apidae
  class ApiController < ApplicationController

    def selection
      @objects = []
      unless params[:selection_id].blank?
        objects_ids = Apidae::Selection.find(params[:selection_id]).api_results[:results]
        @objects = Apidae::Object.where(id: objects_ids)
      end
    end

    def object
    end

    def agenda
      @objects = []
      unless params[:selection_id].blank?
        objects_ids = Apidae::Selection.find(params[:selection_id]).api_agenda(params[:from], params[:to])[:results]
        @objects = Apidae::Object.where(id: objects_ids)
      end
    end
  end
end
