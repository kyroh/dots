static const char norm_fg[] = "#efe6e0";
static const char norm_bg[] = "#0e0f18";
static const char norm_border[] = "#a7a19c";

static const char sel_fg[] = "#efe6e0";
static const char sel_bg[] = "#967789";
static const char sel_border[] = "#efe6e0";

static const char urg_fg[] = "#efe6e0";
static const char urg_bg[] = "#476E90";
static const char urg_border[] = "#476E90";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};