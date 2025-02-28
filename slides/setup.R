# Set code to be reasonably sized and not to run off the slide
options(width = 80)
knitr::opts_chunk$set(
	size = "scriptsize"
)

# From https://stackoverflow.com/a/46526740
# This is a workaround to make sure the size option gets honored
def.chunk.hook = knitr::knit_hooks$get("chunk")
knitr::knit_hooks$set(chunk = function(x, options) {
	x = def.chunk.hook(x, options)
	ifelse(options$size != "normalsize",
		paste0("\n \\", options$size,"\n\n", x, "\n\n \\normalsize"),
		x)
})
