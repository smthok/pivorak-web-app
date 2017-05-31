class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: %i[create destroy]

  def index
    @topics = Topic.all
  end

  def show
  end

  def new
    @topic = Topic.new
  end

  def edit
  end

  def create
    @topic = Topic.new(topic_params)

    if @topic.save
      redirect_to @topic, notice: 'Topic was successfully created.'
    else
      render :new
    end
  end

  def update
    if @topic.update(topic_params)
      redirect_to @topic, notice: 'Topic was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @topic.destroy
    redirect_to topics_url, notice: 'Topic was successfully destroyed.'
  end

  private
    def set_topic
      @topic = Topic.find(params[:id])
    end

    def topic_params
      params.fetch(:topic, {})
    end
end
