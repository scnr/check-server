require 'pp'
require 'sinatra/base'

class CheckServer < Sinatra::Base

  get '/:id/rfi' do
    '705cd559b16e6946826207c2199bd890'
  end

end
