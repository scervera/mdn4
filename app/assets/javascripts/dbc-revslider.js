var tpj=jQuery;
                  
                  var revapi19;
                  tpj(document).ready(function() {
                        if(tpj("#rev_slider_19_1").revolution == undefined){
                              revslider_showDoubleJqueryError("#rev_slider_19_1");
                        }else{
                              revapi19 = tpj("#rev_slider_19_1").show().revolution({
                                    sliderType:"standard",
jsFileLocation:"//172.16.9.141/revslider/public/assets/js/",
                                    sliderLayout:"fullwidth",
                                    dottedOverlay:"none",
                                    delay:9000,
                                    // navigation: {
                                    //       onHoverStop:"off",
                                    // },
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
                                            hide_onmobile:true,
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
                                    responsiveLevels:[1240,1024,778,480],
                                    visibilityLevels:[1240,1024,778,480],
                                    gridwidth:[1240,1024,778,480],
                                    gridheight:[600,768,960,720],
                                    lazyType:"none",
                        minHeight:"400",
                                    shadow:0,
                                    spinner:"spinner5",
                                    stopLoop:"off",
                                    stopAfterLoops:-1,
                                    stopAtSlide:-1,
                                    shuffle:"off",
                                    autoHeight:"off",
                                    disableProgressBar:"on",
                                    hideThumbsOnMobile:"off",
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
                  });   