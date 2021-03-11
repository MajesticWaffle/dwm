//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "~/dwm/scripts/dwmmem",			2,		0},
	{"", "~/dwm/scripts/dwmnet",			1,		0},
	{"", "~/dwm/scripts/dwmvol",			1,		0},
	{"", "~/dwm/scripts/dwmdte",			30,		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
