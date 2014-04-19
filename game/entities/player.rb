require_relative 'bullet'

class Player < GameObject
  has_traits :timer, :velocity, :collision_detection
  has_trait :bounding_circle, :scale => 0.5

  def setup
    self.input = {
      holding_left: :holding_left,
      holding_right: :holding_right,
      holding_up: :holding_up,
      holding_down: :holding_down,
      holding_space: :fire
    }
    @image = Image['player.png']
    @speed_x = 5
    @speed_y = 3
    @factor_x = 0.5
    @factor_y = 0.5
    @cool_down_wait_time = 0
  end

  def holding_left; @x -= @speed_x; end
  def holding_right; @x += @speed_x; end
  def holding_up; @y -= @speed_y; end
  def holding_down; @y += @speed_y; end

  def update
    super
    @cool_down_wait_time -= 10
  end

  def fire
    return if (@cool_down_wait_time > 0)
    @cool_down_wait_time = 100

    Bullet.create(x: @x, y: @y)
    Sound["laser.ogg"].play
  end
end
