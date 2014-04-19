require_relative 'buttons/start_game'
require_relative 'buttons/quit_game'
require_relative '../stages/stage1'

class GameMenu < Chingu::GameState
  def setup
    @buttons = [
      StartGame.create(x: 400, y: 150, zorder: 1),
      QuitGame.create(x:400, y: 200, zorder: 1)
    ]
    self.input = {left_mouse_button: :left_mouse_button}
  end

  def draw
    @buttons.each(&:draw)
    super
  end

  def start_game
  end

  def left_mouse_button
    action = @buttons.map do |button|
      button.check_clicked($window.mouse_x, $window.mouse_y)
    end
    if action.reject(&:nil?).first == :start_game
      switch_game_state(Stage1)
    end
  end
end
