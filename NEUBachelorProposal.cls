% 东北大学本科毕业设计（论文）开题报告LaTeX模板样式类
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{NEUBachelorProposal}[2025/11/19 V-1.0.0 A Bachelor Proposal LaTeX Template for NEU students]
\providecommand{\Version}{V-1.0.0}
\LoadClass[UTF8,heading=true,12pt,a4paper,fontset=none]{ctexart}

% ==================== 基本宏包 ====================
\RequirePackage{array}
\RequirePackage{multirow}
\RequirePackage{makecell}
\RequirePackage{amsmath,amssymb}
\RequirePackage{enumitem}
\RequirePackage{float}
\raggedbottom

% ==================== 页面设置 ====================
\RequirePackage{geometry}
\geometry{
    left=2.2cm,
    right=2.2cm,
    top=2.54cm,
    bottom=2.54cm,
    headheight=15pt,
    headsep=10pt,
    footskip=20.4pt
}

% ==================== 全局设置 ====================
% 这个全局设置不要调！千万不要调！这是整个模板排版的基础

% 设置表格默认样式
\renewcommand{\arraystretch}{1.3}  % 行间距
\setlength{\tabcolsep}{6pt}        % 列间距

% 设置段落间距
\setlength{\parskip}{0.5em}

% ==================== 字体设置 ====================
\newcommand{\fakeboldvalue}{2.17}   % 伪粗体参数
\newcommand{\fakeslantvalue}{0.333} % 伪斜体参数

\newif\iffound@system
\newif\iffound@font

\found@systemfalse

% 第一优先级，直接检测 Windows 字体
\IfFontExistsTF{SimSun}{
  \setCJKmainfont{SimSun}[
    AutoFakeBold  = \fakeboldvalue,
    AutoFakeSlant = \fakeslantvalue,
  ]
  % Windows 字体族定义
  \setCJKfamilyfont{zhsong}{SimSun}[
    AutoFakeBold  = \fakeboldvalue,
    AutoFakeSlant = \fakeslantvalue,
  ]
  \setCJKfamilyfont{zhhei}{SimHei}[
    AutoFakeBold  = \fakeboldvalue,
    AutoFakeSlant = \fakeslantvalue,
  ]
  \setCJKfamilyfont{zhkai}{KaiTi}[
    AutoFakeBold  = \fakeboldvalue,
    AutoFakeSlant = \fakeslantvalue,
  ]
  \setCJKfamilyfont{zhfs}{FangSong}[
    AutoFakeBold  = \fakeboldvalue,
    AutoFakeSlant = \fakeslantvalue,
  ]
  \setCJKmonofont{FangSong}[
    AutoFakeBold  = \fakeboldvalue,
    AutoFakeSlant = \fakeslantvalue,
  ]
  \found@systemtrue
}{
  % macOS
  \IfFileExists{/System/Library/Fonts/Menlo.ttc}{
    \IfFontExistsTF{Songti SC}{
      \setCJKmainfont{Songti SC}[
        AutoFakeBold  = \fakeboldvalue,
        AutoFakeSlant = \fakeslantvalue,
      ]
      % macOS 字体族定义
      \setCJKfamilyfont{zhsong}{Songti SC}[
        AutoFakeBold  = \fakeboldvalue,
        AutoFakeSlant = \fakeslantvalue,
      ]
      \setCJKfamilyfont{zhhei}{Heiti SC}[
        AutoFakeBold  = \fakeboldvalue,
        AutoFakeSlant = \fakeslantvalue,
      ]
      \setCJKfamilyfont{zhkai}{Kaiti SC}[
        AutoFakeBold  = \fakeboldvalue,
        AutoFakeSlant = \fakeslantvalue,
      ]
      \setCJKfamilyfont{zhfs}{STFangsong}[
        AutoFakeBold  = \fakeboldvalue,
        AutoFakeSlant = \fakeslantvalue,
      ]
      \setCJKmonofont{STFangsong}[
        AutoFakeBold  = \fakeboldvalue,
        AutoFakeSlant = \fakeslantvalue,
      ]
      \found@systemtrue
    }{}
  }{}
}

% 其它系统
\iffound@system\else
  \found@fontfalse
  
  % Noto CJK
  \IfFontExistsTF{Noto Serif CJK SC}{
    \setCJKmainfont{Noto Serif CJK SC}[
      AutoFakeBold  = \fakeboldvalue,
      AutoFakeSlant = \fakeslantvalue,
    ]
    % Noto 字体族定义
    \setCJKfamilyfont{zhsong}{Noto Serif CJK SC}[
      AutoFakeBold  = \fakeboldvalue,
      AutoFakeSlant = \fakeslantvalue,
    ]
    \setCJKfamilyfont{zhhei}{Noto Sans CJK SC}[
      AutoFakeBold  = \fakeboldvalue,
      AutoFakeSlant = \fakeslantvalue,
    ]
    \setCJKfamilyfont{zhkai}{FandolKai}[
      Extension     = .otf, 
      UprightFont   = *-Regular,
      AutoFakeBold  = \fakeboldvalue,
      AutoFakeSlant = \fakeslantvalue,
    ]
    \setCJKfamilyfont{zhfs}{FandolFang}[
      Extension     = .otf, 
      UprightFont   = *-Regular,
      AutoFakeBold  = \fakeboldvalue,
      AutoFakeSlant = \fakeslantvalue,
    ]
    \setCJKmonofont{FandolFang}[
      Extension     = .otf, 
      UprightFont   = *-Regular,
      AutoFakeBold  = \fakeboldvalue,
      AutoFakeSlant = \fakeslantvalue,
    ]
    \found@fonttrue
  }{}
  
  % 思源字体
  \iffound@font\else
    \IfFontExistsTF{Source Han Serif SC}{
      \setCJKmainfont{Source Han Serif SC}[
        AutoFakeBold  = \fakeboldvalue,
        AutoFakeSlant = \fakeslantvalue,
      ]
      % 思源字体族定义
      \setCJKfamilyfont{zhsong}{Source Han Serif SC}[
        AutoFakeBold  = \fakeboldvalue,
        AutoFakeSlant = \fakeslantvalue,
      ]
      \setCJKfamilyfont{zhhei}{Source Han Sans SC}[
        AutoFakeBold  = \fakeboldvalue,
        AutoFakeSlant = \fakeslantvalue,
      ]
      \setCJKfamilyfont{zhkai}{FandolKai}[
        Extension     = .otf, 
        UprightFont   = *-Regular,
        AutoFakeBold  = \fakeboldvalue,
        AutoFakeSlant = \fakeslantvalue,
      ]
      \setCJKfamilyfont{zhfs}{FandolFang}[
        Extension     = .otf, 
        UprightFont   = *-Regular,
        AutoFakeBold  = \fakeboldvalue,
        AutoFakeSlant = \fakeslantvalue,
      ]
      \setCJKmonofont{FandolFang}[
        Extension     = .otf, 
        UprightFont   = *-Regular,
        AutoFakeBold  = \fakeboldvalue,
        AutoFakeSlant = \fakeslantvalue,
      ]
      \found@fonttrue
    }{}
  \fi
  
  % 兜底 Fandol
  \iffound@font\else
    \setCJKmainfont{FandolSong}[
      Extension     = .otf,
      UprightFont   = *-Regular,
      AutoFakeBold  = \fakeboldvalue,
      AutoFakeSlant = \fakeslantvalue,
    ]
    % Fandol 字体族定义
    \setCJKfamilyfont{zhsong}{FandolSong}[
      Extension     = .otf, 
      UprightFont   = *-Regular,
      AutoFakeBold  = \fakeboldvalue,
      AutoFakeSlant = \fakeslantvalue,
    ]
    \setCJKfamilyfont{zhhei}{FandolHei}[
      Extension     = .otf, 
      UprightFont   = *-Regular,
      AutoFakeBold  = \fakeboldvalue,
      AutoFakeSlant = \fakeslantvalue,
    ]
    \setCJKfamilyfont{zhkai}{FandolKai}[
      Extension     = .otf, 
      UprightFont   = *-Regular,
      AutoFakeBold  = \fakeboldvalue,
      AutoFakeSlant = \fakeslantvalue,
    ]
    \setCJKfamilyfont{zhfs}{FandolFang}[
      Extension     = .otf, 
      UprightFont   = *-Regular,
      AutoFakeBold  = \fakeboldvalue,
      AutoFakeSlant = \fakeslantvalue,
    ]
    \setCJKmonofont{FandolFang}[
      Extension     = .otf, 
      UprightFont   = *-Regular,
      AutoFakeBold  = \fakeboldvalue,
      AutoFakeSlant = \fakeslantvalue,
    ]
  \fi
\fi

% 由于 fontset 设了 none，得自己定义一下 ctex 的命令
\newcommand*{\songti}{\CJKfamily{zhsong}}
\newcommand*{\heiti}{\CJKfamily{zhhei}}
\newcommand*{\kaishu}{\CJKfamily{zhkai}}
\newcommand*{\fangsong}{\CJKfamily{zhfs}}

\setmainfont{Times New Roman}

% ==================== 数学字体设置 ====================
\RequirePackage{unicode-math}

\xeCJKsetup{%
CJKmath=true, % 公式中直接写中文
}

\setmathfont{XITS Math}[StylisticSet = 8]
\setmathfont{XITS Math}[%
    StylisticSet = 1,
    range        = {cal,bfcal},
]%

% 兼容旧的粗体命令
\DeclareRobustCommand\bm[1]{{\symbfit{#1}}}%
\DeclareRobustCommand\boldsymbol[1]{{\symbfit{#1}}}%

% 数学字体样式设置（ISO 标准）
\unimathsetup{
  math-style    = ISO,
  bold-style    = ISO,
  nabla         = upright,
  partial       = upright,
}

% 积分号直立，不带上下限
\removenolimits{%
  \int\iint\iiint\iiiint\oint\oiint\oiiint
}%

\RequirePackage{upgreek}
\providecommand{\dd}{\mathop{}\!\mathrm{d}}
\providecommand{\ee}{\mathrm{e}}
\providecommand{\ii}{\mathrm{i}}
\providecommand{\jj}{\mathrm{j}}

\renewcommand\mathellipsis{\cdots} % 省略号居中

\AtBeginDocument{
\renewcommand{\Re}{\operatorname{Re}} % 罗马体\Re
\renewcommand{\Im}{\operatorname{Im}} % 罗马体\Im
}

% \parallel用宋体，使之倾斜
\IfFontExistsTF{SimSun}{
    \setmathfont{SimSun}[range={"2225}]
}{
    \IfFontExistsTF{FandolSong-Regular}{
    \setmathfont{FandolSong-Regular}[range={"2225}]}
{% 回退默认
}}

% up和bfup
\setmathfont{Times New Roman}[
  range = {up/{latin,Latin}},
]
\IfFontExistsTF{Times New Roman Bold}{
  \setmathfont{Times New Roman Bold}[
    range = {bfup/{latin,Latin}},
  ]
}{
  % 原生粗体缺失就用伪粗
  \setmathfont{Times New Roman}[
    range    = {bfup/{latin,Latin}},
    FakeBold = 2.17,
  ]
}
% it
\IfFontExistsTF{Times New Roman Italic}{
  \setmathfont{Times New Roman Italic}[
    range = {it/{latin,Latin}},
  ]
}{
  \setmathfont{Times New Roman}[
    range     = {it/{latin,Latin}},
    FakeSlant = 0.33,
  ]
}
% bfit
\IfFontExistsTF{Times New Roman Bold Italic}{
  \setmathfont{Times New Roman Bold Italic}[
    range = {bfit/{latin,Latin}},
  ]
}{
  \IfFontExistsTF{Times New Roman Bold}{
    % 粗体+伪斜
    \setmathfont{Times New Roman Bold}[
      range     = {bfit/{latin,Latin}},
      FakeSlant = 0.33,
    ]
  }{
    % 伪粗+伪斜
    \setmathfont{Times New Roman}[
      range     = {bfit/{latin,Latin}},
      FakeBold  = 2.17,
      FakeSlant = 0.33,
    ]
  }
}

\setmathfont{Times New Roman}[range={"03B5, "03C2, "03C6, "03B1, "03B2, "03B3, "03B4, "03B5, "03B6, "03B7, "03B8, "03B9, "03BA, "03BB, "03BC, "03BD, "03BE, "03BF, "03C0, "03C1, "03C3, "03C4, "03C5, "03C6, "03C7, "03C8, "03C9}]%

% 板粗体（空心体）和花体
% 参考https://www.crexyer.com/2019/06/mathbb-show-different-chars-with-unicode-math-package/
\DeclareMathAlphabet{\mathcal}{OMS}{cmsy}{m}{n} % 这个方案采用克努斯于1977–1979年设计的样式，不支持小写花体，参考https://logic.pku.edu.cn/docs/20211226234023970182.pdf
% 注释掉上一条命令，启用下一行，就可以支持小写花体，但我不喜欢这个字体
% \setmathfont[range={\mathcal}]{TeXGyrePagellaMath-Regular}
\let\mathbb\relax % remove the definition by unicode-math
\DeclareMathAlphabet{\mathbb}{U}{msb}{m}{n}

\RequirePackage{newunicodechar}

% 让unicode的℃符号能显示
\newunicodechar{℃}{\unit{\celsius}}

% 让unicode的罗马数字能显示
\newunicodechar{Ⅰ}{I}
\newunicodechar{Ⅱ}{II}
\newunicodechar{Ⅲ}{III}
\newunicodechar{Ⅳ}{IV}
\newunicodechar{Ⅴ}{V}
\newunicodechar{Ⅵ}{VI}
\newunicodechar{Ⅶ}{VII}
\newunicodechar{Ⅷ}{VIII}
\newunicodechar{Ⅸ}{IX}
\newunicodechar{Ⅹ}{X}
\newunicodechar{Ⅺ}{XI}
\newunicodechar{Ⅻ}{XII}

\newunicodechar{·}{$\cdot$}

%--- SI单位 ---%
\RequirePackage{siunitx}
\sisetup{
  inter-unit-product = \cdot, % 用 \cdot 分隔
  list-separator = {、},
  list-final-separator = {和},
  list-pair-separator = {和},
  list-units = single,
  range-units = single,
  range-phrase = \blx,
  separate-uncertainty = true % 不确定度用±
}

% ==================== 页眉页脚设置 ====================
\RequirePackage{fancyhdr}

\pagestyle{fancy}
\fancyhf{}
\fancyfoot[C]{\zihao{-5}\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% 首页无页码
\fancypagestyle{firstpage}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}

% ==================== 封面命令 ====================
\RequirePackage{eso-pic} % For testing
\RequirePackage{ifthen}
\RequirePackage{calc}
\RequirePackage{tikz}

% 定义变量
\newcommand{\@proposaltitle}{}
\newcommand{\@school}{}
\newcommand{\@major}{}
\newcommand{\@studentid}{}
\newcommand{\@grade}{}
\newcommand{\@studentname}{}
\newcommand{\@supervisor}{}
\newcommand{\@submityear}{}
\newcommand{\@submitmonth}{}
\newcommand{\@submitday}{}

% 设置变量的命令
\newcommand{\proposaltitle}[1]{\renewcommand{\@proposaltitle}{#1}}
\newcommand{\school}[1]{\renewcommand{\@school}{#1}}
\newcommand{\major}[1]{\renewcommand{\@major}{#1}}
\newcommand{\studentid}[1]{\renewcommand{\@studentid}{#1}}
\newcommand{\grade}[1]{\renewcommand{\@grade}{#1}}
\newcommand{\studentname}[1]{\renewcommand{\@studentname}{#1}}
\newcommand{\supervisor}[1]{\renewcommand{\@supervisor}{#1}}
\newcommand{\submityear}[1]{\renewcommand{\@submityear}{#1}}
\newcommand{\submitmonth}[1]{\renewcommand{\@submitmonth}{#1}}
\newcommand{\submitday}[1]{\renewcommand{\@submitday}{#1}}

\newlength{\titlewidth} % 标题宽度

% 强制标题居中排版
\newboolean{forcecentertitle}
\setboolean{forcecentertitle}{false}
\newcommand{\forcecentertitleon}{\setboolean{forcecentertitle}{true}}
\newcommand{\forcecentertitleoff}{\setboolean{forcecentertitle}{false}}

% 非强制时，标题不足一行居中对齐，超过一行左对齐
\newcommand{\smarttitle}[1]{%
    \settowidth{\titlewidth}{\zihao{4}#1}%
    \ifthenelse{\boolean{forcecentertitle}}{%
        \centering
        #1
    }{%
        \ifthenelse{\lengthtest{\titlewidth > 18em}}{%
            \raggedright
            #1
        }{%
            \centering
            #1
        }
    }
}

 % 标题为一行/两行时，有不一样的高度
\newlength{\titleextrafill}
\newboolean{forcetitlenofill}
\setboolean{forcetitlenofill}{false}
\newcommand{\forcetitlenofillon}{\setboolean{forcetitlenofill}{true}}
\newcommand{\forcetitlenofilloff}{\setboolean{forcetitlenofill}{false}}

\newlength{\titleminusfill} % 强制标题回缩高度
\newlength{\titleplusfill}  % 强制底部文字下降高度

\newcommand{\makecover}{
    \thispagestyle{firstpage}

    % 检测标题宽度来判断行数，并设置对应的 \titleextrafill
    \settowidth{\titlewidth}{\zihao{4}\@proposaltitle}
    \ifthenelse{\lengthtest{\titlewidth > 21.1em}}{%
        \setlength{\titleextrafill}{1.1cm}
    }{%
        \setlength{\titleextrafill}{0cm}
    }

    % 根据 forcetitlenofill 的 bool 值，来设置对应的 \titleminusfill
    \ifthenelse{\boolean{forcetitlenofill}}{%
        \setlength{\titleminusfill}{-1.9cm}
        \setlength{\titleplusfill}{1cm}
    }{%
        \setlength{\titleminusfill}{0cm}
        \setlength{\titleplusfill}{-0.1cm}
    }
    
    \begin{center}
        \vspace*{2.19cm}
        
        % 封面大字
        {\fontsize{28pt}{28pt}\selectfont 东北大学}
        
        \vspace{0.535cm}
        
        {\fontsize{28pt}{28pt}\selectfont 毕业设计（论文）开题报告}
        
        \vspace{4.35cm}
        
        % 基本信息
        {\zihao{4}
            \hspace*{0cm}\begin{tabular}{@{}r@{\hspace*{-0em}}l@{}}
                \makebox[5em][s]{题\hfill 目：} & 
                \begin{minipage}[t]{18em}
                    \linespread{1.85}\selectfont
                    \smarttitle{\@proposaltitle}
                \end{minipage} \\[\dimexpr0.1cm+\titleextrafill+\titleminusfill\relax]% 标题两行时，加上额外高度
                
                \makebox[5em][s]{学\hfill 院：} & 
                \begin{minipage}[t]{18em}
                    \centering\@school
                    \hrule height 0.7pt
                \end{minipage} \\[0.1cm]
                
                \makebox[5em][s]{专\hfill 业：} & 
                \begin{minipage}[t]{18em}
                    \centering\@major
                    \hrule height 0.7pt
                \end{minipage} \\[0.1cm]
                
                \makebox[5em][s]{学\hfill 号：} & 
                \begin{minipage}[t]{5.2025cm}
                    \centering\@studentid
                    \vspace{0.03cm}
                    \hrule height 0.7pt
                \end{minipage}
                \hfill
                年级\begin{minipage}[t]{2.45cm}
                    \centering\@grade
                    \hrule height 0.7pt
                \end{minipage}\\[0.1cm]
                
                \makebox[5em][s]{姓\hfill 名：} & 
                \begin{minipage}[t]{18em}
                    \centering\@studentname
                    \hrule height 0.7pt
                \end{minipage} \\[0.1cm]
                
                \makebox[5em][s]{指导教师：} & 
                \begin{minipage}[t]{18em}
                    \centering\@supervisor
                    \hrule height 0.7pt
                \end{minipage} \\
            \end{tabular}
        }

        % 标题为一行时，减去多余高度
        \vspace{\dimexpr3.45cm-\titleextrafill+\titleplusfill\relax}
        
        % 底部信息
        {\heiti\zihao{3} 东北大学教务处印制}
        
        \vspace{0.05cm}
        
        {\heiti\zihao{3}\makebox[2em][c]{\@submityear} 年\makebox[2em][c]{\@submitmonth}月\makebox[2em][c]{\@submitday}日}
        
    \end{center}
    
    % 第一行标题下划线
    \begin{tikzpicture}[remember picture,overlay]
        \draw[line width=0.675pt] ([xshift=7.225cm,yshift=-13.32cm]current page.north west) 
        -- ([xshift=16.12cm,yshift=-13.32cm]current page.north west);
    \end{tikzpicture}

    % 第二行标题下划线
    \ifthenelse{\boolean{forcetitlenofill}}{%
    }{%
        \ifthenelse{\lengthtest{\titlewidth > 21.1em}}{%
        \begin{tikzpicture}[remember picture,overlay]
            \draw[line width=0.675pt] ([xshift=7.225cm,yshift=-14.415cm]current page.north west) 
             -- ([xshift=16.12cm,yshift=-14.415cm]current page.north west);
        \end{tikzpicture}
    }}

    \setcounter{page}{0}% 封面之后才是第一页

    \newpage
}

% ==================== 标题样式 ====================
\ctexset{
    section = {
        format = \heiti\Large,
        beforeskip = 6pt,
        afterskip = 6pt,
    },
    subsection = {
        format = \heiti\large,
        beforeskip = 6pt,
        afterskip = 6pt,
    },
    subsubsection = {
        format = \heiti\normalsize,
        beforeskip = 6pt,
        afterskip = 6pt,
    }
}

% ==================== 模块命令 ====================
\RequirePackage{longtable}

\newcommand{\mokuai}[3][-4]{%
\setlength{\LTpre}{0pt}%   % 前间距
\setlength{\LTpost}{0pt}%  % 后间距
\begin{longtable}{|@{\hspace{0.5em}}m{1.802cm}@{\hspace{0.5em}}|@{\hspace{0.4em}}m{13.825cm}@{\hspace{0.8em}}|}
% 首页的表头和内容
\hline
\centering\kaishu\zihao{-4}\vspace{0.5em}\textbf{#2}\vspace{0.5em} &
\zihao{#1}\vspace{0.5em}#3\vspace{0.7em} \\
\endfirsthead
\hline
 &
\endhead
\hline
\endfoot
\hline
\endlastfoot
\end{longtable}
}

% 工作进度安排
\newcommand{\jindu}[2][5]{%
\setlength{\LTpre}{0pt}
\setlength{\LTpost}{0pt}
\begin{longtable}{|@{\hspace{0.5em}}m{1.802cm}@{\hspace{0.5em}}|@{}m{14.325cm}@{}|}
\hline
\centering\kaishu\zihao{-4}\textbf{%
\begin{tabular}[b]{@{}>{\centering\arraybackslash}p{0.8cm}@{}}
    \textbf{工作进度安排} \\
\end{tabular}} &
\zihao{#1}
\begin{tabular}{@{}|>{\centering\arraybackslash}m{0.8cm}|>{\arraybackslash}m{3.68cm}|>{\arraybackslash}m{3.5cm}|>{\arraybackslash}m{4.6cm}|@{}}
    \textbf{阶段} & \makecell[c]{\textbf{起止日期}} & \makecell[c]{\textbf{任务}} & \makecell[c]{\textbf{提交的阶段成果}} \\ \hline
    #2
\end{tabular} \\
\endfirsthead
\hline
 &
\endhead
\hline
\endfoot
\hline
\endlastfoot
\end{longtable}
}

\newcommand{\jindunoleft}[2][5]{%
\setlength{\LTpre}{0pt}
\setlength{\LTpost}{0pt}
\begin{longtable}{|@{\hspace{0.5em}}m{1.802cm}@{\hspace{0.5em}}|@{}m{14.325cm}@{}|}
\hline
\centering\kaishu\zihao{-4} &
\zihao{#1}
\begin{tabular}{@{}|>{\centering\arraybackslash}m{0.8cm}|>{\arraybackslash}m{3.68cm}|>{\arraybackslash}m{3.5cm}|>{\arraybackslash}m{4.6cm}|@{}}
    \textbf{阶段} & \makecell[c]{\textbf{起止日期}} & \makecell[c]{\textbf{任务}} & \makecell[c]{\textbf{提交的阶段成果}} \\ \hline
    #2
\end{tabular} \\
\endfirsthead
\hline
 &
\endhead
\hline
\endfoot
\hline
\endlastfoot
\end{longtable}
}

% ==================== 图片命令 ====================
\RequirePackage{graphicx}

\newcommand{\tu}[2]{%
\vspace{0.25em}
\begin{minipage}{13.825cm}
\centering
\includegraphics[width=#1]{#2}
\end{minipage}
\vspace{0.25em}
}

% ==================== 表格命令 ====================
\RequirePackage{booktabs}
\RequirePackage{tabularx}

\newcommand{\biao}[2]{%
  \begin{minipage}{\linewidth}
    \vspace{0.25em}
    \centering
    \renewcommand{\arraystretch}{1}
    \begin{tabularx}{\linewidth}{*{#1}{>{\centering\arraybackslash}X}}
      \toprule
      #2
      \bottomrule
    \end{tabularx}
  \end{minipage}%
  \vspace{0.05em}
}

% ==================== 题注命令 ====================
\RequirePackage{xstring}

% 定义两个计数器
\newcounter{tizhutu}
\newcounter{tizhubiao}

% 定义题注命令
\newcommand{\tizhu}[3][5]{%
  \IfStrEq{#2}{tu}{%
    \refstepcounter{tizhutu}%
    {\centering\zihao{#1}图\thetizhutu\hspace{1em}#3\par}%
  }{%
    \IfStrEq{#2}{biao}{%
      \refstepcounter{tizhubiao}%
      {\centering\zihao{#1}表\thetizhubiao\hspace{1em}#3\par}%
    }{%
      \PackageError{tizhu}{Unknown type: #2}{Use 'tu' or 'biao'}%
    }%
  }%
}

% ==================== 评审表格 ====================
\RequirePackage{pdfpages}

\newcommand{\huiyijiyao}{%
    \includepdf[
      pages=1,
      width=\paperwidth,
      height=\paperheight,
      pagecommand={\thispagestyle{fancy}}% 显示页码
    ]{huiyijiyao.pdf}
}

% ==================== 参考文献 ====================
\RequirePackage[
    backend = biber,
    % 应遵循 GB7714-2015 标准
    % 为了使中西文文献使用不同标点，采用最新的 2025 版宏包
    % 注：模板附带的 2025 宏包非官方版本，作者对其有修改
    style = gb7714-2025,
    % 按出现顺序编号
    sorting = none,
    % uppercase则人名全大写；lowercase则仅首字母大写
    gbnamefmt = lowercase,
    % 当true时，会使用国标的要求，添加“佚名”“Anon”“出版地不详”等补充信息
    % 学校要求不添加这些信息
    gbnoauthor = false,
    % 使用连续出版物析出文献起止范围的卷期
    gbpub = true,
    % 中文文献用全角，英文文献用半角，是 2025 版本的新功能，目前存在 bug（模板作者已自行修复）
    gbpunctwidth = bylan,
    % url 和 DOI 号建议保留，因为网络文献需要列出，建议在bib文件中手动删去 url 和 DOI 号
    % 显示链接
    url = true,
    % 显示 DOI 号
    doi = true
]{biblatex}%
\addbibresource{references.bib}

% 按范围打印文献
\newcounter{bibrangecount}
\newcommand{\printbibrange}[3][heading=none]{%
  \setcounter{bibrangecount}{0}%
  \defbibcheck{bibrange}{%
    \stepcounter{bibrangecount}%
    \ifnumgreater{\value{bibrangecount}}{#3}%
      {\skipentry}%
      {\ifnumless{\value{bibrangecount}}{#2}%
        {\skipentry}%
        {}%
      }%
  }%
  \printbibliography[check=bibrange, #1]%
}

% 设置间距
\setlength{\bibitemsep}{0pt}% 条目额外间距
\setlength{\biblabelsep}{7.4mm}% 与数字标签的间距

\setcounter{gbrefcompress}{3}% 连续 3 篇文献才开始压缩

\def\gbpunctcommacite{\addcomma}% 修改宏包，使引用时用半角逗号

% 修改全角括号为半角括号
\def\gbpunctprl{(}%
\def\gbpunctprr{)}%
\def\CharParenLeft{\iffieldequalstr{userd}{chinese}{(}{(}}
\def\CharParenRight{\iffieldequalstr{userd}{chinese}{)}{)}}%

% 下面这行代码解决了连续出版物标识符 [J] 后多一个空格的 bug
\def\gbpunctdot{\unskip\mbox{．}\allowbreak}

% ==================== 其他设置 ====================
\newcommand{\suojin}{\hspace*{2em}} % 缩进命令
\newcommand{\tips}[1]{{\zihao{-5}\textcolor{red}{#1}}} % 提示命令

% 最后导入 hyperref 宏包
\RequirePackage[%
draft=false,
colorlinks=true,
CJKbookmarks=true,
linkcolor=black,
citecolor=black,
urlcolor=black,
hyperindex,
linktoc=all]{hyperref}

\endinput
