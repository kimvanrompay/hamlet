
  const teleprompter = document.querySelector('.teleprompter');
  const text = teleprompter.querySelector('.text');
  const highlight = teleprompter.querySelector('.highlight');
  let scrollPosition = 0;

  teleprompter.addEventListener('wheel', e => {
    e.preventDefault();
    const direction = e.deltaY > 0 ? 1 : -1;
    scrollPosition -= direction * 10;
    text.style.transform = `translateY(${scrollPosition}%)`;
    highlight.style.top = `${scrollPosition}%`;
  });
