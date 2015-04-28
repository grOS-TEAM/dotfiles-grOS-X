// grOS-DWM Config

// Module
#include <X11/XF86keysym.h>
#include "bstack.c"
#include "push.c"
#include "restart.c"

// Appearance
#define NUMCOLORS 7                      	 // need at least 3
static const char colors[NUMCOLORS][ColLast][8] = {
//     border    foreground   background
   { "#313a3f", "#555555", "#1d1d1d" },  // 1 = Normal empty tag
   { "#1d1d1d", "#e6e6e6", "#1d1d1d" },  // 2 = Selected tag
   { "#1d1d1d", "#e6e6e6", "#1d1d1d" },  // 3 = Occupied tag
   { "#1d1d1d", "#e6e6e6", "#1d1d1d" },  // 4 = Layout symbol
   { "#1d1d1d", "#e6e6e6", "#1d1d1d" },  // 5 = Selected client title
   { "#1d1d1d", "#e6e6e6", "#1d1d1d" },  // 6 = Status text
   { "#1d1d1d", "#e6e6e6", "#1d1d1d" },  // 7 = Status separator
};

static const char font[]              	= "-*-drift-*-*-*-*-10-*-*-*-*-*-*-*";
// static const char font[]              	= "-jmk-dweep-medium-r-semicondensed-*-11-*-*-*-*-*-*-*";
static const unsigned int borderpx   	= 3;        		// Client Border Size
static const unsigned int snap       	= 7;        		// Snap pixels
static const unsigned int barpadding 	= 16;        		// Panel Vertical Padding
static const Bool showbar              	= True;     		// False for no bar
static const Bool topbar               	= False;    		// False for bottom bar


// Tags
static const char *tags[] = { "  ô  ", "  õ  ", "  ö  " };


// Window Rules
static const Rule rules[] = {
//     class      instance    title       tags mask     isfloating   monitor
    { "Gcolor2",  NULL,       NULL,       0,            True,        -1 },
};


// Layout Settings
static const float mfact      		= 0.50; 	// Master Width %
static const int nmaster      		= 1;    	// Clients in Master
static const Bool resizehints 		= False; 	// False Prevents Tiling Gaps


// Layout Icons
static const Layout layouts[] = {
//	   Symbol      Layout
	{ " ù ",      NULL },
	{ " ø ",	  tile },
	{ " ú ",      monocle },
	{ "[-]",	bstack },
};


// Key Definitions
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },


// Helper
#define SHCMD(cmd) { .v = (const char*[]){ "/usr/bin/zsh", "-c", cmd, NULL } }


// Commands
// static const char *dmenucmd[]     = { "dmenu_run", "-i", "-l", "5", "-p", " Run ", "-w", "320", "-h", "20", "-x", "10", "-y", "610", NULL };
// static const char *dmenucmd[]     = { "dmenu_run", "-fn", font, "-nb", colors[0][ColBG], "-nf", colors[0][ColFG],"-sb", colors[1][ColBG], "-sf", colors[1][ColFG], NULL };
static const char *dmenucmd[]       = { "dwm_dmenu.sh", NULL };
static const char *termcmd[]        = { "st", NULL };
static const char *lockcmd[]  	  	= { "i3lock", "-c", "000000", "-d", NULL };
static const char *fscmd[]  	    = { "spacefm", NULL };
static const char *scrotcmd[]  	  	= { "scrot", "%I-%m-%S.png", NULL };
static const char *shutdowncmd[]    = { "poweroff", NULL };

// Sound
static const char *volup[]          = { "dzvol", "-i", "3", NULL };
//static const char *volup[]          = { "amixer", "sset", "Master", "3%+", NULL };
static const char *voldown[]        = { "dzvol", "-d", "3", NULL };
//static const char *voldown[]        = { "amixer", "sset", "Master", "3%-", NULL };
static const char *voltoggle[]      = { "dzvol", "-t", NULL };
//static const char *voltoggle[]      = { "amixer", "sset", "Master", "toggle", NULL };

// Music
static const char *mocnext[]        = { "mocp", "-f", NULL };
static const char *mocprev[]        = { "mocp", "-r", NULL };
static const char *moctoggle[]      = { "mocp", "-G", NULL };
static const char *mockill[]	      = { "killall", "mocp", NULL };

static Key keys[] = {
//	  Modifier                      Key            Function            Argument
	{ MODKEY,                       XK_p,           spawn,          {.v = dmenucmd } },
	{ MODKEY|ShiftMask,             XK_l,           spawn,          {.v = lockcmd } },
	{ MODKEY|ShiftMask,             XK_Return,      spawn,          {.v = termcmd } },
	{ 0,             		    	XK_F7,          spawn,          {.v = fscmd } },
	{ 0,             		    	XK_F3,          spawn,          {.v = dmenucmd } },
	{ 0,             		    	XK_Print,       spawn,          {.v = scrotcmd } },
    { 0,             		    	0x1008ff2a,     spawn,          {.v = shutdowncmd } },

    // Volume Commands
    { 0,             		    	0x1008ff13,     spawn,          {.v = volup } },
    { 0,              		    	0x1008ff11,     spawn,          {.v = voldown } },
    { 0,             		    	0x1008ff12,     spawn,          {.v = voltoggle } },

    // Music Commands
    { 0,             		    	0x1008ff17,     spawn,          {.v = mocnext } },
    { 0,              		    	0x1008ff16,     spawn,          {.v = mocprev } },
    { 0,             		    	0x1008ff14,     spawn,          {.v = moctoggle } },
    { 0,             		    	0x1008ff15,     spawn,          {.v = mockill } },

    // Next Prev Tag
    { MODKEY|ControlMask,  			XK_Right,       shiftview,  	{ .i = +1 } },
    { MODKEY|ControlMask,  			XK_Left,        shiftview,  	{ .i = -1 } },

    // Client Facts
	{ MODKEY,			            XK_k,      		setcfact,       {.f = +0.25} },
	{ MODKEY,           		    XK_j,      		setcfact,       {.f = -0.25} },
	{ MODKEY,             			XK_o,      		setcfact,       {.f =  0.00} },

	// WM Operations
	{ MODKEY,                       XK_f,           setlayout,      {.v = &layouts[0]} },
	{ MODKEY,                       XK_t,     		setlayout,      {.v = &layouts[1]} },
	{ MODKEY,                       XK_m,     		setlayout,      {.v = &layouts[2]} },
	{ MODKEY,                       XK_equal,       incnmaster,     {.i = -1 } },
	{ MODKEY,                       XK_minus,       incnmaster,     {.i = +1 } },
	{ MODKEY,                       XK_Return, 		zoom,           {0} },
	{ MODKEY,                       XK_h,           setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_l,           setmfact,       {.f = +0.05} },
	{ MODKEY,			            XK_space,       togglefloating, {0} },
	{ MODKEY,                       XK_b,           togglebar,      {0} },
	{ MODKEY,                       XK_Tab,         focusstack,     {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_c,          	killclient,     {0} },
	TAGKEYS(                        XK_1,                            0)
	TAGKEYS(                        XK_2,                            1)
	TAGKEYS(                        XK_3,                            2)

    // New keybindings applied by randalltux
	{ MODKEY|ShiftMask,             XK_q,           quit,           {0} },
    { MODKEY|ShiftMask,             XK_Up,          pushup,         {0} },
    { MODKEY|ShiftMask,             XK_Down,        pushdown,       {0} },
    { MODKEY|ShiftMask,             XK_r,           restart,        {0} },
};

// Button Definitions
static Button buttons[] = {
//	  Click                Eevent Mask      Button          Function        Argument
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkWinTitle,          0,              Button3,        zoom,           {0} },
	{ ClkStatusText,        0,              Button3,        spawn,          {.v = dmenucmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};
