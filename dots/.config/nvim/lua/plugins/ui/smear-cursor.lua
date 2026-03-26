return {
  "sphamba/smear-cursor.nvim",
  event = "VeryLazy",
  cond = true, -- ← remove or change to allow in GUI
  opts = {
    stiffness = 0.5,
    trailing_stiffness = 0.5,
    matrix_pixel_threshold = 0.5,
  },
}
