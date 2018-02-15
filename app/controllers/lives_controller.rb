class LivesController < ApplicationController
    def index
        @live = Live.all
        render 'index', formats: 'json', handlers: 'jbuilder'
    end
end
