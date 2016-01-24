<?php

/* /opt/lampp/htdocs/2015/righi2/themes/righi/pages/blog.htm */
class __TwigTemplate_e115e0fe4ffe648606451929de690f7cd806afbd4f0aff9758fe687fe4462e4f extends Twig_Template
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
        echo "<style>
\tp{
\t\ttext-align: justify;
\t\tline-height: 25px;
\t}

\timg.feature{
\t\tmargin:0 auto;
\t}

\t.artikel img{
\t\theight: 100%;
\t\twidth: 100%;
\t}

</style>

<div style=\"background:#1A1414;color:white;padding:10px;\">
\t<div class=\"container\">
\t\t<h2>";
        // line 20
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["blog"]) ? $context["blog"] : null), "title", array()), "html", null, true);
        echo "</h2>
\t</div>
</div>

<div id=\"content\">
\t<div class=\"container\">
\t\t<div class=\"row\">
\t\t\t<div class=\"col-lg-8 artikel\">
\t\t\t\t<p class=\"well well-sm\">
\t\t\t\t\t<i class=\"fa fa-calendar\"></i> &nbsp;
\t\t\t\t    Posted
\t\t\t\t    ";
        // line 31
        if ($this->getAttribute($this->getAttribute((isset($context["post"]) ? $context["post"] : null), "categories", array()), "count", array())) {
            echo " in
\t\t\t\t        ";
            // line 32
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["post"]) ? $context["post"] : null), "categories", array()));
            $context['loop'] = array(
              'parent' => $context['_parent'],
              'index0' => 0,
              'index'  => 1,
              'first'  => true,
            );
            if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
                $length = count($context['_seq']);
                $context['loop']['revindex0'] = $length - 1;
                $context['loop']['revindex'] = $length;
                $context['loop']['length'] = $length;
                $context['loop']['last'] = 1 === $length;
            }
            foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                // line 33
                echo "\t\t\t\t            <a href=\"";
                echo twig_escape_filter($this->env, $this->getAttribute($context["category"], "url", array()), "html", null, true);
                echo "\">";
                echo twig_escape_filter($this->env, $this->getAttribute($context["category"], "name", array()), "html", null, true);
                echo "</a>";
                if ( !$this->getAttribute($context["loop"], "last", array())) {
                    echo ", ";
                }
                // line 34
                echo "\t\t\t\t        ";
                ++$context['loop']['index0'];
                ++$context['loop']['index'];
                $context['loop']['first'] = false;
                if (isset($context['loop']['length'])) {
                    --$context['loop']['revindex0'];
                    --$context['loop']['revindex'];
                    $context['loop']['last'] = 0 === $context['loop']['revindex0'];
                }
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 35
            echo "\t\t\t\t    ";
        }
        // line 36
        echo "\t\t\t\t    on ";
        echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute((isset($context["post"]) ? $context["post"] : null), "published_at", array()), "M d, Y"), "html", null, true);
        echo "
\t\t\t\t</p>

\t\t\t\t";
        // line 39
        if ($this->getAttribute($this->getAttribute((isset($context["post"]) ? $context["post"] : null), "featured_images", array()), "count", array())) {
            // line 40
            echo "\t\t\t\t    <div class=\"featured-images text-center\">
\t\t\t\t        ";
            // line 41
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["post"]) ? $context["post"] : null), "featured_images", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                // line 42
                echo "\t\t\t\t            <p>
\t\t\t\t                <img
\t\t\t\t                    data-src=\"";
                // line 44
                echo twig_escape_filter($this->env, $this->getAttribute($context["image"], "filename", array()), "html", null, true);
                echo "\"
\t\t\t\t                    src=\"";
                // line 45
                echo twig_escape_filter($this->env, $this->getAttribute($context["image"], "path", array()), "html", null, true);
                echo "\"
\t\t\t\t                    alt=\"";
                // line 46
                echo twig_escape_filter($this->env, $this->getAttribute($context["image"], "description", array()), "html", null, true);
                echo "\"
\t\t\t\t                    style=\"max-width: 100%\"
\t\t\t\t                    class=\"img-responsive feature\" />
\t\t\t\t            </p>
\t\t\t\t        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 51
            echo "\t\t\t\t    </div>
\t\t\t\t";
        }
        // line 53
        echo "
\t\t\t\t<!--blog.content_html|raw -->
\t\t\t\t";
        // line 55
        echo $this->getAttribute((isset($context["blog"]) ? $context["blog"] : null), "content_html", array());
        echo "
\t\t\t\t
\t\t\t\t<!--
\t\t\t\t";
        // line 58
        if ($this->getAttribute($this->getAttribute((isset($context["post"]) ? $context["post"] : null), "content_images", array()), "count", array())) {
            // line 59
            echo "\t\t\t\t    <div class=\"featured-images text-center\">
\t\t\t\t        ";
            // line 60
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["post"]) ? $context["post"] : null), "content_images", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                // line 61
                echo "\t\t\t\t            <p>
\t\t\t\t                <img
\t\t\t\t                    data-src=\"";
                // line 63
                echo twig_escape_filter($this->env, $this->getAttribute($context["image"], "filename", array()), "html", null, true);
                echo "\"
\t\t\t\t                    src=\"";
                // line 64
                echo twig_escape_filter($this->env, $this->getAttribute($context["image"], "path", array()), "html", null, true);
                echo "\"
\t\t\t\t                    alt=\"";
                // line 65
                echo twig_escape_filter($this->env, $this->getAttribute($context["image"], "description", array()), "html", null, true);
                echo "\"
\t\t\t\t                    style=\"max-width: 100%\"
\t\t\t\t                    class=\"img-responsive feature\" />
\t\t\t\t            </p>
\t\t\t\t        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 70
            echo "\t\t\t\t    </div>
\t\t\t\t";
        }
        // line 72
        echo "\t\t\t\t-->

\t\t\t</div>

\t\t\t<div class=\"col-lg-4\">
\t\t\t\t<div class=\"panel panel-primary\">
\t\t\t\t\t<div class=\"panel-heading\">
\t\t\t\t\t\t<h4>Artikel Lainnya</h4>
\t\t\t\t\t</div>

\t\t\t\t\t<div class=\"panel-body\">
\t\t\t\t\t\t\t";
        // line 83
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["artikel"]) ? $context["artikel"] : null));
        foreach ($context['_seq'] as $context["_key"] => $context["ar"]) {
            // line 84
            echo "\t\t\t\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t\t\t\t<div class=\"col-lg-4\">
\t\t\t\t\t\t\t\t\t\t";
            // line 86
            if ($this->getAttribute($this->getAttribute($context["ar"], "featured_images", array()), "count", array())) {
                // line 87
                echo "\t\t\t\t\t\t\t\t\t\t    <div class=\"featured-images text-center\">
\t\t\t\t\t\t\t\t\t\t        ";
                // line 88
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["ar"], "featured_images", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                    // line 89
                    echo "\t\t\t\t\t\t\t\t\t\t            <p>
\t\t\t\t\t\t\t\t\t\t                <img
\t\t\t\t\t\t\t\t\t\t                    data-src=\"";
                    // line 91
                    echo twig_escape_filter($this->env, $this->getAttribute($context["image"], "filename", array()), "html", null, true);
                    echo "\"
\t\t\t\t\t\t\t\t\t\t                    src=\"";
                    // line 92
                    echo twig_escape_filter($this->env, $this->getAttribute($context["image"], "path", array()), "html", null, true);
                    echo "\"
\t\t\t\t\t\t\t\t\t\t                    alt=\"";
                    // line 93
                    echo twig_escape_filter($this->env, $this->getAttribute($context["image"], "description", array()), "html", null, true);
                    echo "\"
\t\t\t\t\t\t\t\t\t\t                    style=\"max-width: 100%\"
\t\t\t\t\t\t\t\t\t\t                    class=\"img-responsive feature\" />
\t\t\t\t\t\t\t\t\t\t            </p>
\t\t\t\t\t\t\t\t\t\t        ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 98
                echo "\t\t\t\t\t\t\t\t\t\t    </div>
\t\t\t\t\t\t\t\t\t\t";
            }
            // line 99
            echo "\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t\t</div>

\t\t\t\t\t\t\t\t\t<div class=\"col-lg-8\">
\t\t\t\t\t\t\t\t\t\t<a href=\"";
            // line 103
            echo $this->env->getExtension('CMS')->pageFilter("blog", array("slug" => $this->getAttribute($context["ar"], "slug", array())));
            echo "\">
\t\t\t\t\t\t\t\t\t\t\t<strong>";
            // line 104
            echo twig_escape_filter($this->env, $this->getAttribute($context["ar"], "title", array()), "html", null, true);
            echo "</strong>
\t\t\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<p class=\"well well-sm\">
\t\t\t\t\t\t\t\t\t<i class=\"fa fa-calendar\"></i> &nbsp;
\t\t\t\t\t\t\t\t    Posted
\t\t\t\t\t\t\t\t    ";
            // line 111
            if ($this->getAttribute($this->getAttribute($context["ar"], "categories", array()), "count", array())) {
                echo " in
\t\t\t\t\t\t\t\t        ";
                // line 112
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["ar"], "categories", array()));
                $context['loop'] = array(
                  'parent' => $context['_parent'],
                  'index0' => 0,
                  'index'  => 1,
                  'first'  => true,
                );
                if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
                    $length = count($context['_seq']);
                    $context['loop']['revindex0'] = $length - 1;
                    $context['loop']['revindex'] = $length;
                    $context['loop']['length'] = $length;
                    $context['loop']['last'] = 1 === $length;
                }
                foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                    // line 113
                    echo "\t\t\t\t\t\t\t\t            <a href=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute($context["category"], "url", array()), "html", null, true);
                    echo "\">";
                    echo twig_escape_filter($this->env, $this->getAttribute($context["category"], "name", array()), "html", null, true);
                    echo "</a>";
                    if ( !$this->getAttribute($context["loop"], "last", array())) {
                        echo ", ";
                    }
                    // line 114
                    echo "\t\t\t\t\t\t\t\t        ";
                    ++$context['loop']['index0'];
                    ++$context['loop']['index'];
                    $context['loop']['first'] = false;
                    if (isset($context['loop']['length'])) {
                        --$context['loop']['revindex0'];
                        --$context['loop']['revindex'];
                        $context['loop']['last'] = 0 === $context['loop']['revindex0'];
                    }
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 115
                echo "\t\t\t\t\t\t\t\t    ";
            }
            // line 116
            echo "\t\t\t\t\t\t\t\t    on ";
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute($context["ar"], "published_at", array()), "M d, Y"), "html", null, true);
            echo "
\t\t\t\t\t\t\t\t</p>
\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['ar'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 119
        echo "\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t</div>
\t\t</div>
\t</div>
</div>";
    }

    public function getTemplateName()
    {
        return "/opt/lampp/htdocs/2015/righi2/themes/righi/pages/blog.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  324 => 119,  314 => 116,  311 => 115,  297 => 114,  288 => 113,  271 => 112,  267 => 111,  257 => 104,  253 => 103,  247 => 99,  243 => 98,  232 => 93,  228 => 92,  224 => 91,  220 => 89,  216 => 88,  213 => 87,  211 => 86,  207 => 84,  203 => 83,  190 => 72,  186 => 70,  175 => 65,  171 => 64,  167 => 63,  163 => 61,  159 => 60,  156 => 59,  154 => 58,  148 => 55,  144 => 53,  140 => 51,  129 => 46,  125 => 45,  121 => 44,  117 => 42,  113 => 41,  110 => 40,  108 => 39,  101 => 36,  98 => 35,  84 => 34,  75 => 33,  58 => 32,  54 => 31,  40 => 20,  19 => 1,);
    }
}
/* <style>*/
/* 	p{*/
/* 		text-align: justify;*/
/* 		line-height: 25px;*/
/* 	}*/
/* */
/* 	img.feature{*/
/* 		margin:0 auto;*/
/* 	}*/
/* */
/* 	.artikel img{*/
/* 		height: 100%;*/
/* 		width: 100%;*/
/* 	}*/
/* */
/* </style>*/
/* */
/* <div style="background:#1A1414;color:white;padding:10px;">*/
/* 	<div class="container">*/
/* 		<h2>{{blog.title}}</h2>*/
/* 	</div>*/
/* </div>*/
/* */
/* <div id="content">*/
/* 	<div class="container">*/
/* 		<div class="row">*/
/* 			<div class="col-lg-8 artikel">*/
/* 				<p class="well well-sm">*/
/* 					<i class="fa fa-calendar"></i> &nbsp;*/
/* 				    Posted*/
/* 				    {% if post.categories.count %} in*/
/* 				        {% for category in post.categories %}*/
/* 				            <a href="{{ category.url }}">{{ category.name }}</a>{% if not loop.last %}, {% endif %}*/
/* 				        {% endfor %}*/
/* 				    {% endif %}*/
/* 				    on {{ post.published_at|date('M d, Y') }}*/
/* 				</p>*/
/* */
/* 				{% if post.featured_images.count %}*/
/* 				    <div class="featured-images text-center">*/
/* 				        {% for image in post.featured_images %}*/
/* 				            <p>*/
/* 				                <img*/
/* 				                    data-src="{{ image.filename }}"*/
/* 				                    src="{{ image.path }}"*/
/* 				                    alt="{{ image.description }}"*/
/* 				                    style="max-width: 100%"*/
/* 				                    class="img-responsive feature" />*/
/* 				            </p>*/
/* 				        {% endfor %}*/
/* 				    </div>*/
/* 				{% endif %}*/
/* */
/* 				<!--blog.content_html|raw -->*/
/* 				{{blog.content_html|raw}}*/
/* 				*/
/* 				<!--*/
/* 				{% if post.content_images.count %}*/
/* 				    <div class="featured-images text-center">*/
/* 				        {% for image in post.content_images %}*/
/* 				            <p>*/
/* 				                <img*/
/* 				                    data-src="{{ image.filename }}"*/
/* 				                    src="{{ image.path }}"*/
/* 				                    alt="{{ image.description }}"*/
/* 				                    style="max-width: 100%"*/
/* 				                    class="img-responsive feature" />*/
/* 				            </p>*/
/* 				        {% endfor %}*/
/* 				    </div>*/
/* 				{% endif %}*/
/* 				-->*/
/* */
/* 			</div>*/
/* */
/* 			<div class="col-lg-4">*/
/* 				<div class="panel panel-primary">*/
/* 					<div class="panel-heading">*/
/* 						<h4>Artikel Lainnya</h4>*/
/* 					</div>*/
/* */
/* 					<div class="panel-body">*/
/* 							{% for ar in artikel %}*/
/* 								<div class="row">*/
/* 									<div class="col-lg-4">*/
/* 										{% if ar.featured_images.count %}*/
/* 										    <div class="featured-images text-center">*/
/* 										        {% for image in ar.featured_images %}*/
/* 										            <p>*/
/* 										                <img*/
/* 										                    data-src="{{ image.filename }}"*/
/* 										                    src="{{ image.path }}"*/
/* 										                    alt="{{ image.description }}"*/
/* 										                    style="max-width: 100%"*/
/* 										                    class="img-responsive feature" />*/
/* 										            </p>*/
/* 										        {% endfor %}*/
/* 										    </div>*/
/* 										{% endif %}								*/
/* 									</div>*/
/* */
/* 									<div class="col-lg-8">*/
/* 										<a href="{{ 'blog'|page ({ 'slug':  ar.slug  }) }}">*/
/* 											<strong>{{ar.title}}</strong>*/
/* 										</a>*/
/* 									</div>*/
/* 								</div>*/
/* 								<p class="well well-sm">*/
/* 									<i class="fa fa-calendar"></i> &nbsp;*/
/* 								    Posted*/
/* 								    {% if ar.categories.count %} in*/
/* 								        {% for category in ar.categories %}*/
/* 								            <a href="{{ category.url }}">{{ category.name }}</a>{% if not loop.last %}, {% endif %}*/
/* 								        {% endfor %}*/
/* 								    {% endif %}*/
/* 								    on {{ ar.published_at|date('M d, Y') }}*/
/* 								</p>*/
/* 							{% endfor %}*/
/* 					</div>*/
/* 				</div>*/
/* 			</div>*/
/* 		</div>*/
/* 	</div>*/
/* </div>*/
