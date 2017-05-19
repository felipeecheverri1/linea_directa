<?php

/**
 * Plugin name: Slide para Linea directa
 * Plugin URI: http://www.ingeneo.com.co
 * Description: Slide para rotar imagenes en Linea directa
 * Author: Felipe Echeverri
 * Version: 1.0
 * Author URI: http://www.ingeneo.com.co
 */
function slide_linea_directa($imgs) {
    
    if (isset($imgs)) {
        $slide = '<div id="slider"><figure>';
        foreach ($imgs as $img) {
            $slide .= '<img src="wp-content/uploads/2017/05/' . $img . '" alt="slide" />';
        }
        $slide .= '</figure></div>';
    }
    return $slide;
}

add_shortcode("slide_linea_directa", "slide_linea_directa");
