require_relative 'generic_button'

class QuitGame < GenericButton
  def setup
    @button_up = Image['red_button_up.png']
    @button_down = Image['red_button_down.png']
    @message = "Quit"
    super
  end

  def on_click
    exit
  end
end
