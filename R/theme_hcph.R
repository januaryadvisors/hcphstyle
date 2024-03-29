
#' Apply HCPH theme to ggplot object
#'
#' This function allows you to add the HCPH theme to your ggplot graphics.
#' @keywords theme_hcph
#' @export
#' @examples
#' scatter <- ggplot(mtcars) +
#' geom_point(aes(x=mpg, y=hp)) +
#' ggtitle("Title here", subtitle = "subtitle here") +
#' theme_hcph()

theme_hcph <- function () {
  #Check if font install; if not, use "Helvetica" and issue an error message
  checkfont <- system("fc-list | grep 'Georgia'", intern=T)
  font_na <- length(checkfont)==0
  if(font_na) warning("'Georgia' is not installed on your computer. Why not?")

  #Set font
  font <- ifelse(font_na, "Helvetica", "Georgia")

  ggplot2::theme(
    #Text format:
    #This sets the font, size, type and colour of text for the chart's title
    plot.title = ggplot2::element_text(family = font,size = 20, face = "bold", color = "#081F30"),

    #This sets the font, size, type and colour of text for the chart's subtitle, as well as setting a margin between the title and the subtitle
    plot.subtitle = ggplot2::element_text(family = font, size = 12, margin = ggplot2::margin(9, 0, 9, 0)),

    #This leaves the caption text element empty, because it is set elsewhere in the finalise plot function
    plot.caption = ggplot2::element_blank(),

    #Legend format
    #This sets the position and alignment of the legend, removes a title and backround for it and sets the requirements for any text within the legend. The legend may often need some more manual tweaking when it comes to its exact position based on the plot coordinates.
    legend.position = "top",
    legend.text.align = 0,
    legend.background = ggplot2::element_blank(),
    legend.title = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),
    legend.text = ggplot2::element_text(family = font, size = 10, color = "#081F30"),

    #Axis format
    #This sets the text font, size and colour for the axis test, as well as setting the margins and removes lines and ticks. In some cases, axis lines and axis ticks are things we would want to have in the chart - the cookbook shows examples of how to do so.
    axis.title = ggplot2::element_text(family = font, size = 10, color = "#081F30", face="bold"),
    axis.text = ggplot2::element_text(family = font, size = 10, color = "#081F30"),
    axis.text.x = ggplot2::element_text(margin = ggplot2::margin(5, b = 10)),
    axis.ticks = ggplot2::element_blank(),
    axis.line = ggplot2::element_blank(),

    #Grid lines
    #sets gridlines. In many cases you will want to remove y and x gridlines.
    panel.grid.major.y = ggplot2::element_line(color = "#cbcbcb"),
    panel.grid.major.x = ggplot2::element_line(color = "#cbcbcb"),

    #Blank background
    #This sets the panel background as blank, removing the standard grey ggplot background colour from the plot
    panel.background = ggplot2::element_blank(),

    #Strip background (#This sets the panel background for facet-wrapped plots to white, removing the standard grey ggplot background colour and sets the title size of the facet-wrap title to font size 22)
    strip.background = ggplot2::element_rect(fill = "white"),
    strip.text = ggplot2::element_text(size = 10, hjust = 0)
  )
}







