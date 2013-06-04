function varargout = setupSolarized(varargin) %#ok<STOUT>
%===============================================================================
% FUNCTION: 
%   setupSolarized.m
%
% PURPOSE: 
%   Loads the Solarized color scheme, either light or dark as specified by the
%   user. More information about the Solarzied project can be found online:
%
%       http://ethanschoonover.com/solarized
%
% RESULTS OF SCRIPT:
%   o The script loads the color pallet as defined by the solarized project
%   o Optional string inputs are 'light', ''dark', or 'default' (see examples
%   below for proper usage. The default option will restore the Matlab default
%   color scheme.
%
% EXAMPLE:
%   o setupSolarized('light');
%   o setupSolarized('dark');
%   o setupSolarized('default');  <-- not currently working
%===============================================================================

%===============================================================================
% REVISION HISTORY:
%   o Utilities Toolbox:
%       - B. Hager / 2013-05-31 <- Original and debugged.
%
% COPYRIGHT:
%   This work and derivatives of this work are copyrighted by Honda
%   Aircraft Company. Any use without permission is strictly 
%   prohibited.
%===============================================================================
%% Initial Setup
if (nargin==1)
    slrzd = varargin{1};
elseif (nargin==0)
    slrzd = 'default';
end
        
% Setup the color pallet           % SOLARIZED HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      RGB         HSB
% divide by 256 for Matlab         % --------- ------- ---- -------  ----------- ---------- ----------- -----------
sol.base03  = [  0  43  54] / 256; % base03    #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
sol.base02  = [  7  54  66] / 256; % base02    #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
sol.base01  = [ 88 110 117] / 256; % base01    #586e75 10/7 brgreen  240 #585858 45 -07 -07  88 110 117 194  25  46
sol.base00  = [101 123 131] / 256; % base00    #657b83 11/7 bryellow 241 #626262 50 -07 -07 101 123 131 195  23  51
sol.base0   = [131 148 150] / 256; % base0     #839496 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
sol.base1   = [147 161 161] / 256; % base1     #93a1a1 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
sol.base2   = [238 232 213] / 256; % base2     #eee8d5  7/7 white    254 #e4e4e4 92 -00  10 238 232 213  44  11  93
sol.base3   = [253 246 227] / 256; % base3     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
sol.yellow  = [181 137   0] / 256; % yellow    #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
sol.orange  = [203  75  22] / 256; % orange    #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
sol.red     = [220  50  47] / 256; % red       #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
sol.magenta = [211  54 130] / 256; % magenta   #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
sol.violet  = [108 113 196] / 256; % violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
sol.blue    = [ 38 139 210] / 256; % blue      #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
sol.cyan    = [ 42 161 152] / 256; % cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
sol.green   = [133 153   0] / 256; % green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60

%% Setup Color Scheme for Light/Dark Options
if strcmp(slrzd,'light')
    sycb = 0;           % Set 'Use system colors' checkbox to False
    txc  = sol.base00;  % Set 'Text' color
    bgc  = sol.base3;   % Set 'Background' color
    kwd  = sol.blue;    % Set 'Keywords' color
    cmt  = sol.cyan;    % Set 'Comments' color - spec calls for base1, not sure about that...
    str  = sol.magenta; % Set 'Strings' color
    ustr = sol.orange;  % Set 'Unterminated strings' color
    scmd = sol.yellow;  % Set 'System commands' color
    errs = sol.red;     % Set 'Errors' color
    hyp  = sol.blue;    % Set 'Hyperlinks' color
    warn = sol.orange;  % Set 'Warnings' color
    afhb = 0;           % Set 'Autofix highlight' checkbox to False
    afh  = sol.base2;   % Set 'Autofix highlight' color
%     ahib = 0;           % Set 'Automatically highlight' checkbox to False
%     ahi  = sol.violet;  % Set 'Automatically highlight' color
    vwss = sol.green;   % Set 'Variables with shared scope' color
    clhb = 0;           % Set 'Highlight cells' checkbox to False
    hclb = 1;           % Set 'Highlight current line' checkbox to True
    hcl  = sol.base2;   % Set 'Highlight current line' color
    slnb = 1;           % Set 'Show line numbers' checkbox to True
    rtlb = 1;           % Set 'Show line' checkbox in Right-hand text limit to True
elseif strcmp(slrzd,'dark')
    sycb = 0;           % Set 'Use system colors' checkbox to False
    txc  = sol.base0;   % Set 'Text' color
    bgc  = sol.base03;  % Set 'Background' color
    kwd  = sol.blue;    % Set 'Keywords' color
    cmt  = sol.cyan;    % Set 'Comments' color - spec calls for base1, not sure about that...
    str  = sol.magenta; % Set 'Strings' color
    ustr = sol.orange;  % Set 'Unterminated strings' color
    scmd = sol.yellow;  % Set 'System commands' color
    errs = sol.red;     % Set 'Errors' color
    hyp  = sol.blue;    % Set 'Hyperlinks' color
    warn = sol.orange;  % Set 'Warnings' color
    afhb = 0;           % Set 'Autofix highlight' checkbox to False
    afh  = sol.base00;  % Set 'Autofix highlight' color
%     ahib = 0;           % Set 'Automatically highlight' checkbox to False
%     ahi  = sol.violet;  % Set 'Automatically highlight' color
    vwss = sol.green;   % Set 'Variables with shared scope' color
    clhb = 0;           % Set 'Highlight cells' checkbox to False
    hclb = 1;           % Set 'Highlight current line' checkbox to True
    hcl  = sol.base02;  % Set 'Highlight current line' color
    slnb = 1;           % Set 'Show line numbers' checkbox to True
    rtlb = 1;           % Set 'Show line' checkbox in Right-hand text limit to True
else
%     sycb = 1;           % Set 'Use system colors' checkbox to True
    % Need to get colors setup to return to default
    return
end

%% Desktop tool colors
com.mathworks.services.Prefs.setBooleanPref('ColorsUseSystem',sycb); clear('sycb')

com.mathworks.services.Prefs.setColorPref('ColorsText',java.awt.Color(txc(1), txc(2), txc(3))); 
com.mathworks.services.ColorPrefs.notifyColorListeners('ColorsText'); clear('txc')

com.mathworks.services.Prefs.setColorPref('ColorsBackground',java.awt.Color(bgc(1), bgc(2), bgc(3))); 
com.mathworks.services.ColorPrefs.notifyColorListeners('ColorsBackground'); clear('bgc')

%% Setup MATLAB syntax highlighting colors
com.mathworks.services.Prefs.setColorPref('Colors_M_Keywords',java.awt.Color(kwd(1), kwd(2), kwd(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_M_Keywords'); clear('kwd')

com.mathworks.services.Prefs.setColorPref('Colors_M_Comments',java.awt.Color(cmt(1), cmt(2), cmt(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_M_Comments'); clear('cmt')

com.mathworks.services.Prefs.setColorPref('Colors_M_Strings',java.awt.Color(str(1), str(2), str(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_M_Strings'); clear('str')

com.mathworks.services.Prefs.setColorPref('Colors_M_UnterminatedStrings',java.awt.Color(ustr(1), ustr(2), ustr(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_M_UnterminatedStrings'); clear('ustr')

com.mathworks.services.Prefs.setColorPref('Colors_M_SystemCommands',java.awt.Color(scmd(1), scmd(2), scmd(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_M_SystemCommands'); clear('scmd')

com.mathworks.services.Prefs.setColorPref('Colors_M_Errors',java.awt.Color(errs(1), errs(2), errs(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_M_Errors');clear('errs')

%% Other colors
com.mathworks.services.Prefs.setColorPref('Colors_HTML_HTMLLinks',java.awt.Color(hyp(1), hyp(2), hyp(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_HTML_HTMLLinks'); clear('hyp')

%% Code analyzer colors
com.mathworks.services.Prefs.setColorPref('Colors_M_Warnings',java.awt.Color(warn(1), warn(2), warn(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_M_Warnings'); clear('warn')

com.mathworks.services.Prefs.setBooleanPref('ColorsUseMLintAutoFixBackground',afhb);
com.mathworks.services.Prefs.setColorPref('ColorsMLintAutoFixBackground',java.awt.Color(afh(1), afh(2), afh(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('ColorsMLintAutoFixBackground'); clear('afhb','afh')

%% Variable and function colors
% com.mathworks.services.Prefs.setBooleanPref('Editor.VariableHighlighting.Automatic',ahib);
% com.mathworks.services.Prefs.setColorPref('Editor.VariableHighlighting.Color',java.awt.Color(ahi(1), ahi(2), ahi(3)));
% com.mathworks.services.ColorPrefs.notifyColorListeners('Editor.VariableHighlighting.Color'); clear('ahib','ahi')

% *** need to add checkbox option for variables with shared scope here
com.mathworks.services.Prefs.setColorPref('Editor.NonlocalVariableHighlighting.TextColor',java.awt.Color(vwss(1), vwss(2), vwss(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Editor.NonlocalVariableHighlighting.TextColor');clear('vwss')

%% Cell display options
com.mathworks.services.Prefs.setBooleanPref('EditorCodepadHighVisible',clhb); clear('clhb')
% Highlight cells color is 'Editorhighlight-lines'

%% Editor/Debugger General display options
com.mathworks.services.Prefs.setBooleanPref('Editorhighlight-caret-row-boolean',hclb);
com.mathworks.services.Prefs.setColorPref('Editorhighlight-caret-row-boolean-color',java.awt.Color(hcl(1), hcl(2), hcl(3)));
com.mathworks.services.ColorPrefs.notifyColorListeners('Editorhighlight-caret-row-boolean-color'); clear('hclb','hcl')

com.mathworks.services.Prefs.setBooleanPref('EditorShowLineNumbers',slnb); clear('slnb')

com.mathworks.services.Prefs.setBooleanPref('EditorRightTextLineVisible',rtlb);
%EditorRightTextLineLimit=I80
%EditorRightTextLimitLineWidth=I1
clear('rtlb')

%% Cleanup
clear('sol')