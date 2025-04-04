library(here)
library(patchwork)
library(tidyverse)

df <- read_csv(file = here("data/ess_fieldwork_periods.csv"))


# Create a list of plots, one for each essround
plots <- lapply(unique(df$essround), function(round) {
  ggplot(df %>% filter(essround == round),
         aes(x = field_start,
             xend = field_end,
             y = factor(cntry),
             yend = factor(cntry))) +
    geom_segment(size = 1) +
    scale_y_discrete(limits = rev(levels(factor(df$cntry)))) +
    scale_x_date(labels = scales::date_format("%Y-%m"),
                 breaks = "3 months") +
    labs(x = "Date", 
         y = "Country", 
         title = paste("Survey Round", round)) +
    theme(legend.position = "none")
})

# Combine the plots in a 3x4 matrix
combined_plot <- wrap_plots(plots, ncol = 1)  # Adjust ncol as needed for 3x4 matrix


# Export plot
ggsave(filename = here("output/ess_fieldwork_periods.png"),
       plot = combined_plot,
       width = 10,    # Width of the plot in inches
       height = 40,   # Height of the plot in inches
       dpi = 300)     # Resolution in DPI (dots per inch)

# Display the combined plot
combined_plot
