# ==============================================================================
# Project .Rprofile - Auto-configured for NCKH 2026-2027 Workspace
# ==============================================================================

local({
  # Ensure user personal R library is always included in .libPaths()
  user_lib <- Sys.getenv("R_LIBS_USER")
  if (!nzchar(user_lib)) {
    user_lib <- file.path(Sys.getenv("LOCALAPPDATA"), "R", "win-library",
                          paste0(R.version$major, ".", strsplit(R.version$minor, "\\.")[[1]][1]))
  }
  fallback_lib <- "C:/Users/ASUS/AppData/Local/R/win-library/4.5"
  for (lib_path in unique(c(user_lib, fallback_lib))) {
    if (nzchar(lib_path) && dir.exists(lib_path)) {
      .libPaths(unique(c(lib_path, .libPaths())))
    }
  }

  # Default CRAN mirror
  r_repos <- getOption("repos")
  r_repos["CRAN"] <- "https://cloud.r-project.org"
  options(repos = r_repos)
})

