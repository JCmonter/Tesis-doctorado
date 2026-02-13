\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{protocol_template}[2026/01/22 Clase para Protocolos de Tesis DOCM]

% 1. Cargar la clase base (article) con opciones por defecto
\LoadClass{article}
\RequirePackage[utf8]{inputenc}
\RequirePackage[spanish]{babel}
\RequirePackage{xstring}

\RequirePackage[a4paper,top=2.54cm,bottom=2.54cm,left=2.54cm,right=2.54cm,marginparwidth=1.75cm]{geometry}
\setlength{\parindent}{.5 cm}   %Activar sangrias
\RequirePackage{url,colortbl,amsmath,amssymb,amsfonts,amsthm}
\RequirePackage{graphicx} % Required for inserting images
\RequirePackage{booktabs}
\RequirePackage[numbers]{natbib}

\makeatletter
\newcommand{\advisor}[1]{\gdef\@advisor{#1}}
\newcommand{\coadvisor}[1]{\gdef\@coadvisor{#1}}
\let\@coadvisor\@empty

\newcommand{\makefrontpage}{
    \begin{titlepage}
        \begin{center}   
        \vspace{.4 cm}
        \Huge{ \textbf{Universidad de Guadalajara}\\}
        \vspace{.7 cm}
        \Large {\textbf{Centro Universitario de Ciencias Exactas
        e Ingenierías} \\}
        \vspace{.4 cm}
        \Large {\textbf{Doctorado en Ciencias en Matemáticas}\\}
        \vspace{3 cm}
        \includegraphics[scale = .075]{escudo.png}\\
        \vspace{1.5 cm}
         \LARGE{\textit{\@title}}\\
        \vspace{.8 cm}
        {\LARGE \textbf{Protocolo de Tesis}\\}
        \vspace{.4 cm}
        {\large que presenta\\} 
        \vspace{.8 cm}
        \Large{\@author\\}
        \vspace{1.6 cm} 
        {\large Director(a): \normalsize{\@advisor}\\}
        \ifx\@coadvisor\@empty
            
        \else
            %{\large Codirector(a): \normalsize{\@coadvisor} }
            \IfSubStr{\@coadvisor}{,}{
            {\large Codirectores: \normalsize{\@coadvisor} } % Plural
            }{
            {\large Codirector(a): \normalsize{\@coadvisor} }  % Singular
            }
            
        \fi
        \end{center}
        \vfill
        
	    \hfill{Guadalajara, Jal., \@date}
    \end{titlepage}
    \newpage
}
\makeatother
