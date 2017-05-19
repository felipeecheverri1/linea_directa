<?php
/**
 * The front page template file.
 *
 * The front-page.php template file is used to render your site’s front page,
 * whether the front page displays the blog posts index (mentioned above) or a static page.
 * The front page template takes precedence over the blog posts index (home.php) template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#front-page-display
 *
 * @package Screenr
 */
get_header();
?>
<div id="content" class="site-content">
    <div id="content-inside" class="container <?php echo esc_attr(get_theme_mod('layout_settings', 'right')); ?>-sidebar">
        <div id="primary" class="content-area">
            <main id="main" class="site-main" role="main">

                <!-- BOTON PARA CAMBIO DE FUENTE E IMAGEN -->
                <a class="btn btn-theme-primary" id="cambiarCss">Cambiar CSS</a>
               
                <?php if (have_posts()) : ?>

                    <?php if (is_home() && !is_front_page()) : ?>
                        <header>
                            <h1 class="page-title screen-reader-text"><?php single_post_title(); ?></h1>
                        </header>
                    <?php endif; ?>

                    <?php /* Start the Loop */ ?>
                    <?php while (have_posts()) : the_post(); ?>

                        <?php
                        /*
                         * Include the Post-Format-specific template for the content.
                         * If you want to override this in a child theme, then include a file
                         * called content-___.php (where ___ is the Post Format name) and that will be used instead.
                         */
                        get_template_part('template-parts/content', get_post_format());
                        ?>

                    <?php endwhile; ?>

                    <?php the_posts_navigation(); ?>

                <?php else : ?>

                    <?php get_template_part('template-parts/content', 'none'); ?>

                <?php endif; ?>

            </main><!-- #main -->
        </div><!-- #primary -->

        <?php get_sidebar(); ?>

    </div><!--#content-inside -->
</div><!-- #content -->
<script type="text/javascript">
    jQuery("#cambiarCss").click(function () {
        jQuery("img.wp-post-image").css({'width': '500px'});
        jQuery("h1,h2,h3,h4").css({'font-size': '40px'});
    });
</script>
<?php get_footer(); ?>
