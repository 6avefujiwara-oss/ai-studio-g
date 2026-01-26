
$utf8 = [System.Text.Encoding]::UTF8

# faq.html
$faqContent = @"
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>よくある質問 | AI Studio g</title>
    <meta name="description" content="AI Studio gに関するよくある質問（FAQ）。制作期間、修正対応、ドメイン・サーバーについてなど、お客様の疑問にお答えします。">
    <meta property="og:title" content="よくある質問 | AI Studio g">
    <meta property="og:description" content="AI Web制作に関する疑問を解決します。">
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
                    <li><a href="features.html">特徴</a></li>
                    <li><a href="portfolio.html">制作実績</a></li>
                    <li><a href="process.html">仕組み</a></li>
                    <li><a href="pricing.html">料金</a></li>
                    <li><a href="demo.html">デモ(β)</a></li>
                    <li><a href="news.html">お知らせ</a></li>
                    <li><a href="faq.html" class="active">FAQ</a></li>
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
                <h1 class="page-title">FAQ</h1>
                <p class="section-subtitle">よくある質問</p>
            </div>
            <div class="faq-list glass">
                <div class="faq-item">
                    <button class="faq-question" aria-expanded="false">
                        制作期間はどのくらいですか？
                        <span class="icon">+</span>
                    </button>
                    <div class="faq-answer">
                        <p>Lightプランであれば、資料をいただいてから最短3営業日で納品可能です。Standardプランの場合は約1週間が目安となります。</p>
                    </div>
                </div>
                <div class="faq-item">
                    <button class="faq-question" aria-expanded="false">
                        納品後の修正は可能ですか？
                        <span class="icon">+</span>
                    </button>
                    <div class="faq-answer">
                        <p>はい。納品後1ヶ月間は軽微な修正を無料で承ります。それ以降は別途保守サポートをご利用ください。</p>
                    </div>
                </div>
                <div class="faq-item">
                    <button class="faq-question" aria-expanded="false">
                        ドメインやサーバーは自分で用意する必要がありますか？
                        <span class="icon">+</span>
                    </button>
                    <div class="faq-answer">
                        <p>はい。基本的にはお客様にご用意いただいておりますが、取得代行や設定サポートも行っておりますのでご安心ください。</p>
                    </div>
                </div>
                <div class="faq-item">
                    <button class="faq-question" aria-expanded="false">
                        AIが作るとデザインは似たり寄ったりになりませんか？
                        <span class="icon">+</span>
                    </button>
                    <div class="faq-answer">
                        <p>ご安心ください。お客様のヒアリング内容に基づき、プロのデザイナーがAI生成物を調整・仕上げを行うため、オリジナリティのあるデザインを提供します。</p>
                    </div>
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
[System.IO.File]::WriteAllText("$PWD/faq.html", $faqContent, $utf8)

# company.html
$companyContent = @"
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>会社概要 | AI Studio g</title>
    <meta name="description" content="AI Studio gの会社概要。AIを活用したウェブサイト制作、デジタルマーケティング支援などを通じて、お客様のビジネスに貢献します。">
    <meta property="og:title" content="会社概要 | AI Studio g">
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

    <main class="page-main section">
        <div class="container glass" style="padding: 3rem;">
            <h1 class="page-title">会社概要</h1>
            <div class="company-info">
                <table class="company-table">
                    <tr>
                        <th>屋号</th>
                        <td>AI Studio g (エーアイデザインジー)</td>
                    </tr>
                    <tr>
                        <th>代表者</th>
                        <td>Hide (Tech Geezer)</td>
                    </tr>
                    <tr>
                        <th>設立</th>
                        <td>2024年1月</td>
                    </tr>
                    <tr>
                        <th>事業内容</th>
                        <td>
                            AIを活用したウェブサイト制作<br>
                            デジタルマーケティング支援<br>
                            AI導入コンサルティング
                        </td>
                    </tr>
                    <tr>
                        <th>所在地</th>
                        <td>京都市山科区</td>
                    </tr>
                </table>
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
[System.IO.File]::WriteAllText("$PWD/company.html", $companyContent, $utf8)

# contact.html
$contactContent = @"
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>お問い合わせ | AI Studio g</title>
    <meta name="description" content="Web制作のご相談、お見積もりはこちら。AI Studio gへのお問い合わせページです。無料相談も承っております。">
    <meta property="og:title" content="お問い合わせ | AI Studio g">
    <meta property="og:description" content="まずは無料相談から。あなたのビジネスに最適なプランをご提案します。">
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
                    <li><a href="features.html">特徴</a></li>
                    <li><a href="portfolio.html">制作実績</a></li>
                    <li><a href="process.html">仕組み</a></li>
                    <li><a href="pricing.html">料金</a></li>
                    <li><a href="demo.html">デモ(β)</a></li>
                    <li><a href="news.html">お知らせ</a></li>
                    <li><a href="faq.html">FAQ</a></li>
                    <li><a href="contact.html" class="active btn btn-primary sm">お問い合わせ</a></li>
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
                <h1 class="page-title">Contact</h1>
                <p class="section-subtitle">お問い合わせ</p>
            </div>
            <div class="contact-form glass">
                <form action="#" method="POST">
                    <div class="form-group">
                        <label for="name">お名前</label>
                        <input type="text" id="name" name="name" placeholder="山田 太郎" required>
                    </div>
                    <div class="form-group">
                        <label for="email">メールアドレス</label>
                        <input type="email" id="email" name="email" placeholder="example@gmail.com" required>
                    </div>
                    <div class="form-group">
                        <label for="plan">ご検討中のプラン</label>
                        <select id="plan" name="plan">
                            <option value="">選択してください</option>
                            <option value="light">Light Plan</option>
                            <option value="standard">Standard Plan</option>
                            <option value="pro">Pro Plan</option>
                            <option value="other">その他・相談したい</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="message">お問い合わせ内容</label>
                        <textarea id="message" name="message" rows="5" placeholder="ご質問やご希望をご記入ください" required></textarea>
                    </div>
                    <div class="form-footer center">
                        <button type="submit" class="btn btn-primary">送信する</button>
                    </div>
                </form>
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
[System.IO.File]::WriteAllText("$PWD/contact.html", $contactContent, $utf8)

# privacy.html
$privacyContent = @"
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>プライバシーポリシー | AI Studio g</title>
    <meta name="description" content="AI Studio gのプライバシーポリシー（個人情報保護方針）。お客様の個人情報の取り扱い、収集目的、第三者提供などについて定めています。">
    <meta property="og:title" content="プライバシーポリシー | AI Studio g">
    <meta property="og:type" content="article">
    <meta property="og:image" content="assets/hero-image.png">
    <link rel="icon" href="assets/logo.png" type="image/png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@400;500;700&family=Outfit:wght@400;600;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
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
        </div>
    </header>

    <main class="page-main section">
        <div class="container glass" style="padding: 3rem;">
            <h1 class="page-title">プライバシーポリシー</h1>
            <div class="policy-content">
                <h2>1. 個人情報の定義</h2>
                <p>「個人情報」とは、個人情報保護法にいう「個人情報」を指すものとし、生存する個人に関する情報であって、当該情報に含まれる氏名、生年月日、住所、電話番号、連絡先その他の記述等により特定の個人を識別できる情報を指します。</p>

                <h2>2. 個人情報の収集方法</h2>
                <p>当社は、ユーザーが利用登録をする際に氏名、生年月日、住所、電話番号、メールアドレス、銀行口座番号、クレジットカード番号などの個人情報をお尋ねすることがあります。</p>

                <h2>3. 個人情報の利用目的</h2>
                <p>当社が個人情報を収集・利用する目的は、以下のとおりです。</p>
                <ul>
                    <li>当社サービスの提供・運営のため</li>
                    <li>ユーザーからのお問い合わせに回答するため</li>
                    <li>重要なお知らせなど必要に応じたご連絡のため</li>
                </ul>

                <h2>4. 個人情報の第三者提供</h2>
                <p>当社は、次に掲げる場合を除いて、あらかじめユーザーの同意を得ることなく、第三者に個人情報を提供することはありません。</p>

                <h2>5. お問い合わせ窓口</h2>
                <p>本ポリシーに関するお問い合わせは、お問い合わせフォームよりお願いいたします。</p>
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
[System.IO.File]::WriteAllText("$PWD/privacy.html", $privacyContent, $utf8)

# script.js
$scriptContent = @"
document.addEventListener('DOMContentLoaded', () => {
    // Header Scroll Effect
    const header = document.querySelector('.header');

    window.addEventListener('scroll', () => {
        if (window.scrollY > 50) {
            header.classList.add('scrolled');
        } else {
            header.classList.remove('scrolled');
        }
    });

    // Mobile Menu Toggle
    const mobileBtn = document.querySelector('.mobile-menu-toggle');
    const nav = document.querySelector('.nav');

    if (mobileBtn) {
        mobileBtn.addEventListener('click', () => {
            nav.style.display = nav.style.display === 'block' ? 'none' : 'block';

            // Add background to nav for mobile
            if (nav.style.display === 'block') {
                nav.style.position = 'absolute';
                nav.style.top = '100%';
                nav.style.left = '0';
                nav.style.width = '100%';
                nav.style.background = 'rgba(5, 5, 16, 0.95)';
                nav.style.padding = '2rem';
                nav.style.textAlign = 'center';
                nav.style.backdropFilter = 'blur(10px)';

                const ul = nav.querySelector('ul');
                ul.style.flexDirection = 'column';
                ul.style.gap = '1.5rem';

                const secondaryBtn = nav.querySelector('.btn-secondary');
                if (secondaryBtn) secondaryBtn.style.marginLeft = '0';
            }
        });
    }

    // FAQ Accordion
    document.querySelectorAll('.faq-question').forEach(button => {
        button.addEventListener('click', () => {
            const answer = button.nextElementSibling;
            const expanded = button.getAttribute('aria-expanded') === 'true';

            // Close all other FAQs
            document.querySelectorAll('.faq-question').forEach(otherButton => {
                if (otherButton !== button) {
                    otherButton.setAttribute('aria-expanded', 'false');
                    otherButton.nextElementSibling.style.maxHeight = null;
                }
            });

            // Toggle current FAQ
            button.setAttribute('aria-expanded', !expanded);
            if (!expanded) {
                answer.style.maxHeight = answer.scrollHeight + 'px';
            } else {
                answer.style.maxHeight = null;
            }
        });
    });

    // smooth scroll for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            const targetId = this.getAttribute('href');
            if (targetId === '#') return;

            const targetElement = document.querySelector(targetId);
            if (targetElement) {
                if (window.innerWidth <= 768 && nav) {
                    nav.style.display = 'none';
                }

                const headerOffset = 80;
                const elementPosition = targetElement.getBoundingClientRect().top;
                const offsetPosition = elementPosition + window.pageYOffset - headerOffset;

                window.scrollTo({
                    top: offsetPosition,
                    behavior: 'smooth'
                });
            }
        });
    });

    // Portfolio Slider
    const slider = document.querySelector('.portfolio-slider');
    if (slider) {
        const prevBtn = document.querySelector('.slider-btn.prev');
        const nextBtn = document.querySelector('.slider-btn.next');
        const dotsContainer = document.querySelector('.slider-dots');
        let items = document.querySelectorAll('.portfolio-item');
        let currentIndex = 0;
        let itemsPerView = 1;

        function updateItemsPerView() {
            if (window.innerWidth >= 1024) itemsPerView = 3;
            else if (window.innerWidth >= 768) itemsPerView = 2;
            else itemsPerView = 1;
            updateSlider();
            createDots();
        }

        function updateSlider() {
            const totalItems = items.length;
            const maxIndex = Math.max(0, totalItems - itemsPerView);

            if (currentIndex > maxIndex) currentIndex = maxIndex;
            if (currentIndex < 0) currentIndex = 0;

            const translateX = -(currentIndex * (100 / itemsPerView));
            slider.style.transform = `translateX(`${translateX}%)`;

            document.querySelectorAll('.slider-dot').forEach((dot, index) => {
                if (index === currentIndex) dot.classList.add('active');
                else dot.classList.remove('active');
            });

            if (prevBtn) {
                prevBtn.style.opacity = currentIndex === 0 ? '0.5' : '1';
                prevBtn.style.pointerEvents = currentIndex === 0 ? 'none' : 'auto';
            }

            if (nextBtn) {
                nextBtn.style.opacity = currentIndex === maxIndex ? '0.5' : '1';
                nextBtn.style.pointerEvents = currentIndex === maxIndex ? 'none' : 'auto';
            }
        }

        function createDots() {
            if (!dotsContainer) return;
            dotsContainer.innerHTML = '';
            const totalItems = items.length;
            const maxIndex = Math.max(0, totalItems - itemsPerView);

            for (let i = 0; i <= maxIndex; i++) {
                const dot = document.createElement('div');
                dot.classList.add('slider-dot');
                if (i === currentIndex) dot.classList.add('active');
                dot.addEventListener('click', () => {
                    currentIndex = i;
                    updateSlider();
                });
                dotsContainer.appendChild(dot);
            }
        }

        if (prevBtn) {
            prevBtn.addEventListener('click', () => {
                if (currentIndex > 0) {
                    currentIndex--;
                    updateSlider();
                }
            });
        }

        if (nextBtn) {
            nextBtn.addEventListener('click', () => {
                const totalItems = items.length;
                const maxIndex = totalItems - itemsPerView;
                if (currentIndex < maxIndex) {
                    currentIndex++;
                    updateSlider();
                }
            });
        }

        window.addEventListener('resize', updateItemsPerView);
        updateItemsPerView();
    }

    // Contact Form Validation
    const contactForm = document.querySelector('.contact-form form');
    if (contactForm) {
        contactForm.addEventListener('submit', (e) => {
            e.preventDefault();
            let isValid = true;

            document.querySelectorAll('.error-message').forEach(el => el.remove());
            document.querySelectorAll('.error').forEach(el => el.classList.remove('error'));

            // Name
            const nameInput = document.getElementById('name');
            if (nameInput && !nameInput.value.trim()) {
                showError(nameInput, 'お名前を入力してください。');
                isValid = false;
            } else if (nameInput) {
                showSuccess(nameInput);
            }

            // Email
            const emailInput = document.getElementById('email');
            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (emailInput && !emailInput.value.trim()) {
                showError(emailInput, 'メールアドレスを入力してください。');
                isValid = false;
            } else if (emailInput && !emailPattern.test(emailInput.value)) {
                showError(emailInput, '正しいメールアドレスを入力してください。');
                isValid = false;
            } else if (emailInput) {
                showSuccess(emailInput);
            }

            // Plan
            const planSelect = document.getElementById('plan');
            if (planSelect && !planSelect.value) {
                showError(planSelect, 'プランを選択してください。');
                isValid = false;
            } else if (planSelect) {
                showSuccess(planSelect);
            }

            // Message
            const messageInput = document.getElementById('message');
            if (messageInput && !messageInput.value.trim()) {
                showError(messageInput, 'お問い合わせ内容を入力してください。');
                isValid = false;
            } else if (messageInput) {
                showSuccess(messageInput);
            }

            if (isValid) {
                alert('お問い合わせありがとうございます。送信が完了しました。（デモ）');
                contactForm.reset();
                document.querySelectorAll('.success').forEach(el => el.classList.remove('success'));
            }
        });

        function showError(input, message) {
            input.classList.add('error');
            const errorDiv = document.createElement('span');
            errorDiv.className = 'error-message';
            errorDiv.innerText = message;
            input.parentElement.appendChild(errorDiv);
        }

        function showSuccess(input) {
            input.classList.add('success');
        }
    }
});
"@
[System.IO.File]::WriteAllText("$PWD/script.js", $scriptContent.Replace("` + '$' + `", "$"), $utf8)
Write-Host "Part 2 restored."
