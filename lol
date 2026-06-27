<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>$20k/mo AI Automation Roadmap</title>
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet" />
  <style>
    *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

    body {
      background: #09090b;
      color: #fafafa;
      font-family: 'Inter', system-ui, sans-serif;
      min-height: 100vh;
      padding: 24px 16px 60px;
    }

    .container { max-width: 640px; margin: 0 auto; }

    /* Header */
    .badge {
      display: inline-block;
      background: linear-gradient(135deg, #6366f1, #ec4899);
      border-radius: 8px;
      padding: 4px 12px;
      font-size: 11px;
      font-weight: 700;
      letter-spacing: 0.1em;
      text-transform: uppercase;
      margin-bottom: 12px;
      color: #fff;
    }
    h1 { font-size: 28px; font-weight: 800; line-height: 1.2; margin-bottom: 6px; }
    .subtitle { color: #a1a1aa; font-size: 14px; margin-bottom: 32px; }

    /* Progress */
    .progress-bar-wrap { margin-bottom: 32px; }
    .progress-labels { display: flex; justify-content: space-between; margin-bottom: 8px; font-size: 13px; }
    .progress-labels span:first-child { color: #a1a1aa; }
    .progress-labels span:last-child { color: #a78bfa; font-weight: 700; }
    .progress-track { background: #27272a; border-radius: 99px; height: 8px; overflow: hidden; }
    .progress-fill {
      height: 100%;
      background: linear-gradient(90deg, #6366f1, #ec4899);
      border-radius: 99px;
      transition: width 0.4s ease;
    }

    /* Phase card */
    .phase {
      margin-bottom: 14px;
      border: 1px solid #27272a;
      border-radius: 14px;
      overflow: hidden;
      background: #111113;
    }
    .phase-header {
      width: 100%;
      background: none;
      border: none;
      cursor: pointer;
      padding: 16px 20px;
      display: flex;
      align-items: center;
      gap: 14px;
      text-align: left;
      color: #fafafa;
    }
    .phase-header:hover { background: #18181b; }
    .phase-icon {
      width: 36px; height: 36px;
      border-radius: 10px;
      display: flex; align-items: center; justify-content: center;
      font-size: 14px; font-weight: 800;
      flex-shrink: 0;
    }
    .phase-meta { flex: 1; }
    .phase-title { font-size: 15px; font-weight: 700; }
    .phase-sub { font-size: 12px; color: #71717a; margin-top: 2px; }
    .phase-right { display: flex; align-items: center; gap: 10px; }
    .phase-count { font-size: 12px; font-weight: 600; }
    .chevron { color: #52525b; font-size: 16px; transition: transform 0.2s; display: inline-block; }
    .chevron.open { transform: rotate(180deg); }

    /* Items */
    .items { border-top: 1px solid #1f1f23; padding: 8px 0 12px; display: none; }
    .items.open { display: block; }
    .item {
      display: flex;
      align-items: flex-start;
      gap: 12px;
      padding: 10px 20px;
      cursor: pointer;
      transition: background 0.15s;
    }
    .item:hover { background: #18181b; }
    .checkbox {
      width: 20px; height: 20px;
      border-radius: 6px;
      border: 1.5px solid #3f3f46;
      background: transparent;
      display: flex; align-items: center; justify-content: center;
      flex-shrink: 0;
      margin-top: 2px;
      transition: all 0.15s;
    }
    .checkbox.checked { border: none; }
    .checkbox svg { display: none; }
    .checkbox.checked svg { display: block; }
    .item-text {
      font-size: 14px;
      color: #d4d4d8;
      line-height: 1.5;
      transition: all 0.15s;
    }
    .item-text.done { color: #52525b; text-decoration: line-through; }

    /* Revenue box */
    .revenue-box {
      margin-top: 24px;
      padding: 20px;
      background: linear-gradient(135deg, rgba(99,102,241,0.08), rgba(236,72,153,0.08));
      border: 1px solid rgba(99,102,241,0.2);
      border-radius: 14px;
    }
    .revenue-label {
      font-size: 11px; color: #a78bfa; font-weight: 700;
      text-transform: uppercase; letter-spacing: 0.08em; margin-bottom: 10px;
    }
    .revenue-line { font-size: 14px; color: #d4d4d8; line-height: 1.9; }
    .revenue-line .accent1 { color: #a78bfa; font-weight: 700; }
    .revenue-line .accent2 { color: #ec4899; font-weight: 700; }
    .revenue-line .accent3 { color: #fafafa; font-weight: 700; }

    /* Share bar */
    .share-bar {
      position: fixed;
      bottom: 0; left: 0; right: 0;
      background: #111113;
      border-top: 1px solid #27272a;
      padding: 12px 20px;
      display: flex;
      gap: 10px;
      align-items: center;
      z-index: 100;
    }
    .share-url {
      flex: 1;
      background: #18181b;
      border: 1px solid #27272a;
      border-radius: 8px;
      padding: 8px 12px;
      font-size: 13px;
      color: #71717a;
      font-family: 'Inter', monospace;
      white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
    }
    .btn {
      padding: 8px 18px;
      border-radius: 8px;
      font-size: 13px;
      font-weight: 700;
      cursor: pointer;
      border: none;
      white-space: nowrap;
      transition: opacity 0.15s;
    }
    .btn:hover { opacity: 0.85; }
    .btn-primary {
      background: linear-gradient(135deg, #6366f1, #a855f7);
      color: #fff;
    }
    .btn-copy {
      background: #27272a;
      color: #d4d4d8;
    }

    /* Toast */
    .toast {
      position: fixed;
      top: 20px; left: 50%; transform: translateX(-50%);
      background: #22c55e;
      color: #fff;
      font-size: 13px;
      font-weight: 600;
      padding: 10px 20px;
      border-radius: 99px;
      opacity: 0;
      pointer-events: none;
      transition: opacity 0.3s;
      z-index: 200;
      white-space: nowrap;
    }
    .toast.show { opacity: 1; }

    @media (max-width: 480px) {
      h1 { font-size: 22px; }
      .share-url { display: none; }
    }
  </style>
</head>
<body>
<div class="container">

  <div class="badge">AI Automation Agency</div>
  <h1>Your $20k/mo Roadmap</h1>
  <p class="subtitle">Check off each step — save your link to sync across devices</p>

  <div class="progress-bar-wrap">
    <div class="progress-labels">
      <span id="progress-text">0 of 37 completed</span>
      <span id="progress-pct">0%</span>
    </div>
    <div class="progress-track">
      <div class="progress-fill" id="progress-fill" style="width:0%"></div>
    </div>
  </div>

  <div id="phases"></div>

  <div class="revenue-box">
    <div class="revenue-label">Revenue Formula</div>
    <div class="revenue-line">
      5 clients × $2k setup = <span class="accent1">$10k</span> upfront<br/>
      8 retainers × $1.5k/mo = <span class="accent2">$12k</span> recurring<br/>
      <span class="accent3">Total: $20k+/mo ✓</span>
    </div>
  </div>

</div>

<!-- Sticky share bar -->
<div class="share-bar">
  <div class="share-url" id="share-url">Save your progress to get a shareable link</div>
  <button class="btn btn-primary" onclick="saveProgress()">💾 Save & Share</button>
  <button class="btn btn-copy" onclick="copyLink()" id="copy-btn" style="display:none">📋 Copy</button>
</div>

<div class="toast" id="toast">✓ Link copied to clipboard!</div>

<script>
const PHASES = [
  {
    id: 1, title: "Foundation", sub: "Weeks 1–2", color: "#6366f1",
    items: [
      "Set up n8n locally (free, open source at n8n.io)",
      "Get OpenAI API key + Claude API key (anthropic.com)",
      "Learn n8n basics — connect 2 apps, trigger a workflow",
      "Build demo #1: AI email sorter / auto-responder",
      "Build demo #2: Lead capture → CRM → personalized follow-up",
      "Build demo #3: Document/invoice processor with AI extraction",
      "Set up a GitHub to store your automation templates",
    ]
  },
  {
    id: 2, title: "Business Setup", sub: "Week 2–3", color: "#8b5cf6",
    items: [
      "Pick a niche (e.g. real estate agents, law firms, e-commerce)",
      "Choose a business name and buy a domain",
      "Set up a simple 1-page website (what you do + contact)",
      "Create a LinkedIn profile positioned as 'AI Automation Specialist'",
      "Write your core offer: setup fee + monthly retainer pricing",
      "Set up Stripe to accept payments",
      "Create a simple proposal/contract template",
    ]
  },
  {
    id: 3, title: "First Client", sub: "Weeks 3–5", color: "#a855f7",
    items: [
      "Reach out to 20 businesses per day on LinkedIn",
      "Offer a free 'automation audit' to get on calls",
      "Land 1 free or discounted client for a case study",
      "Deliver outstanding results (document everything)",
      "Ask for a written testimonial + referrals",
      "Turn that client into a monthly retainer ($500–2k/mo)",
    ]
  },
  {
    id: 4, title: "Scale to $20k", sub: "Months 2–6", color: "#d946ef",
    items: [
      "Charge full price from client #2 onward ($2–5k setup)",
      "Add monthly maintenance retainers to every client ($1–2k/mo)",
      "Build a library of reusable automation templates",
      "Post weekly content on LinkedIn showing your builds",
      "Hire a VA or contractor to handle delivery as you grow",
      "Reach 7–10 retainer clients = $10–20k/mo recurring",
      "Add project work on top of retainers to hit $20k+",
    ]
  },
  {
    id: 5, title: "Tools to Master", sub: "Ongoing", color: "#ec4899",
    items: [
      "n8n — primary automation builder (n8n.io)",
      "Make (formerly Integromat) — alternative to n8n",
      "OpenAI API — GPT-4 for AI logic inside workflows",
      "Claude API — great for document analysis & writing",
      "Python — for custom scripts and heavier builds",
      "Airtable — client data layer you'll connect to often",
      "Zapier — simpler automations, easier to sell to clients",
    ]
  }
];

// Build total item index
let allItems = [];
PHASES.forEach((p, pi) => p.items.forEach((_, ii) => allItems.push(`${pi}-${ii}`)));
const TOTAL = allItems.length;

// State
let checked = {};
let openPhases = { 0: true };

// Load from URL hash on start
function loadFromHash() {
  const hash = window.location.hash.slice(1);
  if (!hash) return;
  try {
    const decoded = atob(hash);
    const ids = decoded.split(',').filter(Boolean);
    ids.forEach(id => { checked[id] = true; });
  } catch(e) {}
}

function encodeState() {
  const ids = Object.keys(checked).filter(k => checked[k]);
  if (!ids.length) return '';
  return btoa(ids.join(','));
}

function saveProgress() {
  const encoded = encodeState();
  const url = window.location.origin + window.location.pathname + (encoded ? '#' + encoded : '');
  window.history.replaceState(null, '', url);
  document.getElementById('share-url').textContent = url;
  document.getElementById('copy-btn').style.display = 'block';
  navigator.clipboard.writeText(url).then(() => showToast()).catch(() => {});
}

function copyLink() {
  const url = document.getElementById('share-url').textContent;
  navigator.clipboard.writeText(url).then(() => showToast()).catch(() => {});
}

function showToast() {
  const t = document.getElementById('toast');
  t.classList.add('show');
  setTimeout(() => t.classList.remove('show'), 2500);
}

function getCheckedCount() {
  return Object.values(checked).filter(Boolean).length;
}

function updateProgress() {
  const done = getCheckedCount();
  const pct = Math.round((done / TOTAL) * 100);
  document.getElementById('progress-text').textContent = `${done} of ${TOTAL} completed`;
  document.getElementById('progress-pct').textContent = `${pct}%`;
  document.getElementById('progress-fill').style.width = pct + '%';
}

function toggleItem(phaseIdx, itemIdx) {
  const key = `${phaseIdx}-${itemIdx}`;
  checked[key] = !checked[key];

  const cb = document.getElementById(`cb-${phaseIdx}-${itemIdx}`);
  const txt = document.getElementById(`txt-${phaseIdx}-${itemIdx}`);
  const phase = PHASES[phaseIdx];

  if (checked[key]) {
    cb.classList.add('checked');
    cb.style.background = phase.color;
    txt.classList.add('done');
  } else {
    cb.classList.remove('checked');
    cb.style.background = 'transparent';
    txt.classList.remove('done');
  }

  updatePhaseCount(phaseIdx);
  updateProgress();
}

function updatePhaseCount(phaseIdx) {
  const phase = PHASES[phaseIdx];
  const done = phase.items.filter((_, ii) => checked[`${phaseIdx}-${ii}`]).length;
  const el = document.getElementById(`count-${phaseIdx}`);
  el.textContent = `${done}/${phase.items.length}`;
  el.style.color = done === phase.items.length ? phase.color : '#52525b';
}

function togglePhase(phaseIdx) {
  openPhases[phaseIdx] = !openPhases[phaseIdx];
  const items = document.getElementById(`items-${phaseIdx}`);
  const chevron = document.getElementById(`chevron-${phaseIdx}`);
  if (openPhases[phaseIdx]) {
    items.classList.add('open');
    chevron.classList.add('open');
  } else {
    items.classList.remove('open');
    chevron.classList.remove('open');
  }
}

function render() {
  const container = document.getElementById('phases');
  container.innerHTML = '';

  PHASES.forEach((phase, pi) => {
    const isOpen = !!openPhases[pi];
    const doneCount = phase.items.filter((_, ii) => checked[`${pi}-${ii}`]).length;

    const phaseEl = document.createElement('div');
    phaseEl.className = 'phase';
    phaseEl.innerHTML = `
      <button class="phase-header" onclick="togglePhase(${pi})">
        <div class="phase-icon" style="background:${phase.color}22;border:1.5px solid ${phase.color}55;color:${phase.color}">
          ${phase.id}
        </div>
        <div class="phase-meta">
          <div class="phase-title">${phase.title}</div>
          <div class="phase-sub">${phase.sub}</div>
        </div>
        <div class="phase-right">
          <span class="phase-count" id="count-${pi}" style="color:${doneCount===phase.items.length?phase.color:'#52525b'}">${doneCount}/${phase.items.length}</span>
          <span class="chevron ${isOpen?'open':''}" id="chevron-${pi}">▾</span>
        </div>
      </button>
      <div class="items ${isOpen?'open':''}" id="items-${pi}">
        ${phase.items.map((text, ii) => {
          const key = `${pi}-${ii}`;
          const done = !!checked[key];
          return `
            <div class="item" onclick="toggleItem(${pi},${ii})">
              <div class="checkbox ${done?'checked':''}" id="cb-${pi}-${ii}" style="${done?'background:'+phase.color+';border:none':''}">
                <svg width="11" height="9" viewBox="0 0 11 9" fill="none">
                  <path d="M1 4L4 7L10 1" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
              </div>
              <span class="item-text ${done?'done':''}" id="txt-${pi}-${ii}">${text}</span>
            </div>
          `;
        }).join('')}
      </div>
    `;
    container.appendChild(phaseEl);
  });

  updateProgress();
}

loadFromHash();
render();
</script>
</body>
</html>
