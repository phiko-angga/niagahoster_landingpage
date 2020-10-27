<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>NIAGAHOSTER</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="{{ asset('public/assets/img/favicon.png') }}" rel="icon">
  <link href="{{ asset('public/assets/img/apple-touch-icon.png') }}" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- Vendor CSS Files -->
  <link href="{{ asset('public/assets/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
  <link href="{{ asset('public/assets/vendor/icofont/icofont.min.css') }}" rel="stylesheet">
  <link href="{{ asset('public/assets/vendor/boxicons/css/boxicons.min.css') }}" rel="stylesheet">
  <link href="{{ asset('public/assets/vendor/owl.carousel/assets/owl.carousel.min.css') }}" rel="stylesheet">
  <link href="{{ asset('public/assets/vendor/venobox/venobox.css') }}" rel="stylesheet">
  <link href="{{ asset('public/assets/vendor/aos/aos.css') }}" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="{{ asset('public/assets/css/style.css') }}" rel="stylesheet">

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body>
  
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">

      <div class="container subnav-menu d-none d-lg-block">
        <ul>
          <li><a href="#features" class="d-flex"><i class="material-icons dp48 pr-2">person</i> 
          Member Area</a></li>
          <li><a href="#features" class="d-flex"><i class="material-icons dp48 pr-2">chat_bubble</i> Live Chat</a></li>
          <li><a href="#features" class="d-flex"><i class="material-icons dp48 pr-2">local_phone</i> 0274-5305505</a></li>
        </ul>
      </div>
      <div class="border-top border-bottom">
        <div class="container d-flex">

          <div class="logo mr-auto">
            <!-- <h1 class="text-light"><a href="#">Appland</a></h1> -->
            <!-- Uncomment below if you prefer to use an image logo -->
            <a href="#"><img src="{{asset('public/assets/images/niagahoster-logo.png') }}" alt="" class="img-fluid"></a>
          </div>
          
          <div class="my-auto">
            <nav class="nav-menu d-none d-lg-block">
              <ul>
                <li class="active"><a href="#header">Hosting</a></li>
                <li><a href="#features">Domain</a></li>
                <li><a href="#gallery">Server</a></li>
                <li><a href="#pricing">Website</a></li>
                <li><a href="#faq">Afiliasi</a></li>
                <li><a href="#contact">Promo</a></li>
                <li><a href="#contact">Pembayaran</a></li>
                <li><a href="#contact">Review</a></li>
                <li><a href="#contact">Kontak</a></li>
                <li><a href="#contact">Blog</a></li>

              </ul>
            </nav><!-- .nav-menu -->
          </div>
        </div>
      </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">

    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-lg-flex flex-lg-column justify-content-center align-items-stretch pt-5 pt-lg-0 order-2 order-lg-1" data-aos="fade-up">
          <div>
            <h1>PHP Hosting</h1>
            <h2>Cepat, handal, penuh dengan modul PHP yang anda butuhkan</h2>
            <ul>
              <li class="d-flex mb-2"><i class="material-icons dp48 pr-2 text-success">check_circle</i> Solusi PHP untuk performa query yang lebih cepat</li>
              <li class="d-flex mb-2"><i class="material-icons dp48 pr-2 text-success">check_circle</i> Konsumsi memori yang lebih rendah</li>
              <li class="d-flex mb-2"><i class="material-icons dp48 pr-2 text-success">check_circle</i> Support PHP 5.3, PHP 5.4, PHP 5.5, PHP 5.6, PHP 7</li>
              <li class="d-flex mb-2"><i class="material-icons dp48 pr-2 text-success">check_circle</i> Fitur enkripsi IonCube dan Zend Guard Loaders</li>
              
            </ul>
          </div>
        </div>
        <div class="col-lg-6 d-lg-flex flex-lg-column align-items-stretch order-1 order-lg-2 hero-img" data-aos="fade-up">
          <img src="{{ asset('public/assets/svg/illustration banner PHP hosting-01.svg')}}" class="img-fluid" alt="">
        </div>
      </div>
    </div>

  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= App Features Section ======= -->
    <section id="features" class="features">
      <div class="container">
        <div class="row">
          <div class="col-xl-12 align-items-stretch">
            <div class="content text-center">
              <div class="row">
                  <div class="col-md-4 icon-box" data-aos="fade-up">
                    <div class="features-3">
                      <img src="{{ asset('public/assets/images/zendguard.png')}}" class="img-fluid" alt=""> 
                    </div>
                    <h4>PHP Zend Guard Loader</h4>
                  </div>

                  <div class="col-md-4 icon-box" data-aos="fade-up" data-aos-delay="100">
                    <div class="features-3">
                    <img src="{{ asset('public/assets/images/composer.png')}}" class="img-fluid" alt="">
                    </div>
                    <h4>PHP Composer</h4>
                  </div>

                  <div class="col-md-4 icon-box" data-aos="fade-up" data-aos-delay="200">
                    <div class="features-3">
                    <img src="{{ asset('public/assets/images/ioncube.png')}}" class="img-fluid" alt="">
                    </div>
                    <h4>PHP ionCube Loader</h4>
                  </div>

              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End App Features Section -->

    <!-- ======= Pricing Section ======= -->
    <section id="pricing" class="pricing">
      <div class="container">

        <div class="section-title">
          <h2>Paket Hosting Singapura yang Tepat</h2>
          <h3>Diskon 40% + Domain dan SSL Gratis untuk Anda</h3>
        </div>

        <div class="row no-gutters list-of">

          @foreach($product as $val)
          <div class="col-lg-3 aos-init aos-animate list-of-price" data-aos="fade-right">
            <?php echo $val->name == 'Personal' ? '<img src="'.asset('public/assets/images/best-seller.png').'" alt="" class="img-best-seller">' : '' ?>
            <div class="d-flex flex-column box price-list {{ $val->name == 'Personal' ? 'best_seller' : ''}}">
              <div class="{{ $val->name == 'Personal' ? 'bg-best_seller1' : ''}}">
                <h3>{{ $val->name }}</h3>
              </div>
              <div class="{{ $val->name == 'Personal' ? 'bg-best_seller1' : ''}}">
                <h6 class="mb-2"><del>Rp {{ number_format($val->normal_price) }}</del></h6>
                <h4 class="price"><span class="super">Rp</span> <span class="bolder">{{ substr($val->afterdisc_price,0,2) }}</span><span class="super"><strong>.{{ substr($val->afterdisc_price,2,3) }}</strong>/bln</span></h4>
              </div>
              <div class="{{ $val->name == 'Personal' ? 'bg-best_seller2' : ''}}">
                <p class="mb-0">{{ number_format($val->total_user) }} Pengguna Terdaftar</p>
              </div>
              <div>
              {!! $val->description !!}
              </div>
              <div>
                <a href="#" class="{{ $val->name == 'Personal' ? 'best-seller-btn' : 'get-started-btn'}}">{{ $val->name == 'Bisnis' ? 'Diskon 40%' : 'Pilih Sekarang'}}</a>
              </div>
            </div>
          </div>
          @endforeach


        </div>

      </div>
    </section><!-- End Pricing Section -->

    <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery">
      <div class="container">

        <div class="section-title">
          <h2>Powerful dengan Limit PHP yang Lebih Besar</h2>
          <div class="row">
            <div class="col-md-6">
              <div class="table-responsive">
                
                <table class="table table-striped table-bordered mx-auto" style="width:90%">
                  <tbody>
                    <tr>
                      <td><i class="material-icons dp48 pr-2 text-success">check_circle</i>max execution time 300s</td>
                    </tr>
                    <tr>
                      <td><i class="material-icons dp48 pr-2 text-success">check_circle</i>max execution time 300s</td>
                    </tr>
                    <tr>
                      <td><i class="material-icons dp48 pr-2 text-success">check_circle</i>php memory limit 1024 MB</td>
                    </tr>
                  </tbody>
                </table>

              </div>
            </div>
            <div class="col-md-6">
              <div class="table-responsive">

                <table class="table table-striped table-bordered mx-auto" style="width:90%">
                  <tbody>
                    <tr>
                      <td><i class="material-icons dp48 pr-2 text-success">check_circle</i>post max size 128 MB</td>
                    </tr>
                    <tr>
                      <td><i class="material-icons dp48 pr-2 text-success">check_circle</i>upload max filesize 128 MB</td>
                    </tr>
                    <tr>
                      <td><i class="material-icons dp48 pr-2 text-success">check_circle</i>max input vars 2500</td>
                    </tr>
                  </tbody>
                </table>

              </div>
            </div>
          </div>
          
        </div>

      </div>
    </section><!-- End Gallery Section -->

    <!-- ======= App Features Section ======= -->
    <section id="features" class="features all-packet">
      <div class="container">

        <div class="section-title">
          <h2>Semua Paket Hosting Sudah Termasuk</h2>
        </div>

        <div class="row no-gutters">
          <div class="col-12 d-flex align-items-stretch">
            <div class="content d-flex flex-column justify-content-center">
              <div class="row">
                <div class="col-md-4 icon-box text-center" data-aos="fade-up">
                  <img  src="{{asset('public/assets/svg/icon PHP Hosting_PHP Semua Versi.svg')}}" alt="">
                  <h4>PHP Semua Versi</h4>
                  <p>Pilih mulai dari versi PHP 5.3 s/d PHP 7 Ubah sesuka anda!</p>
                </div>
                <div class="col-md-4 icon-box text-center" data-aos="fade-up">
                  <img  src="{{asset('public/assets/svg/icon PHP Hosting_My SQL.svg')}}" alt="">
                  <h4>MySQL Versi 5.6</h4>
                  <p>Nikmati MySQL versi terbaru</p>
                </div>
                <div class="col-md-4 icon-box text-center" data-aos="fade-up">
                  <img  src="{{asset('public/assets/svg/icon PHP Hosting_CPanel.svg')}}" alt="">
                  <h4>Panel Hosting cPanel</h4>
                  <p>Kelola website dengan panel canggih yang familiar di hati anda</p>
                </div>
                <div class="col-md-4 icon-box text-center" data-aos="fade-up">
                  <img  src="{{asset('public/assets/svg/icon PHP Hosting_garansi uptime.svg')}}" alt="">
                  <h4>Garansi Uptime 99.9%</h4>
                  <p>Data center yang mendukung kelangsungan website Anda 24/7</p>
                </div>
                <div class="col-md-4 icon-box text-center" data-aos="fade-up">
                  <img  src="{{asset('public/assets/svg/icon PHP Hosting_InnoDB.svg')}}" alt="">
                  <h4>Database innoDB Unlimited</h4>
                  <p>Jumlah dan ukuran database yang tumbuh sesuai kebutuhan Anda</p>
                </div>
                <div class="col-md-4 icon-box text-center" data-aos="fade-up">
                  <img  src="{{asset('public/assets/svg/icon PHP Hosting_My SQL remote.svg')}}" alt="">
                  <h4>Wilchard Remote MySQL</h4>
                  <p>Mendukung s/d 25 max_user_connections dan 100 max_connections</p>
                </div>
              </div>
            </div>
          </div>
          
        </div>

      </div>
    </section><!-- End App Features Section -->

    <!-- ======= App Features Section ======= -->
    <section id="features" class="features laravel">
      <div class="container">

        <div class="section-title">
          <h2>Mendukung Penuh Framework Laravel</h2>
        </div>

        <div class="row">
          <div class="col-lg-6 d-lg-flex flex-lg-column justify-content-center align-items-stretch pt-5 pt-lg-0 order-2 order-lg-1" data-aos="fade-up">
            <div>
              <p class="mb-3">Tak perlu menggunakan dedicated server ataupun VPS yang mahal. Layanan PHP hosting murah kami mendukung penuh framework favorit Anda</p>
              <ul>
                <li class="d-flex"><i class="material-icons dp48 text-success">check_circle</i> Install Laravel <strong>1 klik</strong> dengan Softtacolous Installer</li>
                <li class="d-flex"><i class="material-icons dp48 text-success">check_circle</i> Mendukung ekstensi <strong>PHP Mycript</strong>, <strong>phar</strong>, <strong>mbstring</strong>, <strong>json</strong>, dan <strong>fileinfo.</strong></li>
                <li class="d-flex"><i class="material-icons dp48 text-success">check_circle</i> Tersedia Composer dan SSH untuk menginstall package pilihan Anda</li>
              </ul>
              <small>Nb. Composer dan SSH hanya tersedia pada paket Personal dan Bisnis</small>
              <p class="box featured mt-4">
                <a href="#" class="best-seller-btn">Pilih Hosting Anda</a>
              </p>
            </div>
          </div>
          <div class="image col-xl-5 d-flex align-items-stretch justify-content-center order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
            <img src="{{asset('public/assets/svg/illustration banner support laravel hosting.svg')}}" class="w-100 img-fluid" alt="">
          </div>
        </div>

      </div>
    </section><!-- End App Features Section -->

    <!-- ======= App Features Section ======= -->
    <section id="features" class="features modul-lengkap">
      <div class="container">

        <div class="section-title">
          <h2>Modul Lengkap untuk Menjalankan Aplikasi PHP Anda</h2>
        </div>

        <div class="w-75 mx-auto">
          <div class="row text-left">
            <div class="col-xs-6 col-md-3" data-aos="fade-up">
              <p>Ice PHP</p>
              <p>apc</p>
              <p>apcu</p>
              <p>apm</p>
              <p>ares</p>
              <p>bcmath</p>
              <p>bcompiler</p>
              <p>big_int</p>
              <p>bitset</p>
              <p>bloomy</p>
              <p>bz2_filter</p>
              <p>clamav</p>
              <p>coin_acceptor</p>
              <p>crack</p>
              <p>dba</p>
            </div>
            <div class="col-xs-6 col-md-3" data-aos="fade-up">
              <p>http</p>
              <p>huffman</p>
              <p>idn</p>
              <p>igbinary</p>
              <p>imagick</p>
              <p>imap</p>
              <p>inclued</p>
              <p>inotify</p>
              <p>interbase</p>
              <p>intl</p>
              <p>ioncube_loader</p>
              <p>ioncube_loader_4</p>
              <p>jsmin</p>
              <p>json</p>
              <p>ldap</p>
            </div>
            <div class="col-md-3 col-xs-6" data-aos="fade-up">
              <p>nd_pdo_mysql</p>
              <p>oauth</p>
              <p>oci8</p>
              <p>odbc</p>
              <p>opchace</p>
              <p>pdf</p>
              <p>pdo</p>
              <p>pdo_dblib</p>
              <p>pdo_firebird</p>
              <p>pdo_mysql</p>
              <p>pdo_odbc</p>
              <p>pdo_pgsql</p>
              <p>pdo_sqlite</p>
              <p>pgsql</p>
              <p>phalcon</p>
            </div>
            <div class="col-md-3 col-xs-6" data-aos="fade-up">
              <p>stats</p>
              <p>stem</p>
              <p>stomp</p>
              <p>suhosin</p>
              <p>sybase_ct</p>
              <p>sysvmsg</p>
              <p>sysvsem</p>
              <p>sysvshm</p>
              <p>tidy</p>
              <p>timezonedb</p>
              <p>trader</p>
              <p>translit</p>
              <p>uploadprogress</p>
              <p>uri_template</p>
              <p>uuid</p>
            </div>
            
          </div>
        </div>
        <p class="box featured text-center">
          <a href="#" class="get-started-btn">Selengkapnya</a>
        </p>

      </div>
    </section><!-- End App Features Section -->

    <!-- ======= App Features Section ======= -->
    <section id="features" class="features linux-hosting">
      <div class="container">

        <div class="row">
          <div class="col-lg-6 d-lg-flex flex-lg-column justify-content-center align-items-stretch pt-5 pt-lg-0 order-2 order-lg-1" data-aos="fade-up">
            <div>
              
              <h2>Linux Hosting yang Stabil dengan Teknologi LVE</h2>
              <p>SuperMicro <strong>Intel Xeon 24-Cores</strong> server dengan RAM <strong>128 GB</strong> dan teknologi <strong>LVE CloudLinux</strong> untuk stabilitas server Anda. dilengkapi dengan <strong>SSD</strong> untuk kecepatan <strong>MySQL</strong> dan caching. Apache dan load balancer berbasis LiteSpeed Technologies,  <strong>CageFS</strong> security, <strong>Raid-10</strong> protection dan auto backup untuk keamanan website PHP Anda.</p>
              <p class="box featured mt-4">
                <a href="#" class="best-seller-btn">Pilih Hosting Anda</a>
              </p>
            </div>
          </div>
          <div class="image col-lg-6 d-flex align-items-stretch justify-content-center order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
            <img src="{{asset('public/assets/images/Image support.png')}}" class="img-fluid" alt="">
          </div>
        </div>

      </div>
    </section><!-- End App Features Section -->

    <!-- ======= App Features Section ======= -->
    <section id="features" class="features social-media">
      <div class="container">

        <div class="row">
          <div class="col-lg-6 d-lg-flex flex-lg-column justify-content-center align-items-stretch pt-5 pt-lg-0 order-2 order-lg-1" data-aos="fade-up">
            <strong>Bagikan jika anda menyukai halaman ini.</strong>
          </div>
          <div class="col-xl-5 d-flex align-items-stretch justify-content-center order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
            <div class="d-flex list">
              <i class="fa fa-facebook-square fb"></i>
              <span>1000</span>
            </div>
            <div class="d-flex list">
            <i class="fa fa-twitter-square tt"></i>
              <span>1000</span>
            </div>
            <div class="d-flex list">
            <i class="fa fa-google-plus-square gg"></i>
              <span>1000</span>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End App Features Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">

  <div class="footer-newsletter" data-aos="fade-up">
      <div class="container">
        <div class="row">
          <div class="col-md-8 my-auto">
            <h4>Perlu <strong>BANTUAN?</strong> Hubungi Kami : <strong>0274-5305505</strong></h4>
          </div>
          <div class="col-md-4 text-center">
            <p><a href="#" class="bantuan-btn"><span class="d-flex"><i class="material-icons dp48 pr-2">chat_bubble</i> Live Chat</span></a></p>
          </div>
        </div>
      </div>
    </div>

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact" data-aos="fade-up">
            <p class="title">HUBUNGI KAMI</p>
            <p class="descript">
              0274-5305505 <br>
              Senin - Minggu<br>
              24 Jam Nonstop <br><br>
              Jalan Selokan Mataram Monjali<br>
              Karangjati MT I/304<br>
              Sinduadi, Mlati, Sleman<br>
              Yogyakarta 55284<br>
            </p>
          </div>

          <div class="col-lg-3 col-md-6 footer-links" data-aos="fade-up" data-aos-delay="100">
            <p class="title">LAYANAN</p>
            <ul>
              <li><a href="#">Domain</a></li>
              <li><a href="#">Shared Hosting</a></li>
              <li><a href="#">Cloud VPS Hosting</a></li>
              <li><a href="#">Managed VPS Hosting</a></li>
              <li><a href="#">Web Builder</a></li>
              <li><a href="#">Keamanan SSL / HTTPS</a></li>
              <li><a href="#">Jasa Pembuatan Website</a></li>
              <li><a href="#">Program Afiliasi</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links" data-aos="fade-up" data-aos-delay="200">
            <p class="title">SERVICE HOSTING</p>
            <ul>
              <li><a href="#">Hosting Murah</a></li>
              <li><a href="#">Hosting Indonesia</a></li>
              <li><a href="#">Hosting Singapura SG</a></li>
              <li><a href="#">Hosting PHP</a></li>
              <li><a href="#">Hosting Wordpress</a></li>
              <li><a href="#">Hosting Laravel</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links" data-aos="fade-up" data-aos-delay="200">
            <p class="title">TUTORIAL</p>
            <ul>
              <li><a href="#">Knowledgebase</a></li>
              <li><a href="#">Blog</a></li>
              <li><a href="#">Cara Pembayaran</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links" data-aos="fade-up" data-aos-delay="200">
            <p class="title">TENTANG KAMI</p>
            <ul>
              <li><a href="#">Tim Niagahoster</a></li>
              <li><a href="#">Karir</a></li>
              <li><a href="#">Events</a></li>
              <li><a href="#">Penawaran & Promo Spesial</a></li>
              <li><a href="#">Kontak Kami</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links" data-aos="fade-up" data-aos-delay="200">
            <p class="title">KENAPA PILIH NIAGAHOSTER?</p>
            <ul>
              <li><a href="#">Support Terbaik</a></li>
              <li><a href="#">Garansi Harga Termurah</a></li>
              <li><a href="#">Domain Gratis Selamanya</a></li>
              <li><a href="#">Datacenter Hosting Terbaik</a></li>
              <li><a href="#">Review Pelanggan</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-3 footer-links newsletter" data-aos="fade-up" data-aos-delay="200">
            <p class="title">NEWSLETTER</p>
            <ul>
              <li>
                <form action="" method="post">
                  <input type="email" name="email" placeholder="Email"><input type="submit" value="Berlangganan">
                </form>
              </li>
              <li><a href="#">Dapatkan promo dan konten menarik dari penyedia hosting terbaik Anda</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-3 footer-links" data-aos="fade-up" data-aos-delay="200">
            <p></p>
            <ul class="mt-5">
              <li>
                <div class="social-links mt-3">
                  <a href="#" class="facebook mr-5"><i class="bx bxl-facebook"></i></a>
                  <a href="#" class="instagram mr-5"><i class="bx bxl-twitter"></i></a>
                  <a href="#" class="google-plus"><i class="bx bxl-google-plus"></i></a>
                </div>
              </li>
            </ul>
          </div>

          <div class="col-md-12 footer-links">
            <p class="title">PEMBAYARAN</p>
            <ul class="payment d-flex">
              <li><img class="img-fluid" src="{{asset('public/assets/icon_bank/bca.png')}}" alt=""></li>
              <li><img class="img-fluid" src="{{asset('public/assets/icon_bank/mandiri.png')}}" alt=""></li>
              <li><img class="img-fluid" src="{{asset('public/assets/icon_bank/bni.png')}}" alt=""></li>
              <li><img class="img-fluid" src="{{asset('public/assets/icon_bank/visa.png')}}" alt=""></li>
              <li><img class="img-fluid" src="{{asset('public/assets/icon_bank/mastercard.png')}}" alt=""></li>
              <li><img class="img-fluid" src="{{asset('public/assets/icon_bank/atm.png')}}" alt=""></li>
              <li><img class="img-fluid" src="{{asset('public/assets/icon_bank/permata.png')}}" alt=""></li>
              <li><img class="img-fluid" src="{{asset('public/assets/icon_bank/prima.png')}}" alt=""></li>
              <li><img class="img-fluid" src="{{asset('public/assets/icon_bank/alto.png')}}" alt=""></li>
            </ul>
            <p>Aktivasi instan dengan e-Payment Hosting dan domain langsung aktif! </p>
          </div>

        </div>
        
      
        <div class="row credit">
            
          <div class="col-md-12 ">
            <div class="copyright d-flex footer-last">
              
              <div class="text-left ">
              Copyrigt @2016 Niagahoster | Hosting powered by PHP7, CloudLinux, CloudFlare, BitNinja and DC Biznet Technovillage Jakarta<br>
              Cloud VPS Murah powered by Webuzo Softtacolous, Intel SSD and cloud computing technology
              </div>
              <div class="text-right footer-last-c2">Syarat dan Ketentuan | Kebijakan Privasi</div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="{{ asset('public/assets/vendor/jquery/jquery.min.js') }}"></script>
  <script src="{{ asset('public/assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
  <script src="{{ asset('public/assets/vendor/jquery.easing/jquery.easing.min.js') }}"></script>
  <script src="{{ asset('public/assets/vendor/php-email-form/validate.js') }}"></script>
  <script src="{{ asset('public/assets/vendor/owl.carousel/owl.carousel.min.js') }}"></script>
  <script src="{{ asset('public/assets/vendor/venobox/venobox.min.js') }}"></script>
  <script src="{{ asset('public/assets/vendor/aos/aos.js') }}"></script>

  <!-- Template Main JS File -->
  <script src="{{ asset('public/assets/js/main.js') }}"></script>

</body>
</html>

@yield('script')