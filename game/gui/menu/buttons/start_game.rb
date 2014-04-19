require_relative 'generic_button'

class StartGame < GenericButton
  def setup
    @button_up = Image['blue_button_up.png']
    @button_down = Image['blue_button_down.png']
    @message = "Start"
    super
  end

  def on_click
    :start_game
  end
end
