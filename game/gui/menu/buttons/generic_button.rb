class GenericButton < GameObject
  has_trait :timer

  def setup
    @image = @button_up
    @current_state = :up
    Text.size = 20
    @text = Text.new(@message, x: @x-(@image.width/2)+20, y: @y-10, color: Color::WHITE, font: 'kenvector_future_thin')
  end

  def check_clicked(mouse_x, mouse_y)
    if mouse_x > (@x - @image.width/2) && mouse_x < (@x + @image.width/2) &&
      mouse_y > (@y - @image.height/2) && mouse_y < (@y + @image.height/2)
      if @current_state == :up
        after(100) do
          @current_state, @image = :up, @button_up
        end
        @current_state, @image = :down, @button_down
        on_click
      end
    end
  end

  def draw
    @text.draw
    super
  end
end
