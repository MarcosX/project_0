class Bullet < GameObject
  has_traits :velocity, :collision_detection
  has_trait :bounding_circle

  def setup
    @image = Image['bullet.png']
    @velocity_y = -10
    @factor_x = @factor_y = 0.5
  end
end
