# CANSSI '23: Code \& Files

---

For full details regarding custom plots/palettes, visit [Skye's Toolbox](https://github.com/Skyepaphora-Griffith/Skyes_Toolbox).

---

## Spalette: Colour Schemes

#### *Skrown:* Nudes and Earthy Shades

| Salt        | Smoke       | b1          | b2          | B1          | B2          | B3          |
|:------------|:------------|:------------|:------------|:------------|:------------|:------------|
| `#FBFAF9`![#FBFAF9](https://placehold.co/15x15/FBFAF9/FBFAF9.png) | `"#F7F5F3"`![#F7F5F3](https://placehold.co/15x15/F7F5F3/F7F5F3.png) | `"#EFEBE6"`![#EFEBE6](https://placehold.co/15x15/EFEBE6/EFEBE6.png) | `"#DFD7CD"`![#DFD7CD](https://placehold.co/15x15/DFD7CD/DFD7CD.png) | `"#897358"`![#897358](https://placehold.co/15x15/897358/897358.png) | `"#574938"`![#574938](https://placehold.co/15x15/574938/574938.png) | `"#322A20"`![#322A20](https://placehold.co/15x15/322A20/322A20.png) |

>(Hue=33, Sat=22)
>
>**"b"** for light browns (background colours, subtle shading, etc.)
>
>**"B"** for dark browns (text, foreground plot features, etc.)

#### *Skastels:* pastels

| red         | yellow      | green       | blue        | purple      |
|:------------|:------------|:------------|:------------|:------------|
| `#EF8F8F`![#EF8F8F](https://placehold.co/15x15/EF8F8F/EF8F8F.png) | `"#FCDE83"`![#FCDE83](https://placehold.co/15x15/FCDE83/FCDE83.png) | `"#B3C99C"`![#B3C99C](https://placehold.co/15x15/B3C99C/B3C99C.png) | `"#9CBAC9"`![#9CBAC9](https://placehold.co/15x15/9CBAC9/9CBAC9.png) | `"#B29CC9"`![#B29CC9](https://placehold.co/15x15/B29CC9/B29CC9.png) |

>**HOT:**  (lum=75, sat=75-95)
>
>**COLD:** (lum=70, sat=30)

#### *Skaturate:* saturated version of skastels

| red         | yellow      | green       | blue        | purple      |
|:------------|:------------|:------------|:------------|:------------|
| `#FF6666`![#FF6666](https://placehold.co/15x15/FF6666/FF6666.png) | `"#FFBB33"`![#FFBB33](https://placehold.co/15x15/FFBB33/FFBB33.png) | `"#8FCC52"`![#8FCC52](https://placehold.co/15x15/8FCC52/8FCC52.png) | `"#45B0E6"`![#45B0E6](https://placehold.co/15x15/45B0E6/45B0E6.png) | `"#A15CE6"`![#A15CE6](https://placehold.co/15x15/A15CE6/A15CE6.png) |

---

## Splot: Custom Plots

#### Preliminary Functions Required by Splot()

#### rekt

| | |
|:-----------------|:---------------------------------------------------------------|
| **Description:** | Creates rectangle over plot region (acts as background colour) |
| **Parameters:**  | col (colour); log (warps rectangle to fit logarithmic axes)    |
| **Notes:**  | Overlays current plot - you will have to replot the data unless rekt() is embedded in splot() |


#### sox

| | |
|:-----------------|:---------------------------------------------------------------|
| **Description:** |Redraws border around plot region |
| **Parameters:**  |N/A |
| **Notes:**       |Useful for image plots |


#### skor

| | |
|:-----------------|:---------------------------------------------------------------|
| **Description:** | Draws faint grid beneath the data: orientation lines similar to ggplot |
| **Parameters:**  |{x,y} (indep/dep variables: determines range); {xlim, ylim} (optional, passed through if called for main plot); {n1,n2} (number of lines along x/y); col (colour) |

#### slab

| | |
|:-----------------|:---------------------------------------------------------------|
| **Description:** | Adds Skye-designed labels to existing plot |
| **Parameters:**  | main (title); subb (subtitle); xlab (x axis label [duh]), ylab (y axis label); col (colour) |
| **Notes:**       | Height ("line") of main title is dependent on whether a subtitle exists. |
|                  | *Needs an argument for adjusting "line" of y axis labels.* |


#### rexs (not currently implemented)
| | |
|:-----------------|:---------------------------------------------------------------|
| **Description:** | Draws a symmetrical pillarbox background |
| **Parameters:**  | N (length of x vector); B (combined width of pillars); col (colour) |
| **Notes:**       | Designed specifically to highlight boundary regions omitted by sliding window spectrograms |

---

### Splot() function

| Parameter | Description                                                                                                     |
|:----------|:----------------------------------------------------------------------------------------------------------------|
| x, y      | Independent and dependent variables to plot, respectively                                                       |
| col       | Data will be plotted in this colour                                                                             |
| main, subb, xlab, ylab | title, subtitle, and axis labels. Title height dependent on existence of subtitle.                 |
| type      | plot type (lines, points, heights, connect-the-dots, etc.)                                                      |
| pch       | point character                                                                                                 |
| colr      | background colour for plot region (to be drawn by rekt())                                                       |
| skor      | Indicates whether to draw grid of orientation lines (similar to ggplot)                                         |
| n1,n2     | numbers of vertical and horizontal orientation lines if skor=TRUE                                               |
| skorcol   | colour of orientation lines if skor=TRUE                                                                        |
| log       | logarithmic axes (sends to main plot but also the rekt)                                                         |
| labs      | should x and y labels be automatically produced via substitute()? OPT-IN rather than OPT-OUT                    |
| las       | defines how axis tick labels are oriented (default is upright for both axes)                                    |
| ...       | other graphical parameters                                                                                      |

---
