require_relative 'menu/game_menu'

class GameWindow < Chingu::Window
  def initialize
    super(960, 544, false)
    self.input = {escape: :exit}
    self.caption = "... Project 0 ..."
    retrofy
    switch_game_state(GameMenu)
  end

  def draw
    Image['cursor.png'].draw($window.mouse_x, $window.mouse_y, 10)
    super
  end
end
