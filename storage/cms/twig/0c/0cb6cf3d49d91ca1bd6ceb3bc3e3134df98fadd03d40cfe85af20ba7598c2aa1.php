<?php

/* /opt/lampp/htdocs/2015/righi2/themes/righi/pages/gallery.htm */
class __TwigTemplate_4d198ec079b73bfc950ca788b2d3634878aee8fab271f9c6b183a3fd4c703714 extends Twig_Template
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
        echo "<div style=\"background:#1A1414;color:white;padding:10px;\">
\t<div class=\"container\">
\t\t<h2>Gallery Photo</h2>
\t</div>
</div>



<div id=\"content\">
\t<div class=\"container\">
\t\t<div class=\"row\">
\t\t\t";
        // line 12
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["galery"]) ? $context["galery"] : null));
        foreach ($context['_seq'] as $context["_key"] => $context["a"]) {
            // line 13
            echo "\t\t\t\t<div class=\"col-lg-4\">
\t\t\t\t\t<div class=\"thumbnail\">
\t\t\t\t\t\t";
            // line 15
            if ($this->getAttribute($this->getAttribute($context["a"], "images", array()), "count", array())) {
                // line 16
                echo "\t\t\t\t\t\t    <div class=\"featured-images text-center\">
\t\t\t\t\t\t\t    <div class=\"slideshow\">
\t\t\t\t\t\t\t        ";
                // line 18
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["a"], "images", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                    // line 19
                    echo "\t\t\t\t\t\t\t        \t<a  class=\"single_image\" href=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute($context["image"], "path", array()), "html", null, true);
                    echo "\">
\t\t\t\t\t\t\t            <img
\t\t\t\t\t\t\t                data-src=\"";
                    // line 21
                    echo twig_escape_filter($this->env, $this->getAttribute($context["image"], "filename", array()), "html", null, true);
                    echo "\"
\t\t\t\t\t\t\t                src=\"";
                    // line 22
                    echo twig_escape_filter($this->env, $this->getAttribute($context["image"], "path", array()), "html", null, true);
                    echo "\"
\t\t\t\t\t\t\t                alt=\"";
                    // line 23
                    echo twig_escape_filter($this->env, $this->getAttribute($context["image"], "description", array()), "html", null, true);
                    echo "\"
\t\t\t\t\t\t\t                style=\"width:100%; height:200px;\"
\t\t\t\t\t\t\t                class=\"img-responsive feature\" />
\t\t\t\t\t\t\t            </a>
\t\t\t\t\t\t\t        ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 28
                echo "\t\t\t\t\t\t\t    </div>
\t\t\t\t\t\t    </div>
\t\t\t\t\t\t";
            }
            // line 31
            echo "\t\t\t\t\t\t<div class=\"caption\">
\t\t\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t\t\t<div class=\"col-lg-3\">
\t\t\t\t\t\t\t\t\t<p style=\"text-align:center;padding:10px;\">
\t\t\t\t\t\t\t\t\t\t<i class=\"fa fa-image\"></i>\t
\t\t\t\t\t\t\t\t\t</p>
\t\t\t\t\t\t\t\t</div>

\t\t\t\t\t\t\t\t<div class=\"col-lg-8\">
\t\t\t\t\t\t\t\t\t<h3>";
            // line 40
            echo twig_escape_filter($this->env, $this->getAttribute($context["a"], "name", array()), "html", null, true);
            echo "</h3>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['a'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 47
        echo "\t\t</div>
\t</div>
</div>";
    }

    public function getTemplateName()
    {
        return "/opt/lampp/htdocs/2015/righi2/themes/righi/pages/gallery.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  104 => 47,  91 => 40,  80 => 31,  75 => 28,  64 => 23,  60 => 22,  56 => 21,  50 => 19,  46 => 18,  42 => 16,  40 => 15,  36 => 13,  32 => 12,  19 => 1,);
    }
}
/* <div style="background:#1A1414;color:white;padding:10px;">*/
/* 	<div class="container">*/
/* 		<h2>Gallery Photo</h2>*/
/* 	</div>*/
/* </div>*/
/* */
/* */
/* */
/* <div id="content">*/
/* 	<div class="container">*/
/* 		<div class="row">*/
/* 			{% for a in galery %}*/
/* 				<div class="col-lg-4">*/
/* 					<div class="thumbnail">*/
/* 						{% if a.images.count %}*/
/* 						    <div class="featured-images text-center">*/
/* 							    <div class="slideshow">*/
/* 							        {% for image in a.images %}*/
/* 							        	<a  class="single_image" href="{{ image.path }}">*/
/* 							            <img*/
/* 							                data-src="{{ image.filename }}"*/
/* 							                src="{{ image.path }}"*/
/* 							                alt="{{ image.description }}"*/
/* 							                style="width:100%; height:200px;"*/
/* 							                class="img-responsive feature" />*/
/* 							            </a>*/
/* 							        {% endfor %}*/
/* 							    </div>*/
/* 						    </div>*/
/* 						{% endif %}*/
/* 						<div class="caption">*/
/* 							<div class="row">*/
/* 								<div class="col-lg-3">*/
/* 									<p style="text-align:center;padding:10px;">*/
/* 										<i class="fa fa-image"></i>	*/
/* 									</p>*/
/* 								</div>*/
/* */
/* 								<div class="col-lg-8">*/
/* 									<h3>{{a.name}}</h3>*/
/* 								</div>*/
/* 							</div>*/
/* 						</div>*/
/* 					</div>*/
/* 				</div>*/
/* 			{% endfor %}*/
/* 		</div>*/
/* 	</div>*/
/* </div>*/
