// 少しでもスクロールされれば「ページトップボタン」が表示されるようにする
window.addEventListener('scroll', function () {
  const pagetop = document.getElementById('pageTop');

  if (window.pageYOffset > 0) {
    pagetop.style.opacity = '1';
    // 表示を滑らかにするために追加
    pagetop.style.transition = 'opacity 0.5s'
  } else {
    pagetop.style.opacity = '0';
  }
});

// ボタンを押すと、ページトップへスクロールする
const pageTop = document.getElementById('pageTop')

pageTop.addEventListener('click', function () {
  window.scrollTo({
    top: 0,
    behavior: 'smooth'
  });
});
