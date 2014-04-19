require_relative '../../entities/player.rb'
require_relative '../../entities/enemy.rb'

class Stage1 < Chingu::GameState
  has_traits :timer
  def setup
    @player = Player.new(x: 400, y: 350)
    every(2000) { Enemy.create(x: rand($window.width), y: 0) }
  end

  def draw
    @player.draw
    super
  end

  def update
    @player.update
    Bullet.each_bounding_circle_collision(Enemy) do |bullet, enemy|
      bullet.destroy
      enemy.destroy
    end
    super
  end
end
