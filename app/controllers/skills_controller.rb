class SkillsController < ApplicationController
  before_action :get_character

  def index
    redirect_to character_url(@char)
  end
  
  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      redirect_to character_url(@char)
    else
      render 'new'
    end
  end
  
  def show
    redirect_to character_url(@char)
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    if @skill.update_attributes(skill_params)
      redirect_to character_url(@char)
    else
      render 'edit'
    end
  end

  def destroy
    Skill.find(params[:id]).destroy
    redirect_to character_url(@char)
  end

  private

    def skill_params
      params.require(:skill).permit(:character_id, :name, :attr, :category, :career, :level)
    end

    def get_character
      @char = Character.find(params[:character_id])
    end
end
