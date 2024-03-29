require 'pp'
require 'json'
require 'sinatra/base'

class CheckServer < Sinatra::Base

  @@sesssions = {}

  get '/:scan' do
    JSON.pretty_generate @@sesssions[params[:scan]]
  end

  get '/:scan/rfi' do
    '705cd559b16e6946826207c2199bd890'
  end

  get '/:scan/ping/:id' do
    @@sesssions[params[:scan]] ||= {}
    @@sesssions[params[:scan]][params[:id]] = request.env
  end

  post '/:scan/ping/:id' do
    @@sesssions[params[:scan]] ||= {}
    @@sesssions[params[:scan]][params[:id]] = request.env
  end

  put '/:scan/ping/:id' do
    @@sesssions[params[:scan]] ||= {}
    @@sesssions[params[:scan]][params[:id]] = request.env
  end

  delete '/:scan/ping' do
    @@sesssions[params[:scan]] ||= {}
    @@sesssions[params[:scan]][params[:id]] = request.env
  end

  delete '/:scan' do
    @@sesssions.delete params[:scan]
  end

end
