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
            slider.style.transform = `translateX(${translateX}%)`;

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
