

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>Success Gif Button (one-time)</title>
<style>
  :root{
    --orange: #ff7a00;
    --white: #ffffff;
    --text: #111;
    --shadow: rgba(0,0,0,0.12);
  }

  body{
    font-family: Inter, system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial;
    display:flex;
    align-items:center;
    justify-content:center;
    min-height:100vh;
    background: #f7f7f8;
    margin:0;
  }

  /* Button container */
  .btn-success {
    display:inline-flex;
    align-items:center;
    gap:14px;
    padding:12px 20px;
    background: var(--orange);
    color:var(--white);
    border-radius:999px; /* pill-shaped */
    border: none;
    cursor: pointer;
    box-shadow: 0 6px 18px var(--shadow);
    user-select: none;
    transform-origin: center;
    transition: transform .12s ease;
  }
  .btn-success:active{ transform: scale(.98); }

  /* White circular icon inside button */
  .icon-wrap {
    width:44px;
    height:44px;
    min-width:44px;
    min-height:44px;
    border-radius:50%;
    background: var(--white);
    display:flex;
    align-items:center;
    justify-content:center;
    box-shadow: 0 4px 10px rgba(0,0,0,0.08) inset;
  }

  /* SVG sizing */
  .icon-svg{ width:24px; height:24px; display:block; }

  /* Hidden check path initially (dash offset equals length) */
  .check {
    stroke: var(--orange);
    stroke-width:3;
    stroke-linecap:round;
    stroke-linejoin:round;
    fill: none;
    stroke-dasharray: 48; /* approximate length */
    stroke-dashoffset: 48;
    transition: none;
  }

  /* play animation once */
  .play .check {
    animation: drawCheck 700ms ease forwards;
    animation-delay: 200ms;
  }

  @keyframes drawCheck {
    from { stroke-dashoffset: 48; }
    to   { stroke-dashoffset: 0; }
  }

  /* Small tick bounce of the white circle when completed */
  .play .icon-wrap {
    animation: pop 850ms cubic-bezier(.2,.9,.3,1) forwards;
  }
  @keyframes pop {
    0%   { transform: scale(1); }
    40%  { transform: scale(1.12); }
    70%  { transform: scale(.98); }
    100% { transform: scale(1); }
  }

  /* Message area (hidden until finished) */
  .msg {
    font-size:14px;
    color: #fff;
    opacity:0;
    transform: translateY(6px);
    transition: opacity 240ms ease, transform 260ms ease;
    white-space:nowrap;
  }
  .complete .msg {
    opacity:1;
    transform: translateY(0);
  }

  /* Accessibility focus */
  .btn-success:focus { outline: 3px solid rgba(255,255,255,0.25); }

  /* Small screen scaling */
  @media (max-width:420px){
    .btn-success{ padding:10px 14px; gap:10px; }
    .icon-wrap{ width:40px; height:40px; min-width:40px; }
  }
</style>
</head>
<body>

<!-- Button -->
<button id="successBtn" class="btn-success" aria-live="polite" aria-pressed="false">
  <span class="icon-wrap" aria-hidden="true">
    <!-- SVG check icon -->
    <svg class="icon-svg" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="success">
      <path class="check" d="M4.5 12.2l4.3 4.3L19.2 6.3"></path>
    </svg>
  </span>

  <span class="msg">Your data uploaded successfully.</span>
</button>

<script>
  (function(){
    const btn = document.getElementById('successBtn');
    let played = false;

    function playOnce(){
      if (played) return;
      played = true;

      // Add play class to animate check and pop
      btn.classList.add('play');

      // After total animation finishes, mark as complete so message fades in
      const totalMs = 200 + 700 + 150; // delay + draw duration + small buffer
      setTimeout(() => {
        btn.classList.add('complete');
        btn.setAttribute('aria-pressed', 'true');
      }, totalMs);
    }

    // Auto-play once on page load
    window.addEventListener('load', () => {
      // slight delay so user sees button before animation
      setTimeout(playOnce, 350);
    });

    // Also allow manual click to trigger if not already played
    btn.addEventListener('click', () => {
      playOnce();
    });
  })();
</script>
</body>
</html>