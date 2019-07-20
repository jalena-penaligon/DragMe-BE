class Api::V1::PerformersController < ApplicationController
    def index
      performer = Performer.all
      render status: 200,
      json: {
        performer: performer,
      }
    end
end
  