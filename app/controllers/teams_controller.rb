class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def new
    @team= Team.new
  end

  def create
    # render text: params.ins
    Team.create(team_params)
    redirect_to(teams_path)
  end

  def show
    @team= Team.find(params[:id])
  end

  def destroy  
    Team.find(params[:id]).destroy
    # @team.destroy
    redirect_to(teams_path)
  end

  def edit
    @team= Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.update(team_params)
    redirect_to(teams_path)
  end



  private
  def team_params
    params.require(:team).permit(:name, :image, :founded, :mascot, :league, :last_position)
  end
 

end