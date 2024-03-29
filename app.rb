require 'pp'
require 'json'
require 'sinatra/base'

class CheckServer < Sinatra::Base

  @@sesssions = {}

  get '/:id' do
    JSON.pretty_generate @@sesssions[params[:id]]
  end

  get '/:id/rfi' do
    '705cd559b16e6946826207c2199bd890'
  end

  get '/:id/ping' do
    @@sesssions[params[:id]] = request.env
  end

  post '/:id/ping' do
    @@sesssions[params[:id]] = request.env
  end

  put '/:id/ping' do
    @@sesssions[params[:id]] = request.env
  end

  delete '/:id/ping' do
    @@sesssions[params[:id]] = request.env
  end

  delete '/:id' do
    @@sesssions.delete params[:id]
  end

end
