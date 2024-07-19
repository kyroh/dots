const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0e0f18", /* black   */
  [1] = "#476E90", /* red     */
  [2] = "#967789", /* green   */
  [3] = "#55B5CB", /* yellow  */
  [4] = "#AA9598", /* blue    */
  [5] = "#D4AB99", /* magenta */
  [6] = "#C6D5D1", /* cyan    */
  [7] = "#efe6e0", /* white   */

  /* 8 bright colors */
  [8]  = "#a7a19c",  /* black   */
  [9]  = "#476E90",  /* red     */
  [10] = "#967789", /* green   */
  [11] = "#55B5CB", /* yellow  */
  [12] = "#AA9598", /* blue    */
  [13] = "#D4AB99", /* magenta */
  [14] = "#C6D5D1", /* cyan    */
  [15] = "#efe6e0", /* white   */

  /* special colors */
  [256] = "#0e0f18", /* background */
  [257] = "#efe6e0", /* foreground */
  [258] = "#efe6e0",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
