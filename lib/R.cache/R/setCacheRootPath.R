#########################################################################/**
# @RdocDefault setCacheRootPath
#
# @title "Sets the root path to the file cache directory"
#
# \description{
#  @get "title".
#  By default, this function will set it to \code{~/.Rcache/}.
# }
#
# @synopsis
#
# \arguments{
#   \item{path}{The path.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) the old root path.
# }
#
# @author
#
# \seealso{
#  @see "getCacheRootPath".
# }
#
# @keyword "programming"
# @keyword "IO"
#*/######################################################################### 
setMethodS3("setCacheRootPath", "default", function(path="~/.Rcache", ...) {
  path <- as.character(path);

  if (!isDirectory(path)) {
    mkdirs(path);
    if (!isDirectory(path)) {
      throw("Could not create cache directory: ", path);
    }
  }

  # Add a README.txt to cache root (expaining what the directory is)
  filename <- "README.txt";
  pathnameD <- file.path(path, filename);
  if (!isFile(pathnameD)) {
    pathnameS <- system.file(".Rcache", filename, package="R.cache");
    file.copy(pathnameS, pathnameD);
  }

  ovalue <- options("R.cache::rootPath"=path);

  invisible(ovalue);
}) # setCacheRootPath()


############################################################################
# HISTORY:
# 2011-12-29
# o Now setCacheRootPath() adds a README.txt file to the root path, iff
#   missing. It explains why the directory structure exists and what
#   created it.
# 2007-03-07
# o Changed the default root path to ~/.Rcache/
# 2007-01-24
# o Renamed from setCachePath().
# 2005-12-07
# o Created.
############################################################################
