<?php

/* /opt/lampp/htdocs/2015/righi2/themes/righi/layouts/default.htm */
class __TwigTemplate_9febeb68aa7226c88460b0ba4bde6402214b8e11809418ffd241650b2f0d91de extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!DOCTYPE html>
<html lang=\"en\">
<head>
\t<meta charset=\"utf-8\">
    <title>PT. Righi Marine Internasional - ";
        // line 5
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["this"]) ? $context["this"] : null), "page", array()), "title", array()), "html", null, true);
        echo "</title>
    <LINK REL=”SHORTCUT ICON” href=”http://www.yourwebsite.com/favicon.ico” />
    <link rel=\"shortcut icon\" href=\"";
        // line 7
        echo $this->env->getExtension('CMS')->themeFilter("assets/img/logo.png");
        echo "\">
    <meta name=\"description\" content=\"PT. Righi Marine Internasional\">
    <meta name=\"title\" content=\"PT. Righi Marine Internasional\">
    <meta name=\"author\" content=\"panturaweb.com\">

    <!-- for Facebook -->          
    <meta property=\"og:title\" content=\"PT. Righi Marine Internasional\" />
    <meta property=\"og:type\" content=\"pelaut\" />
    <meta property=\"og:image\" content=\"";
        // line 15
        echo $this->env->getExtension('CMS')->themeFilter("assets/img/logo.png");
        echo "\" />
    <meta property=\"og:url\" content=\"http://righimarine.com\" />
    <meta property=\"og:description\" content=\"PT Righi Marine Internasional yang selama ini dikenal adalah 
        sebuah Perusahaan Pelaksana Penempatan Tenaga Kerja Indonesia Swasta 
        yang menempatkan Tenaga Kerja Indonesia ke Luar Negeri baik di sektor Formal maupun Informal dengan Negara Tujuan Penempatan yaitu Taiwan,Fiji, Thailand,Samoa, Palau, dan Mauritius\" />

    <!-- for Twitter -->          
    <meta name=\"twitter:card\" content=\"summary\" />
    <meta name=\"twitter:title\" content=\"PT. Righi Marine Internasional\" />
    <meta name=\"twitter:description\" content=\"PT Righi Marine Internasional yang selama ini dikenal adalah 
        sebuah Perusahaan Pelaksana Penempatan Tenaga Kerja Indonesia Swasta 
        yang menempatkan Tenaga Kerja Indonesia ke Luar Negeri baik di sektor Formal maupun Informal dengan Negara Tujuan Penempatan yaitu Taiwan,Fiji, Thailand,Samoa, Palau, dan Mauritius\" />
    <meta name=\"twitter:image\" content=\"";
        // line 27
        echo $this->env->getExtension('CMS')->themeFilter("assets/img/logo.png");
        echo "\" />

    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
\t<link rel=\"stylesheet\" href=\"";
        // line 30
        echo $this->env->getExtension('CMS')->themeFilter("assets/css/bootstrap.min.css");
        echo "\">
    <link rel=\"stylesheet\" href=\"";
        // line 31
        echo $this->env->getExtension('CMS')->themeFilter("assets/css/animate.css");
        echo "\">
    <link rel=\"stylesheet\" href=\"";
        // line 32
        echo $this->env->getExtension('CMS')->themeFilter("assets/css/font-awesome.min.css");
        echo "\">
    <link rel=\"stylesheet\" href=\"";
        // line 33
        echo $this->env->getExtension('CMS')->themeFilter("assets/css/jquery.bxslider.css");
        echo "\">
\t<link rel=\"stylesheet\" href=\"";
        // line 34
        echo $this->env->getExtension('CMS')->themeFilter("assets/css/abk.css");
        echo "\">
</head>
<body>
    ";
        // line 37
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("header"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 38
        echo "    
    ";
        // line 39
        echo $this->env->getExtension('CMS')->pageFunction();
        // line 40
        echo "
    ";
        // line 41
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("footer"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 42
        echo "
    <script src=\"";
        // line 43
        echo $this->env->getExtension('CMS')->themeFilter("assets/js/jquery-1.11.3.min.js");
        echo "\"></script>
    <script src=\"";
        // line 44
        echo $this->env->getExtension('CMS')->themeFilter("assets/js/bootstrap.min.js");
        echo "\"></script>
    <script src=\"";
        // line 45
        echo $this->env->getExtension('CMS')->themeFilter("assets/js/wow.min.js");
        echo "\"></script>
    <script src=\"";
        // line 46
        echo $this->env->getExtension('CMS')->themeFilter("assets/js/jquery.paginate.min.js");
        echo "\"></script>
    <script src=\"";
        // line 47
        echo $this->env->getExtension('CMS')->themeFilter("assets/js/jquery.bxslider.min.js");
        echo "\"></script>
    <script src=\"";
        // line 48
        echo $this->env->getExtension('CMS')->themeFilter("assets/js/app.js");
        echo "\"></script>
    <script src=\"http://malsup.github.io/jquery.cycle.all.js\"></script>

    <script type=\"text/javascript\">
        \$(document).ready(function() {
            \$('.slideshow').cycle({
                fx: 'fade' // choose your transition type, ex: fade, scrollUp, shuffle, etc...
            });
        });
    </script>
</body>
</html>";
    }

    public function getTemplateName()
    {
        return "/opt/lampp/htdocs/2015/righi2/themes/righi/layouts/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  123 => 48,  119 => 47,  115 => 46,  111 => 45,  107 => 44,  103 => 43,  100 => 42,  96 => 41,  93 => 40,  91 => 39,  88 => 38,  84 => 37,  78 => 34,  74 => 33,  70 => 32,  66 => 31,  62 => 30,  56 => 27,  41 => 15,  30 => 7,  25 => 5,  19 => 1,);
    }
}
/* <!DOCTYPE html>*/
/* <html lang="en">*/
/* <head>*/
/* 	<meta charset="utf-8">*/
/*     <title>PT. Righi Marine Internasional - {{ this.page.title }}</title>*/
/*     <LINK REL=”SHORTCUT ICON” href=”http://www.yourwebsite.com/favicon.ico” />*/
/*     <link rel="shortcut icon" href="{{'assets/img/logo.png'|theme}}">*/
/*     <meta name="description" content="PT. Righi Marine Internasional">*/
/*     <meta name="title" content="PT. Righi Marine Internasional">*/
/*     <meta name="author" content="panturaweb.com">*/
/* */
/*     <!-- for Facebook -->          */
/*     <meta property="og:title" content="PT. Righi Marine Internasional" />*/
/*     <meta property="og:type" content="pelaut" />*/
/*     <meta property="og:image" content="{{'assets/img/logo.png'|theme}}" />*/
/*     <meta property="og:url" content="http://righimarine.com" />*/
/*     <meta property="og:description" content="PT Righi Marine Internasional yang selama ini dikenal adalah */
/*         sebuah Perusahaan Pelaksana Penempatan Tenaga Kerja Indonesia Swasta */
/*         yang menempatkan Tenaga Kerja Indonesia ke Luar Negeri baik di sektor Formal maupun Informal dengan Negara Tujuan Penempatan yaitu Taiwan,Fiji, Thailand,Samoa, Palau, dan Mauritius" />*/
/* */
/*     <!-- for Twitter -->          */
/*     <meta name="twitter:card" content="summary" />*/
/*     <meta name="twitter:title" content="PT. Righi Marine Internasional" />*/
/*     <meta name="twitter:description" content="PT Righi Marine Internasional yang selama ini dikenal adalah */
/*         sebuah Perusahaan Pelaksana Penempatan Tenaga Kerja Indonesia Swasta */
/*         yang menempatkan Tenaga Kerja Indonesia ke Luar Negeri baik di sektor Formal maupun Informal dengan Negara Tujuan Penempatan yaitu Taiwan,Fiji, Thailand,Samoa, Palau, dan Mauritius" />*/
/*     <meta name="twitter:image" content="{{'assets/img/logo.png'|theme}}" />*/
/* */
/*     <meta name="viewport" content="width=device-width, initial-scale=1.0">*/
/* 	<link rel="stylesheet" href="{{ 'assets/css/bootstrap.min.css' |theme}}">*/
/*     <link rel="stylesheet" href="{{ 'assets/css/animate.css'|theme}}">*/
/*     <link rel="stylesheet" href="{{'assets/css/font-awesome.min.css'|theme}}">*/
/*     <link rel="stylesheet" href="{{'assets/css/jquery.bxslider.css'|theme}}">*/
/* 	<link rel="stylesheet" href="{{'assets/css/abk.css'|theme}}">*/
/* </head>*/
/* <body>*/
/*     {% partial 'header' %}*/
/*     */
/*     {% page %}*/
/* */
/*     {% partial 'footer' %}*/
/* */
/*     <script src="{{'assets/js/jquery-1.11.3.min.js'|theme}}"></script>*/
/*     <script src="{{'assets/js/bootstrap.min.js'|theme}}"></script>*/
/*     <script src="{{'assets/js/wow.min.js'|theme}}"></script>*/
/*     <script src="{{'assets/js/jquery.paginate.min.js'|theme}}"></script>*/
/*     <script src="{{'assets/js/jquery.bxslider.min.js'|theme}}"></script>*/
/*     <script src="{{'assets/js/app.js'|theme}}"></script>*/
/*     <script src="http://malsup.github.io/jquery.cycle.all.js"></script>*/
/* */
/*     <script type="text/javascript">*/
/*         $(document).ready(function() {*/
/*             $('.slideshow').cycle({*/
/*                 fx: 'fade' // choose your transition type, ex: fade, scrollUp, shuffle, etc...*/
/*             });*/
/*         });*/
/*     </script>*/
/* </body>*/
/* </html>*/
