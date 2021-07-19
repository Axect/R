library("profvis")
profvis(expr <- {
    library("rnoaa")
    library("ggplot2")

    out <- readRDS("extdata/out-ice.Rds")
    df <- dplyr::rbind_all(out, id <- "Year")

    ggplot(df, aes(long, lat, group = paste(group, Year))) +
        geom_path(aes(colour <- Year))
    ggsave("figures/icesheet-test.png")
}, interval = 0.01, prof_output = "ice-prof")
