# Solarized for MATLAB

## Precision colors for machines and people

### Solarized

Solarized was created by [Ethan Schoonover][ES] and you can find out more
about the design work that went into it on his [project page][ES-solarized]. If
you would like to use Solarized in editors other than MATLAB or on your terminal,
Ethan hosts the [main repository][SolarizedRepo] which combines all the available
ports in one place.

### Solarized for MATLAB

Solarized was initially ported for MATLAB by [Ben Hager][BH] and can be
found at <https://github.com/benhager/solarized-matlab>. [Wang Yudong][wyudong] add
color setup to restore Matlab's defaults.

### Screenshots

Solarized Light Color Scheme

![LightImg](https://github.com/wyudong/solarized-matlab/blob/master/screenshots/light-theme.png)

Solarized Dark Color Scheme

![DarkImg](https://github.com/wyudong/solarized-matlab/blob/master/screenshots/dark-theme.png)

### Installation

You can download the files in one of two ways:

* using `git clone git://github.com/wyudong/solarized-matlab.git`
* using the **Download** button to get the ZIP file and extracting the files to
  a folder

Once the files are on your PC, add the folder `solarized-matlab` to your Matlab 
path or **copy** the file file `setupSolarized.m` it to your working folder.

### Usage

The `setupSolarized.m` script can be run from the Matlab command window. The file
must be in current working directory or in another directory that is in your path.
The type of Solarized theme loaded is based on a string passed to the function
when it is run. Here are examples of loading the *light* and *dark* themes.

* `>> setupSolarized('light');`
* `>> setupSolarized('dark');`

This will load the color scheme. 

* `>> setupSolarized('default');`

Now restore the color scheme to Matlab's *default* option is also supported.

[ES]: http://ethanschoonover.com
[ES-Solarized]: http://ethanschoonover.com/solarized
[SolarizedRepo]: https://github.com/altercation/solarized
[BH]: http://benhager.com
[wyudong]: http://wyudong.com
