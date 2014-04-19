class Enemy < GameObject
  has_traits :velocity, :collision_detection
  has_trait :bounding_circle

  def setup
    @image = Image['enemy.png']
    @velocity_y = 3
    @factor_x = @factor_y = 0.5
  end
end
