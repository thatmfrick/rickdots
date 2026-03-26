return{
  "3rd/image.nvim",
  -- install imagemagick for arch, on fedora ImageMagic + ImageMagic-devel
  build = false,
  opts = {
    processor = "magick_cli",
  }
}
