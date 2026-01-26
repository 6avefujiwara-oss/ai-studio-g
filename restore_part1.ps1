
$utf8 = [System.Text.Encoding]::UTF8

# index.html
$indexContent = @"
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AI Studio g - AIで、Web制作をもっと自由になる。</title>
    <meta name="description" content="AIを活用して、高品質なウェブサイトを素早く、安価に作成します。従来のWeb制作の常識を覆す新しい体験を。AI Studio g公式サイト。">
    <meta property="og:title" content="AI Studio g - AIで、Web制作をもっと自由になる。">
    <meta property="og:description" content="AIを活用して、高品質なウェブサイトを素早く、安価に作成します。業界最安水準・最短3日納品。">
    <meta property="og:type" content="website">
    <meta property="og:image" content="assets/hero-image.png">
    <link rel="icon" href="assets/logo.png" type="image/png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@400;500;700&family=Outfit:wght@400;600;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <script src="script.js" defer></script>
</head>

<body>
    <div class="background-blobs">
        <div class="blob blob-1"></div>
        <div class="blob blob-2"></div>
        <div class="blob blob-3"></div>
    </div>

    <header class="header">
        <div class="container header-container">
            <a href="index.html" class="logo">
                <img src="assets/logo.png" alt="AI Studio g" class="logo-icon">
                <span><span class="logo-text">AI</span> Studio g</span>
            </a>
            <nav class="nav">
                <ul class="nav-list">
                    <li><a href="features.html">特徴</a></li>
                    <li><a href="portfolio.html">制作実績</a></li>
                    <li><a href="process.html">仕組み</a></li>
                    <li><a href="pricing.html">料金</a></li>
                    <li><a href="demo.html">デモ(β)</a></li>
                    <li><a href="news.html">お知らせ</a></li>
                    <li><a href="faq.html">FAQ</a></li>
                    <li><a href="contact.html" class="btn btn-primary sm">お問い合わせ</a></li>
                </ul>
            </nav>
            <button class="mobile-menu-toggle" aria-label="メニューを開く">
                <span></span>
                <span></span>
                <span></span>
            </button>
        </div>
    </header>

    <main>
        <section class="hero">
            <div class="container hero-container">
                <div class="hero-content">
                    <span class="badge">Next Gen Web Creation</span>
                    <h1 class="hero-title">AIで、Web制作は<br>もっと<span class="gradient-text">自由</span>になる。</h1>
                    <p class="hero-description">
                        もう、高額な制作費や長い納期に悩む必要はありません。<br>
                        AIの力を活用し、驚くほど高品質なウェブサイトを、<br>
                        かつてないスピードと低価格で提供します。
                    </p>
                    <div class="hero-buttons">
                        <a href="contact.html" class="btn btn-primary">無料で相談する</a>
                        <a href="features.html" class="btn btn-secondary">詳しく見る</a>
                    </div>
                </div>
                <div class="hero-image-wrapper">
                    <div class="hero-image-card glass">
                        <img src="assets/hero-image.png" alt="AI Web Creation Interface" class="hero-image">
                        <div class="floating-ui ui-1 glass">
                            <span class="icon">🚀</span>
                            <div class="text">
                                <span class="label">Speed</span>
                                <span class="value">10x Faster</span>
                            </div>
                        </div>
                        <div class="floating-ui ui-2 glass">
                            <span class="icon">💰</span>
                            <div class="text">
                                <span class="label">Cost</span>
                                <span class="value">1/5 Price</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="banner" class="banner section">
            <div class="container banner-container glass">
                <div class="banner-content">
                    <h2>今すぐ、新しいWeb制作を体験しよう</h2>
                    <p>まずは無料相談から。あなたのビジネスに最適なプランをご提案します。</p>
                </div>
                <div class="banner-action">
                    <a href="contact.html" class="btn btn-primary white">お問い合わせ</a>
                </div>
            </div>
        </section>
    </main>

    <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-logo">AI Studio g</div>
                <nav class="footer-nav">
                    <ul>
                        <li><a href="index.html">ホーム</a></li>
                        <li><a href="company.html">会社概要</a></li>
                        <li><a href="privacy.html">プライバシーポリシー</a></li>
                    </ul>
                </nav>
                <p class="copyright">&copy; 2024 AI Studio g. All Rights Reserved.</p>
            </div>
        </div>
    </footer>
</body>
</html>
"@
[System.IO.File]::WriteAllText("$PWD/index.html", $indexContent, $utf8)

# features.html
$featuresContent = @"
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>特徴・強み | AI Studio g</title>
    <meta name="description" content="AI Studio gの3つの特徴。圧倒的なスピード、プロクオリティのデザイン、そして驚きの低コスト。AIだからこそ実現できるメリットをご紹介します。">
    <meta property="og:title" content="特徴・強み | AI Studio g">
    <meta property="og:description" content="AIを活用したWeb制作、3つのメリット：スピード、品質、コスト。">
    <meta property="og:type" content="article">
    <meta property="og:image" content="assets/hero-image.png">
    <link rel="icon" href="assets/logo.png" type="image/png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@400;500;700&family=Outfit:wght@400;600;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <script src="script.js" defer></script>
</head>

<body>
    <div class="background-blobs">
        <div class="blob blob-1"></div>
        <div class="blob blob-2"></div>
        <div class="blob blob-3"></div>
    </div>

    <header class="header">
        <div class="container header-container">
            <a href="index.html" class="logo">
                <img src="assets/logo.png" alt="AI Studio g" class="logo-icon">
                <span><span class="logo-text">AI</span> Studio g</span>
            </a>
            <nav class="nav">
                <ul class="nav-list">
                    <li><a href="features.html" class="active">特徴</a></li>
                    <li><a href="portfolio.html">制作実績</a></li>
                    <li><a href="process.html">仕組み</a></li>
                    <li><a href="pricing.html">料金</a></li>
                    <li><a href="demo.html">デモ(β)</a></li>
                    <li><a href="news.html">お知らせ</a></li>
                    <li><a href="faq.html">FAQ</a></li>
                    <li><a href="contact.html" class="btn btn-primary sm">お問い合わせ</a></li>
                </ul>
            </nav>
            <button class="mobile-menu-toggle" aria-label="メニューを開く">
                <span></span>
                <span></span>
                <span></span>
            </button>
        </div>
    </header>

    <main class="page-main section">
        <div class="container">
            <div class="section-header center">
                <h1 class="page-title">Why Choose AIWeb?</h1>
                <p class="section-subtitle">従来のWeb制作とAIWebの違い</p>
            </div>
            <div class="features-grid">
                <div class="feature-card glass">
                    <div class="feature-icon">⚡</div>
                    <h3>圧倒的なスピード</h3>
                    <p>数週間かかっていた制作期間を、AIによる自動生成と効率化で数日に短縮。ビジネスのチャンスを逃しません。</p>
                </div>
                <div class="feature-card glass">
                    <div class="feature-icon">✨</div>
                    <h3>高品質なデザイン</h3>
                    <p>膨大なデザインデータを学習したAIが、トレンドを押さえた美しいレイアウトを提案。プロクオリティを保証します。</p>
                </div>
                <div class="feature-card glass">
                    <div class="feature-icon">💎</div>
                    <h3>低コストを実現</h3>
                    <p>人手による作業を大幅に削減することで、従来の制作会社の相場を大きく下回る価格設定を実現しました。</p>
                </div>
            </div>
        </div>
    </main>

    <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-logo">AI Studio g</div>
                <nav class="footer-nav">
                    <ul>
                        <li><a href="index.html">ホーム</a></li>
                        <li><a href="company.html">会社概要</a></li>
                        <li><a href="privacy.html">プライバシーポリシー</a></li>
                    </ul>
                </nav>
                <p class="copyright">&copy; 2024 AI Studio g. All Rights Reserved.</p>
            </div>
        </div>
    </footer>
</body>
</html>
"@
[System.IO.File]::WriteAllText("$PWD/features.html", $featuresContent, $utf8)

# portfolio.html
$portfolioContent = @"
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>制作実績 | AI Studio g</title>
    <meta name="description" content="AI Studio gの制作実績一覧。アパレル、IT企業、飲食店など、様々な業種の高品質なウェブサイト制作事例をご覧いただけます。">
    <meta property="og:title" content="制作実績 | AI Studio g">
    <meta property="og:description" content="AIを活用したハイクオリティなWebデザイン制作事例。">
    <meta property="og:type" content="article">
    <meta property="og:image" content="assets/portfolio-1.png">
    <link rel="icon" href="assets/logo.png" type="image/png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@400;500;700&family=Outfit:wght@400;600;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <script src="script.js" defer></script>
</head>

<body>
    <div class="background-blobs">
        <div class="blob blob-1"></div>
        <div class="blob blob-2"></div>
        <div class="blob blob-3"></div>
    </div>

    <header class="header">
        <div class="container header-container">
            <a href="index.html" class="logo">
                <img src="assets/logo.png" alt="AI Studio g" class="logo-icon">
                <span><span class="logo-text">AI</span> Studio g</span>
            </a>
            <nav class="nav">
                <ul class="nav-list">
                    <li><a href="features.html">特徴</a></li>
                    <li><a href="portfolio.html" class="active">制作実績</a></li>
                    <li><a href="process.html">仕組み</a></li>
                    <li><a href="pricing.html">料金</a></li>
                    <li><a href="demo.html">デモ(β)</a></li>
                    <li><a href="news.html">お知らせ</a></li>
                    <li><a href="faq.html">FAQ</a></li>
                    <li><a href="contact.html" class="btn btn-primary sm">お問い合わせ</a></li>
                </ul>
            </nav>
            <button class="mobile-menu-toggle" aria-label="メニューを開く">
                <span></span>
                <span></span>
                <span></span>
            </button>
        </div>
    </header>

    <main class="page-main section">
        <div class="container">
            <div class="section-header center">
                <h1 class="page-title">Portfolio</h1>
                <p class="section-subtitle">制作実績</p>
            </div>
            <div class="portfolio-slider-wrapper glass">
                <button class="slider-btn prev" aria-label="前の実績へ">←</button>
                <div class="portfolio-slider-container">
                    <div class="portfolio-slider">
                        <div class="portfolio-item">
                            <img src="assets/portfolio-1.png" alt="Fashion E-commerce Site" class="portfolio-img">
                            <div class="portfolio-info">
                                <h3>Fashion Brand EC</h3>
                                <p>アパレルブランドのECサイト。シンプルで商品の魅力が引き立つデザイン。</p>
                            </div>
                        </div>
                        <div class="portfolio-item">
                            <img src="assets/portfolio-2.png" alt="Tech Corporate Site" class="portfolio-img">
                            <div class="portfolio-info">
                                <h3>Tech Solutions</h3>
                                <p>IT企業のコーポレートサイト。信頼感と先進性を表現。</p>
                            </div>
                        </div>
                        <div class="portfolio-item">
                            <img src="assets/portfolio-3.png" alt="Cafe Website" class="portfolio-img">
                            <div class="portfolio-info">
                                <h3>Cafe The Daily Bean</h3>
                                <p>カフェの公式サイト。温かみのある配色とシズル感のある写真を使用。</p>
                            </div>
                        </div>
                        <div class="portfolio-item">
                            <img src="assets/portfolio-1.png" alt="Beauty Salon" class="portfolio-img">
                            <div class="portfolio-info">
                                <h3>Luxe Beauty Salon</h3>
                                <p>美容室の予約サイト。エレガントな雰囲気とスムーズな予約導線。</p>
                            </div>
                        </div>
                        <div class="portfolio-item">
                            <img src="assets/portfolio-2.png" alt="SaaS Startup" class="portfolio-img">
                            <div class="portfolio-info">
                                <h3>Cloud Sync SaaS</h3>
                                <p>スタートアップのLP。アニメーションを多用し、機能の革新性を強調。</p>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="slider-btn next" aria-label="次の実績へ">→</button>
            </div>
            <div class="slider-dots"></div>
        </div>
    </main>

    <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-logo">AI Studio g</div>
                <nav class="footer-nav">
                    <ul>
                        <li><a href="index.html">ホーム</a></li>
                        <li><a href="company.html">会社概要</a></li>
                        <li><a href="privacy.html">プライバシーポリシー</a></li>
                    </ul>
                </nav>
                <p class="copyright">&copy; 2024 AI Studio g. All Rights Reserved.</p>
            </div>
        </div>
    </footer>
</body>
</html>
"@
[System.IO.File]::WriteAllText("$PWD/portfolio.html", $portfolioContent, $utf8)

# process.html
$processContent = @"
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>制作の流れ・仕組み | AI Studio g</title>
    <meta name="description" content="お問い合わせから最短3日で公開可能。AI Studio gのシンプルでスピーディーな制作フロー（ヒアリング、AI生成、公開）をご説明します。">
    <meta property="og:title" content="制作の流れ・仕組み | AI Studio g">
    <meta property="og:description" content="3ステップでWebサイトが完成。ヒアリングから公開までの流れ。">
    <meta property="og:type" content="article">
    <meta property="og:image" content="assets/process-1.png">
    <link rel="icon" href="assets/logo.png" type="image/png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@400;500;700&family=Outfit:wght@400;600;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <script src="script.js" defer></script>
</head>

<body>
    <div class="background-blobs">
        <div class="blob blob-1"></div>
        <div class="blob blob-2"></div>
        <div class="blob blob-3"></div>
    </div>

    <header class="header">
        <div class="container header-container">
            <a href="index.html" class="logo">
                <img src="assets/logo.png" alt="AI Studio g" class="logo-icon">
                <span><span class="logo-text">AI</span> Studio g</span>
            </a>
            <nav class="nav">
                <ul class="nav-list">
                    <li><a href="features.html">特徴</a></li>
                    <li><a href="portfolio.html">制作実績</a></li>
                    <li><a href="process.html" class="active">仕組み</a></li>
                    <li><a href="pricing.html">料金</a></li>
                    <li><a href="demo.html">デモ(β)</a></li>
                    <li><a href="news.html">お知らせ</a></li>
                    <li><a href="faq.html">FAQ</a></li>
                    <li><a href="contact.html" class="btn btn-primary sm">お問い合わせ</a></li>
                </ul>
            </nav>
            <button class="mobile-menu-toggle" aria-label="メニューを開く">
                <span></span>
                <span></span>
                <span></span>
            </button>
        </div>
    </header>

    <main class="page-main section">
        <div class="container">
            <div class="section-header center">
                <h1 class="page-title">How it Works</h1>
                <p class="section-subtitle">完成までの3ステップ</p>
            </div>
            <div class="process-steps">
                <div class="step">
                    <div class="step-image-wrapper glass">
                        <img src="assets/process-1.png" alt="Hearing" class="step-image">
                    </div>
                    <div class="step-number">01</div>
                    <h3>ヒアリング</h3>
                    <p>サイトの目的やイメージを簡単なフォームに入力するだけ。<br>AIが最適な構成を考案します。</p>
                </div>
                <div class="step">
                    <div class="step-image-wrapper glass">
                        <img src="assets/process-2.png" alt="AI Generation" class="step-image">
                    </div>
                    <div class="step-number">02</div>
                    <h3>AI生成 & 調整</h3>
                    <p>AIがベースとなるデザインとコンテンツを生成。<br>専門スタッフが細部を調整し仕上げます。</p>
                </div>
                <div class="step">
                    <div class="step-image-wrapper glass">
                        <img src="assets/process-3.png" alt="Publish" class="step-image">
                    </div>
                    <div class="step-number">03</div>
                    <h3>公開</h3>
                    <p>ご確認後、すぐにWeb上に公開。<br>更新や運用もAIサポートで楽々。</p>
                </div>
            </div>
        </div>
    </main>

    <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-logo">AI Studio g</div>
                <nav class="footer-nav">
                    <ul>
                        <li><a href="index.html">ホーム</a></li>
                        <li><a href="company.html">会社概要</a></li>
                        <li><a href="privacy.html">プライバシーポリシー</a></li>
                    </ul>
                </nav>
                <p class="copyright">&copy; 2024 AI Studio g. All Rights Reserved.</p>
            </div>
        </div>
    </footer>
</body>
</html>
"@
[System.IO.File]::WriteAllText("$PWD/process.html", $processContent, $utf8)
Write-Host "Part 1 restored."
