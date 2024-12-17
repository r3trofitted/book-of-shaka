class SkillRollsController < ApplicationController
  def new
    @skill_roll = SkillRoll.new character_id: params[:character_id], skill: params[:skill]
  end

  def create
    @skill_roll = SkillRoll.new skill_roll_params

    if @skill_roll.save
      respond_to do |format|
        format.html         { redirect_to @skill_roll.character } # TODO: redirect_to @skill_roll
        format.turbo_stream { render turbo_stream: turbo_stream.update("modal", @skill_roll) }
      end
    else
      # TODO
    end
  end

  def push
    first_roll = SkillRoll.find params[:id]
    @skill_roll = SkillRoll.push_for(first_roll)

    if @skill_roll.save
      respond_to do |format|
        format.html         { redirect_to @skill_roll.character } # TODO: redirect_to @skill_roll
        format.turbo_stream { render turbo_stream: turbo_stream.update("modal", @skill_roll) }
      end
    end
  end

  private

  def skill_roll_params
    params.require(:skill_roll).permit(:character_id, :skill, :base_dice, :skill_dice, :gear_dice)
  end
end
