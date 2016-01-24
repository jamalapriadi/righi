<?php

/* /opt/lampp/htdocs/2015/righi2/themes/righi/partials/header.htm */
class __TwigTemplate_6b0735344a0182c532f01af5a6f93a055183a60f68eb59b5aaa950aa2e9394d0 extends Twig_Template
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
        echo "<div class=\"top-menu\">
        <div class=\"container\">
            <div class=\"pull-left\">
                <i class=\"glyphicon glyphicon-home\"></i> &nbsp;
                Righi Marine Internasional

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <i class=\"fa fa-envelope\"></i> &nbsp;
                Info@Righimarine.com
            </div>

            <div class=\"pull-right\">
                Social Media &nbsp;
                <i class=\"fa fa-facebook\"></i> &nbsp;
                <i class=\"fa fa-twitter\"></i> &nbsp;
                <i class=\"fa fa-youtube\"></i> &nbsp;
            </div>
        </div>
    </div>
\t<header id=\"mainnav\">
    \t<div class=\"container\">
            <div class=\"logo\">
                <img src=\"";
        // line 23
        echo $this->env->getExtension('CMS')->themeFilter("assets/img/logo.png");
        echo "\" class=\"img-responsive logo\">
            </div>
            <h3 class=\"header-title\">PT. Righi Marine Internasional</h3>
            <div class=\"menu\">
                <div class=\"navbar-header\">
                    <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\" aria-expanded=\"false\" aria-controls=\"navbar\" style=\"background:white\">
                      <span class=\"sr-only\">Toggle navigation</span>
                      <span class=\"icon-bar\" style=\"background:black;\"></span>
                      <span class=\"icon-bar\" style=\"background:black;\"></span>
                      <span class=\"icon-bar\" style=\"background:black;\"></span>
                    </button>
                  </div>

                <div id=\"navbar\" class=\"collapse navbar-collapse pull-right\">
                \t<ul class=\"nav navbar-nav\">
                \t\t<li class=\"#\"><a title=\"Home\" href=\"";
        // line 38
        echo $this->env->getExtension('CMS')->pageFilter("home");
        echo "\">Beranda</a></li>
\t\t\t\t\t\t<li class=\"#\"><a title=\"Sample Page\" href=\"";
        // line 39
        echo $this->env->getExtension('CMS')->pageFilter("tentang-kami");
        echo "\">Tentang Kami</a></li>
                        <li class=\"#\"><a title=\"Sample Page\" href=\"";
        // line 40
        echo $this->env->getExtension('CMS')->pageFilter("artikel");
        echo "\">Berita</a></li>
                        <li class=\"#\"><a title=\"Gallery\" href=\"";
        // line 41
        echo $this->env->getExtension('CMS')->pageFilter("gallery");
        echo "\">Galeri</a></li>
                        <li class=\"#\"><a title=\"Gallery\" href=\"";
        // line 42
        echo $this->env->getExtension('CMS')->pageFilter("kontak-kami");
        echo "\">Kontak Kami</a></li>
\t\t\t\t\t</ul>
\t\t\t\t</div>            
\t\t\t</div>
        </div>
    </header>";
    }

    public function getTemplateName()
    {
        return "/opt/lampp/htdocs/2015/righi2/themes/righi/partials/header.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  77 => 42,  73 => 41,  69 => 40,  65 => 39,  61 => 38,  43 => 23,  19 => 1,);
    }
}
/* <div class="top-menu">*/
/*         <div class="container">*/
/*             <div class="pull-left">*/
/*                 <i class="glyphicon glyphicon-home"></i> &nbsp;*/
/*                 Righi Marine Internasional*/
/* */
/*                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
/*                 <i class="fa fa-envelope"></i> &nbsp;*/
/*                 Info@Righimarine.com*/
/*             </div>*/
/* */
/*             <div class="pull-right">*/
/*                 Social Media &nbsp;*/
/*                 <i class="fa fa-facebook"></i> &nbsp;*/
/*                 <i class="fa fa-twitter"></i> &nbsp;*/
/*                 <i class="fa fa-youtube"></i> &nbsp;*/
/*             </div>*/
/*         </div>*/
/*     </div>*/
/* 	<header id="mainnav">*/
/*     	<div class="container">*/
/*             <div class="logo">*/
/*                 <img src="{{'assets/img/logo.png'|theme}}" class="img-responsive logo">*/
/*             </div>*/
/*             <h3 class="header-title">PT. Righi Marine Internasional</h3>*/
/*             <div class="menu">*/
/*                 <div class="navbar-header">*/
/*                     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar" style="background:white">*/
/*                       <span class="sr-only">Toggle navigation</span>*/
/*                       <span class="icon-bar" style="background:black;"></span>*/
/*                       <span class="icon-bar" style="background:black;"></span>*/
/*                       <span class="icon-bar" style="background:black;"></span>*/
/*                     </button>*/
/*                   </div>*/
/* */
/*                 <div id="navbar" class="collapse navbar-collapse pull-right">*/
/*                 	<ul class="nav navbar-nav">*/
/*                 		<li class="#"><a title="Home" href="{{ 'home'|page }}">Beranda</a></li>*/
/* 						<li class="#"><a title="Sample Page" href="{{'tentang-kami'|page}}">Tentang Kami</a></li>*/
/*                         <li class="#"><a title="Sample Page" href="{{'artikel'|page}}">Berita</a></li>*/
/*                         <li class="#"><a title="Gallery" href="{{'gallery'|page}}">Galeri</a></li>*/
/*                         <li class="#"><a title="Gallery" href="{{'kontak-kami'|page}}">Kontak Kami</a></li>*/
/* 					</ul>*/
/* 				</div>            */
/* 			</div>*/
/*         </div>*/
/*     </header>*/
