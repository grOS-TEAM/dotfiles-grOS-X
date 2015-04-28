-----------------------------
-- grOS-X AwesomeWM Theme 3.5 --
-----------------------------

theme = {}

theme.font          = "lemon 7"
theme.font_alt      = "-*-lemon-*-*-*-*-*-*-*-*-*-*-*-*"

theme.bg_normal     = "#0D0D0D" -- #0D0D0D
theme.bg_focus      = "#1A1A1A" -- #1A1A1A
theme.bg_urgent     = theme.bg_normal
theme.bg_minimize   = theme.bg_normal
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#505050"
theme.fg_focus      = "#666666"
theme.fg_urgent     = "#666666"
theme.fg_minimize   = "#2B2B2B"

theme.border_width  = 2
theme.border_normal = "#121212" --#1A1A1A
theme.border_focus  = "#1A1A1A" --#1A1A1A
theme.border_marked = "#3B3B3B" --#3B3B3B

--theme.useless_gap_width = 10

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

theme.taglist_bg_focus = "#1A1A1A"

-- Display the taglist squares
theme.taglist_squares_sel = "~/.config/awesome/theme/taglist/squaref-fg.png"
theme.taglist_squares_unsel = "~/.config/awesome/theme/taglist/squaref-g.png"

theme.tasklist_disable_icon = true
theme.tasklist_align = "center"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]

theme.menu_bg_normal = "#3b3b3b" --121212
theme.menu_bg_focus = "#6b59b3" --1A1A1A

theme.menu_fg_normal = "#8c8c8c" --505050
theme.menu_fg_focus = "#b5b5b5" --666666

theme.menu_border_width = 0
theme.menu_border_color = "#1A1A1A"

theme.menu_submenu_icon = "~/.config/awesome/theme/submenu4.png"
theme.menu_height = 15
theme.menu_width  = 105

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = "~/.config/awesome/theme/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = "~/.config/awesome/theme/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = "~/.config/awesome/theme/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = "~/.config/awesome/theme/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = "~/.config/awesome/theme/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = "~/.config/awesome/theme/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = "~/.config/awesome/theme/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = "~/.config/awesome/theme/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = "~/.config/awesome/theme/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = "~/.config/awesome/theme/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = "~/.config/awesome/theme/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = "~/.config/awesome/theme/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = "~/.config/awesome/theme/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = "~/.config/awesome/theme/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = "~/.config/awesome/theme/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = "~/.config/awesome/theme/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = "~/.config/awesome/theme/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = "~/.config/awesome/theme/titlebar/maximized_focus_active.png"

--(Use instead "feh /path/to/wall.jpg --bg-fill" in .xinitrc (* before "exec awesome"))
--theme.wallpaper = config_dir .. "/theme/wallpaper-1624678.jpg"

-- You can use your own layout icons like this:
--theme.layout_fairh = "~/.config/awesome/theme/layouts/fairhw.png"
--theme.layout_fairv = "~/.config/awesome/theme/layouts/fairvw.png"
--theme.layout_floating  = "~/.config/awesome/theme/layouts/floatingw.png"
--theme.layout_magnifier = "~/.config/awesome/theme/layouts/magnifierw.png"
--theme.layout_max = "~/.config/awesome/theme/layouts/maxw.png"
--theme.layout_fullscreen = "~/.config/awesome/theme/layouts/fullscreenw.png"
--theme.layout_tilebottom = "~/.config/awesome/theme/layouts/tilebottomw.png"
--theme.layout_tileleft   = "~/.config/awesome/theme/layouts/tileleftw.png"
--theme.layout_tile = "~/.config/awesome/theme/layouts/tilew.png"
--theme.layout_tiletop = "~/.config/awesome/theme/layouts/tiletopw.png"
--theme.layout_spiral  = "~/.config/awesome/theme/layouts/spiralw.png"
--theme.layout_dwindle = "~/.config/awesome/theme/layouts/dwindlew.png"

theme.layout_floating  = "~/.config/awesome/theme/layouts/twi-float.png"
theme.layout_tile = "~/.config/awesome/theme/layouts/twi-tile.png"

theme.awesome_icon = "~/.config/awesome/theme/awesome-launcher.png"

-- Define the icon theme for application icons. If not set then the icons 
-- from ~/.config/icons and ~/.config/icons/hicolor will be used.
theme.icon_theme = nil

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
