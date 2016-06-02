class Building
  attr_accessor :num_windows, :num_walls, :num_stories, :building_materials, :colors, :has_aircon
  def initialize(window_count, wall_count, story_count, materials, colors, aircon)
    @num_windows = window_count
    @num_walls = wall_count
    @num_stories = story_count
    @building_materials = materials
    @colors = colors
    @has_aircon = aircon
  end
end

building_1 = Building.new(15, 4, 4, "metal", "gray", false)

building_2 = Building.new(12, 3, 4, ["metal", "cement"], ["gray", "tan"], true)
