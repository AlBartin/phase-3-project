class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  require 'pry'

  get "/" do
    plants = Plant.all.order(:common_name)
    plants.to_json(only: [:id, :common_name])
  end

  get "/home" do
    plants = Plant.all.sample
    plants.to_json
  end

  get "/learn" do
    plants = Plant.all.order(:common_name)
    plants.to_json(only: [:id, :name, :common_name, :image_url])
  end

  get "/learn/:id" do
    plant = Plant.find(params[:id])
    plant.to_json
  end

  get "/journal" do
    journals = Journal.all.order(:datetime)
    journals.to_json(include: {plant:{include: [:soil, :water]}})
    #journals.to_json
  end

  post "/journal" do
    journal = Journal.create(
      title: params[:title], 
      content: params[:content], 
      user_id: params[:user_id], 
      plant_id: params[:plant_id]
    )
    journal.to_json(include: {plant:{include: [:soil, :water]}})
  end

  delete '/journal/:id' do
    journal = Journal.find(params[:id])
    journal.destroy
    journal.to_json(include: {plant:{include: [:soil, :water]}})
  end

  patch '/journal/:id' do
    journal = Journal.find(params[:id])
    journal.update(
      title: params[:title],
      content: params[:content]
    )
    journal.to_json(include: {plant:{include: [:soil, :water]}})
  end

end
