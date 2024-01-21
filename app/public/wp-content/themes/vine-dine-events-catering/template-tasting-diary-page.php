<?php

/* Template Name: The Tasting Diary page */

get_header();

?>

<!-- Hero header -->
<?php get_template_part('components/section', 'page-hero'); ?>

<div class="container row-gap">

    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>

            <?php the_content(); ?>

    <?php endwhile;
    else : endif; ?>

    <!-- Page content below this line -->



    <!-- Breadcrumb -->
    <?php get_template_part('components/section', 'breadcrumb'); ?>

    <!-- Page Title -->
    <div class="row justify-content-center">

        <div class="col-lg-8">
            <h1><?php echo the_title(); ?></h1>
        </div>

    </div>

    <!-- Text (2 column) -->
    <?php get_template_part('components/section', 'text-2col'); ?>

    <!-- Plane illustration -->

    <div class="row justify-content-center">
        <div class="col text-align-center">
            <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 1300 142" fill="none">
                <path fill-rule="evenodd" clip-rule="evenodd" d="M649.492 3.39057C645.477 3.53031 641.459 3.68253 637.438 3.84724L637.356 1.84891C641.381 1.68404 645.404 1.53166 649.423 1.39178L649.492 3.39057ZM625.365 4.37876C621.337 4.56842 617.305 4.77057 613.27 4.98522L613.164 2.98804C617.203 2.77318 621.239 2.57083 625.271 2.38097L625.365 4.37876ZM673.67 2.69915C669.646 2.78918 665.619 2.89181 661.59 3.00704L661.533 1.00786C665.566 0.892509 669.597 0.789773 673.625 0.699651L673.67 2.69915ZM601.232 5.66196C597.216 5.89987 593.195 6.15012 589.17 6.41271L589.04 4.41695C593.069 4.1541 597.093 3.9036 601.114 3.66545L601.232 5.66196ZM697.834 2.30967C693.804 2.34936 689.772 2.40175 685.737 2.46682L685.705 0.467082C689.744 0.401939 693.78 0.349502 697.814 0.30977L697.834 2.30967ZM577.084 7.23748C573.082 7.52252 569.075 7.81971 565.064 8.12906L564.911 6.13498C568.925 5.82533 572.936 5.52785 576.941 5.24253L577.084 7.23748ZM721.992 2.22378C717.969 2.21272 713.944 2.21435 709.917 2.22867L709.91 0.228683C713.941 0.214347 717.97 0.21272 721.998 0.223792L721.992 2.22378ZM553.018 9.09359C548.998 9.42726 544.973 9.77309 540.943 10.1311L540.766 8.13893C544.8 7.78059 548.828 7.43443 552.852 7.10044L553.018 9.09359ZM746.167 2.4432C742.141 2.38116 738.113 2.33185 734.084 2.29527L734.102 0.295356C738.136 0.331967 742.167 0.38133 746.198 0.443442L746.167 2.4432ZM528.944 11.2314C524.941 11.6101 520.932 12.0008 516.917 12.4033L516.718 10.4133C520.736 10.0104 524.749 9.61936 528.756 9.24033L528.944 11.2314ZM770.328 2.96873C766.301 2.8556 762.274 2.75522 758.245 2.6676L758.288 0.668071C762.321 0.755782 766.353 0.856265 770.384 0.969516L770.328 2.96873ZM504.858 13.647C500.871 14.0694 496.879 14.5036 492.881 14.9495L492.659 12.9618C496.661 12.5155 500.657 12.0809 504.648 11.6581L504.858 13.647ZM794.481 3.80053C790.457 3.63641 786.432 3.48502 782.407 3.34639L782.476 1.34758C786.505 1.48635 790.534 1.63789 794.563 1.80219L794.481 3.80053ZM480.878 16.3215C476.871 16.7906 472.859 17.2714 468.84 17.7639L468.596 15.7788C472.619 15.2858 476.635 14.8046 480.646 14.3351L480.878 16.3215ZM818.623 4.93796C814.599 4.72292 810.576 4.52061 806.552 4.33104L806.646 2.33325C810.674 2.52302 814.702 2.72555 818.73 2.94081L818.623 4.93796ZM456.882 19.2617C452.896 19.7716 448.905 20.293 444.907 20.8259L444.643 18.8434C448.644 18.3101 452.639 17.7882 456.628 17.2779L456.882 19.2617ZM432.894 22.4589C428.92 23.0096 424.94 23.5716 420.953 24.1448L420.668 22.1652C424.658 21.5915 428.642 21.029 432.62 20.4778L432.894 22.4589ZM842.744 6.37928C838.725 6.11381 834.707 5.86103 830.689 5.62093L830.809 3.62449C834.831 3.86484 838.853 4.11788 842.876 4.38362L842.744 6.37928ZM409.01 25.8926C405.023 26.4864 401.029 27.0914 397.027 27.7076L396.723 25.7309C400.727 25.1142 404.725 24.5087 408.716 23.9144L409.01 25.8926ZM866.856 8.12324C862.837 7.80741 858.82 7.50423 854.803 7.2137L854.948 5.21892C858.968 5.50975 862.99 5.81324 867.013 6.12939L866.856 8.12324ZM385.097 29.5748C381.136 30.2047 377.168 30.8455 373.192 31.4972L372.869 29.5235C376.847 28.8713 380.819 28.23 384.783 27.5996L385.097 29.5748ZM890.936 10.1656C886.919 9.80003 882.905 9.44704 878.892 9.10664L879.061 7.1138C883.078 7.45454 887.097 7.80789 891.117 8.17384L890.936 10.1656ZM361.244 33.485C357.276 34.1548 353.301 34.8354 349.319 35.5268L348.977 33.5562C352.962 32.8643 356.94 32.1832 360.911 31.5129L361.244 33.485ZM914.983 12.5027C910.976 12.0887 906.972 11.6872 902.97 11.2982L903.163 9.30754C907.17 9.69696 911.178 10.0989 915.188 10.5133L914.983 12.5027ZM337.455 37.6144C333.493 38.3209 329.523 39.038 325.546 39.7657L325.186 37.7983C329.166 37.0701 333.139 36.3524 337.104 35.6454L337.455 37.6144ZM939.019 15.1329C935.013 14.6702 931.01 14.2199 927.008 13.782L927.226 11.7939C931.231 12.2322 935.239 12.6829 939.249 13.1461L939.019 15.1329ZM313.618 41.9757C309.686 42.7132 305.746 43.4609 301.799 44.219L301.422 42.2549C305.372 41.4963 309.314 40.748 313.249 40.01L313.618 41.9757ZM963.01 18.0478C959.006 17.5374 955.005 17.0392 951.006 16.5534L951.248 14.568C955.25 15.0543 959.255 15.5529 963.263 16.0639L963.01 18.0478ZM289.934 46.5241C285.971 47.3028 282.001 48.0917 278.022 48.891L277.628 46.9302C281.609 46.1304 285.583 45.3408 289.549 44.5616L289.934 46.5241ZM986.953 21.2418C982.964 20.6861 978.978 20.1427 974.996 19.6113L975.26 17.6289C979.247 18.1608 983.236 18.7047 987.229 19.2609L986.953 21.2418ZM266.224 51.2861C262.294 52.0925 258.355 52.9089 254.408 53.7353L253.998 51.7777C257.948 50.9508 261.889 50.1338 265.823 49.3269L266.224 51.2861ZM1010.89 24.7148C1006.9 24.1128 1002.91 23.5229 998.932 22.945L999.219 20.9657C1003.2 21.5442 1007.19 22.1346 1011.19 22.7371L1010.89 24.7148ZM242.542 56.2444C238.612 57.0835 234.674 57.9325 230.727 58.7913L230.302 56.837C234.251 55.9777 238.192 55.1282 242.124 54.2885L242.542 56.2444ZM1034.76 28.4529C1030.78 27.8061 1026.79 27.1711 1022.82 26.5481L1023.12 24.5721C1027.11 25.1957 1031.09 25.8313 1035.08 26.4788L1034.76 28.4529ZM218.963 61.3748C215.034 62.2457 211.096 63.1262 207.149 64.0163L206.709 62.0653C210.658 61.1746 214.599 60.2936 218.531 59.4222L218.963 61.3748ZM195.304 66.7111C191.41 67.6046 187.507 68.5073 183.596 69.4194L183.142 67.4717C187.055 66.559 190.96 65.6557 194.856 64.7618L195.304 66.7111ZM1058.58 32.4503C1054.62 31.7624 1050.65 31.0863 1046.69 30.4219L1047.03 28.4495C1050.99 29.1145 1054.95 29.7912 1058.93 30.4796L1058.58 32.4503ZM171.838 72.1837C167.91 73.1144 163.973 74.0545 160.027 75.0039L159.559 73.0594C163.507 72.1095 167.446 71.1688 171.377 70.2375L171.838 72.1837ZM1082.4 36.7096C1078.43 35.9777 1074.46 35.2575 1070.5 34.5488L1070.85 32.58C1074.82 33.2893 1078.79 34.0102 1082.77 34.7427L1082.4 36.7096ZM148.301 77.8467C144.41 78.7969 140.51 79.7561 136.602 80.7243L136.121 78.7829C140.031 77.8142 143.933 76.8545 147.826 75.9038L148.301 77.8467ZM1106.14 41.2081C1102.17 40.4355 1098.21 39.6743 1094.26 38.9245L1094.63 36.9595C1098.59 37.7099 1102.55 38.4718 1106.52 39.245L1106.14 41.2081ZM124.851 83.6558C120.932 84.6402 117.004 85.6335 113.068 86.6358L112.574 84.6976C116.513 83.6948 120.443 82.701 124.363 81.7161L124.851 83.6558ZM1129.83 45.9459C1125.88 45.1372 1121.95 44.3397 1118.02 43.5534L1118.41 41.5923C1122.34 42.3792 1126.28 43.1774 1130.23 43.9867L1129.83 45.9459ZM101.433 89.6174C97.5461 90.62 93.6502 91.6312 89.7453 92.6511L89.2399 90.716C93.1467 89.6956 97.0446 88.6839 100.934 87.6808L101.433 89.6174ZM1153.53 50.9277C1149.57 50.0758 1145.61 49.235 1141.67 48.4053L1142.08 46.4481C1146.03 47.2784 1149.99 48.1199 1153.95 48.9725L1153.53 50.9277ZM78.0034 95.7368C76.0419 96.2555 74.0781 96.7763 72.1119 97.2992L71.5978 95.3664C73.5649 94.8432 75.5297 94.3222 77.4922 93.8033L78.0034 95.7368ZM1177.09 56.114C1173.15 55.2279 1169.22 54.3526 1165.29 53.4882L1165.72 51.535C1169.65 52.4 1173.59 53.276 1177.53 54.1628L1177.09 56.114ZM1200.65 61.5253C1196.74 60.6079 1192.83 59.7012 1188.93 58.8051L1189.38 56.8559C1193.28 57.7527 1197.19 58.66 1201.11 59.578L1200.65 61.5253ZM1224.2 67.1533C1220.26 66.1941 1216.33 65.2455 1212.4 64.3075L1212.87 62.3623C1216.8 63.301 1220.73 64.2503 1224.67 65.2101L1224.2 67.1533ZM1247.61 72.9594C1243.7 71.9729 1239.8 70.9966 1235.91 70.0306L1236.39 68.0894C1240.29 69.0561 1244.19 70.033 1248.1 71.0202L1247.61 72.9594ZM1265.25 77.4681C1263.28 76.9594 1261.32 76.4533 1259.36 75.9498L1259.86 74.0126C1261.82 74.5165 1263.78 75.0229 1265.75 75.5319L1265.25 77.4681ZM43.3941 111.039L37.8596 138.88L32.2594 141.034L30.7181 115.913L15.7096 121.685L14.275 131.879L10.0749 133.494L8.02943 119.817L0.383789 108.293L4.58393 106.678L12.4821 113.284L27.4906 107.512L11.8004 87.8322L17.4006 85.6786L40.1638 102.638L55.4159 96.7731C56.5298 96.3447 57.7683 96.3764 58.8589 96.8612C59.9495 97.346 60.8028 98.2441 61.2312 99.3581C61.6596 100.472 61.6279 101.711 61.1431 102.801C60.6584 103.892 59.7602 104.745 58.6463 105.173L43.3941 111.039ZM1280.52 60.2774C1281.26 61.38 1282.4 62.1446 1283.7 62.4032C1284.35 62.5312 1285.01 62.5312 1285.65 62.403C1286.3 62.2749 1286.91 62.0211 1287.46 61.6563C1288 61.2914 1288.47 60.8226 1288.84 60.2766C1289.2 59.7306 1289.45 59.1182 1289.58 58.4742C1289.84 57.1735 1289.57 55.8235 1288.83 54.7209C1288.1 53.6184 1286.95 52.8537 1285.65 52.5952C1284.35 52.3366 1283 52.6053 1281.9 53.3421C1280.8 54.0789 1280.03 55.2236 1279.77 56.5242C1279.52 57.8248 1279.78 59.1749 1280.52 60.2774ZM1276.9 45.8594C1279.99 43.7962 1283.77 43.0439 1287.41 43.7679C1291.05 44.492 1294.25 46.633 1296.32 49.7201C1298.38 52.8071 1299.13 56.5874 1298.41 60.2291C1296.36 70.5276 1279.61 83.0001 1279.61 83.0001C1279.61 83.0001 1268.9 65.0677 1270.95 54.7692C1271.67 51.1275 1273.81 47.9225 1276.9 45.8594Z" fill="black" />
            </svg>
        </div>
    </div>


    <!-- Pull in single Tasting Diary Event -->
    <?php
    $args = array(
        'post_type' => 'diary', // Replace with your custom post type name
        'posts_per_page' => 1, // Number of posts to display (1 for the latest post)
        'orderby' => 'date', // Order by date
        'order' => 'DESC', // Display in descending order (latest first)
    );

    $query = new WP_Query($args);

    if ($query->have_posts()) :
        while ($query->have_posts()) : $query->the_post();

            $ft_img = get_field('ft_img');
            $diary_text_content = get_field('diary_text_content');
            $diary_menu_link = get_field('diary_menu_link');
            $diary_event_price
                = get_field('diary_event_price');
            $diary_text_incl_ex
                = get_field('diary_text_incl_ex');
            $eventbrite_link = get_field('eventbrite_link'); ?>

            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <h2>Next stop...</h2>
                </div>
            </div>

            <section>
                <div class="row justify-content-center">
                    <div class="col-lg-4 offset-lg-1">
                        <article>
                            <h3><?php the_title(); ?></h3>
                            <p><?php echo $diary_text_content; ?></p>

                            <!-- Destination's menu link -->
                            <a href="<?php echo $diary_menu_link['url']; ?>" class="inpage-link">Destination's menu
                                <svg id="icon-arrow-link" xmlns="http://www.w3.org/2000/svg" width="54" height="9" viewBox="0 0 54 9" fill="none">
                                    <path d="M54.3536 4.85355C54.5488 4.65829 54.5488 4.34171 54.3536 4.14645L51.1716 0.964466C50.9763 0.769204 50.6597 0.769204 50.4645 0.964466C50.2692 1.15973 50.2692 1.47631 50.4645 1.67157L53.2929 4.5L50.4645 7.32843C50.2692 7.52369 50.2692 7.84027 50.4645 8.03553C50.6597 8.2308 50.9763 8.2308 51.1716 8.03553L54.3536 4.85355ZM0 5H54V4H0V5Z" fill="black" />
                                </svg></a>
                        </article>

                        <article>
                            <h4>Price:</h4>
                            <p>£<?php echo $diary_event_price; ?></p>
                        </article>

                        <article>
                            <h4>Included:</h4>
                            <p><?php echo $diary_text_incl_ex; ?></p>
                        </article>

                        <article>
                            <a href="<?php echo             $eventbrite_link['url']; ?>" class="btn custom-cta-btn uppercase" role="button">
                                <?php echo $eventbrite_link['title']; ?>
                            </a>
                        </article>
                    </div>

                    <!-- image -->
                    <div class="col-4 offset-lg-1 image-hide">
                        <img src="<?php echo esc_url($ft_img['url']); ?>" alt="<?php echo esc_attr($ft_img['alt']); ?>" />
                    </div>
                </div>
            </section>
        <?php endwhile;
        wp_reset_postdata();
    else : ?>
        <div class="row justify-content-center">


            <div class="col-8">
                <h3>We have nothing in the diary...yet</h3>
                <p>Watch this space! We shall be announcing another event soon.</p>
            </div>
        </div>
    <?php endif; ?>
</div>


<?php get_footer(); ?>