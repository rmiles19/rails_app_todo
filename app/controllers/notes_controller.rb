class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new 
  end

  def edit
    @note = Note.find(params[:id])
  end

  def create
    @note = Note.new(note_params)
 
    if @note.save
      redirect_to notes_path
    else
      render :new
    end
  end
 
  private
 
    def notes_params
      params.require(:page).permit(:title, :body, :urgency, :deadline)
    end
  
end
