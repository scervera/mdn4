var tpj=jQuery;
            
            var revapi14;
            tpj(document).ready(function() {
                if(tpj("#rev_slider_14_1").revolution == undefined){
                    revslider_showDoubleJqueryError("#rev_slider_14_1");
                }else{
                    revapi14 = tpj("#rev_slider_14_1").show().revolution({
                        sliderType:"standard",
                        // jsFileLocation:"//172.16.9.141/revslider/public/assets/js/",
                        // jsFileLocation:"//172.16.9.141/revslider/public/assets/js/",
                        sliderLayout:"fullwidth",
                        dottedOverlay:"none",
                        delay:9000,
                        navigation: {
                            keyboardNavigation:"off",
                            keyboard_direction: "horizontal",
                            mouseScrollNavigation:"off",
                             mouseScrollReverse:"default",
                            onHoverStop:"off",
                            touch:{
                                touchenabled:"on",
                                swipe_threshold: 75,
                                swipe_min_touches: 1,
                                swipe_direction: "horizontal",
                                drag_block_vertical: false
                            }
                            ,
                            arrows: {
                                style:"erinyen",
                                enable:true,
                                hide_onmobile:true,
                                hide_under:600,
                                hide_onleave:true,
                                hide_delay:200,
                                hide_delay_mobile:1200,
                                tmp:'<div class="tp-title-wrap">    <div class="tp-arr-imgholder"></div>    <div class="tp-arr-img-over"></div> <span class="tp-arr-titleholder">{{title}}</span> </div>',
                                left: {
                                    h_align:"left",
                                    v_align:"center",
                                    h_offset:30,
                                    v_offset:0
                                },
                                right: {
                                    h_align:"right",
                                    v_align:"center",
                                    h_offset:30,
                                    v_offset:0
                                }
                            }
                            ,
                            bullets: {
                                enable:true,
                                hide_onmobile:false,
                                style:"ares",
                                hide_onleave:false,
                                direction:"horizontal",
                                h_align:"center",
                                v_align:"bottom",
                                h_offset:0,
                                v_offset:30,
                                space:5,
                                tmp:'<span class="tp-bullet-title">{{title}}</span>'
                            }
                        },
                        viewPort: {
                            enable:true,
                            outof:"pause",
                            visible_area:"80%",
                            presize:false
                        },
                        responsiveLevels:[1240,1024,778,480],
                        visibilityLevels:[1240,1024,778,480],
                        gridwidth:[1240,1024,778,480],
                        gridheight:[600,600,500,400],
                        lazyType:"none",
                        minHeight:"400",
                        parallax: {
                            type:"mouse",
                            origo:"slidercenter",
                            speed:2000,
                            levels:[2,3,4,5,6,7,12,16,10,50,47,48,49,50,51,55],
                        },
                        shadow:5,
                        spinner:"off",
                        stopLoop:"off",
                        stopAfterLoops:-1,
                        stopAtSlide:-1,
                        shuffle:"off",
                        autoHeight:"off",
                        disableProgressBar:"on",
                        hideThumbsOnMobile:"on",
                        hideSliderAtLimit:0,
                        hideCaptionAtLimit:0,
                        hideAllCaptionAtLilmit:0,
                        debugMode:false,
                        fallbacks: {
                            simplifyAll:"off",
                            nextSlideOnWindowFocus:"off",
                            disableFocusListener:false,
                        }
                    });
                }
            }); /*ready*/