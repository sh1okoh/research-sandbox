require 'datasets'
require 'charty'

penguins = Datasets::Penguins.new
plot = Charty.scatter_plot(data: penguins, x: :body_mass_g, y: :flipper_length_mm, color: :species)
Charty::Backends.use(:plotly)
plot.save("scatter.html")