library(DiagrammeR)
library(DiagrammeRsvg)

# Create a graph as a left-to-right path
graph <-
  create_graph() %>%
  add_path(
    n = 5, 
    type = "step",
    label = c(
      "xaringan\\n .Rmd", "knitr", ".md",
      "remark.js via\\n xaringan::moon_reader", "html"),
    node_aes = node_aes(  # set node aesthetics
      shape = c("circle", "square", "circle", "rectangle", "circle"),
      width = c(0.75, 0.5, 0.5, 2, 0.5),
      color = "#3C3C3C",
      fontcolor = "black",
      fillcolor = c("#61acf0", "#f0a561", "#cbd20a", "#f0a561", "#e74a2f"),
      fontname = "Lato"
    ),
    edge_aes = edge_aes(  # set edge aesthetics
      color = "#3C3C3C"
    )
  ) %>%
  add_global_graph_attrs(attr = "layout", value = "dot", attr_type = "graph") %>%
  add_global_graph_attrs(attr = "rankdir", value = "LR", attr_type = "graph")


# View the graph in the Viewer
graph %>% render_graph()

# Export as a SVG (requires that the DiagrammeRsvg pkg is loaded)
graph %>% export_graph(file_name = here::here("static", "slides", "xaringan-diagram.svg")) # can also be .png, .pdf, .jpg

graph %>% export_graph(file_name = here::here("static", "slides", "xaringan-diagram.png")) # can also be .png, .pdf, .jpg
