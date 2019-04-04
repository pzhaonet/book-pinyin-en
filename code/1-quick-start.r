section <- '1-quick-start'
## extract codes
code <- function(rmd_name){
  knitr::purl(paste0(rmd_name, ".Rmd"),
              output = paste0(rmd_name, ".r"),
              documentation = 0)
}
code(section)

Sys.setlocale('LC_CTYPE', 'Chinese')

knitr::include_graphics('https://cdn.steemitimages.com/DQmc656HK9LmfyXJUK8EnxKHJ3bAB9hTV3eEJaHGupkDM6b/pinyin2.jpg')

## install.packages('pinyin')

## devtools::install_github("pzhaonet/pinyin")

require('pinyin')

lsf.str("package:pinyin")

py('春')

py(c('你', '好', '坏'))

py("你好坏")

testd <- data.frame(stringsAsFactors=FALSE,
                    x1 = c('我', '一定', '是个', '天才'),
                    x2 = c('我', '确', '是个', '天才'))
testd$x1py <- py(testd$x1)
testd$x2py <- py(testd$x2)
testd
