<!--
  GitHub Profile README — Sumit Kumar Biswal
  Repo name must be exactly: sonubiswal   (README.md at repo root)

  Files used by this README:
    assets/header.svg                       hero banner (swapped by the time of day)
    assets/banners/*.svg                    the time-of-day banner variants
    assets/footer.svg                       animated wave footer
    .github/workflows/update-banner.yml     picks the banner for the current IST time
    .github/workflows/snake.yml             contribution snake
    .github/workflows/profile-3d.yml        3D contribution graph
-->

<div align="center">

<img src="assets/header.svg?v=1792519272" width="100%" alt="Sumit Kumar Biswal — AI & Automation Engineer in Training" />

<a href="https://github.com/sonubiswal">
  <img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=500&size=18&pause=1200&color=38BDF8&center=true&vCenter=true&width=640&height=40&lines=Forecasting+%E2%80%A2+Geospatial+%E2%80%A2+Deep+Learning;Build+it.+Measure+it.+Beat+the+baseline." alt="Forecasting, Geospatial, Deep Learning. Build it. Measure it. Beat the baseline." />
</a>

<br/>

<a href="https://github.com/sonubiswal?tab=followers"><img src="https://img.shields.io/github/followers/sonubiswal?label=Followers&style=flat-square&color=0ea5e9&labelColor=1e293b" alt="Followers" /></a>
<a href="https://github.com/sonubiswal?tab=repositories"><img src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fapi.github.com%2Fusers%2Fsonubiswal&query=%24.public_repos&label=Repositories&color=6366f1&labelColor=1e293b&style=flat-square" alt="Repositories" /></a>
<img src="https://api.visitorbadge.io/api/visitors?path=https%3A%2F%2Fgithub.com%2Fsonubiswal&label=Profile%20Views&countColor=%238b5cf6&labelColor=%231e293b&style=flat-square" alt="Profile views" />
<img src="https://img.shields.io/badge/Open%20to-Collaboration-22c55e?style=flat-square&labelColor=1e293b" alt="Open to collaboration" />

<br/><br/>

<a href="#about">About</a> &nbsp;·&nbsp;
<a href="#featured-projects">Projects</a> &nbsp;·&nbsp;
<a href="#skills">Skills</a> &nbsp;·&nbsp;
<a href="#education">Education</a> &nbsp;·&nbsp;
<a href="#github-activity">Activity</a> &nbsp;·&nbsp;
<a href="#the-banner-follows-the-sun">Banner</a> &nbsp;·&nbsp;
<a href="#contact">Contact</a>

</div>

<br/>

## About

I'm an AI & automation engineer in training, based in India, and I learn by **shipping**. Rather than stopping at a notebook, I take ideas all the way to working products: desktop applications, interactive maps, and models that grade their own accuracy.

My work sits at the intersection of **applied machine learning**, **geospatial tooling**, and **clean software architecture**. I care about the part most people skip: proving that a system actually beats a baseline.

> *Build it, measure it, prove it beats the baseline.*

**Currently focused on**

- **Forecast validation:** systems that score their own accuracy against baselines
- **Applied ML for real problems:** weather, routing, and environmental monitoring
- **Deep learning:** from-scratch implementations through to working pipelines

### How I work

<div align="center">

```mermaid
flowchart LR
    A([Real problem]) --> B[Build a<br/>working version]
    B --> C{{Measure vs.<br/>a baseline}}
    C -->|beats it| D([Ship + document])
    C -->|doesn't| B

    style A fill:#0ea5e9,color:#fff,stroke:none
    style B fill:#6366f1,color:#fff,stroke:none
    style C fill:#8b5cf6,color:#fff,stroke:none
    style D fill:#22c55e,color:#fff,stroke:none
```

</div>

<details>
<summary><b>Skill map</b></summary>

<br/>

<div align="center">

```mermaid
mindmap
  root((Sumit))
    Forecasting
      Multi-model ensembles
      Self-scoring accuracy
      Persistence and IFS baselines
    Geospatial
      Geocoding
      Road-network routing
      Interactive maps
    Machine Learning
      CS50 AI
      Deep Learning from scratch
      Object detection
    Reinforcement Learning
      Offline RL
      Groundwater audit
```

</div>

</details>

<br/>

## Experience

**AI/ML Intern** · National Aluminium Company Limited (NALCO)
*Jun 2025 – Jul 2025 · Damanjodi, Odisha*
- Engineered an edge-deployable YOLOv8 PPE detection system trained on 5,000+ industrial images, achieving 82% classification accuracy and reducing manual inspection overhead by ~30%.

**Full-Stack Developer Intern** · GIET University
*Jun 2024 – Jul 2024 · Gunpur, Odisha*
- Built a full-stack Library Management System (Python/Flask, SQL) featuring book search, checkout, and admin/inventory controls with optimized queries.

<br/>

## Featured Projects

### [SentinelVision](https://github.com/sonubiswal/sentinelvision)

*The model is about 20% of the work. The other 80% is association, rules, and operations.*

Per-worker PPE compliance from the cameras a site already owns. It binds every PPE observation to a **tracked worker**, applies a configurable policy, and only commits a violation after an **N-of-M temporal vote** (6 of 10 frames), so one blurry frame never raises an alert. Events are written to a **SHA-256 hash-chained audit trail** you can verify. Phase 2 is complete, with a Gradio demo, a CLI, and 289 weight-free tests at 96% coverage; the zone engine, audit store, and dashboard are on the roadmap.

`Python` · `YOLOv8` · `ByteTrack` · `OpenCV` · `Gradio`

[**View repository →**](https://github.com/sonubiswal/sentinelvision) &nbsp;·&nbsp; [**Live site →**](https://sentinelvision-sonubiswal.netlify.app)

<br/>

### [Weather Forecasting](https://github.com/sonubiswal/Weather-Forecasting)

*One forecast is a guess; an ensemble is evidence.*

A desktop app that queries four independent forecast models in parallel (ECMWF IFS, ECMWF AIFS, GFS, and ICON) and reports the **median with a confidence spread** instead of a single number. It grades its own accuracy against observed conditions and benchmarks against **persistence** and **IFS** baselines, so you can see exactly when the ensemble is worth trusting.

`Python` · `PySide6` · `Open-Meteo`

[**View repository →**](https://github.com/sonubiswal/Weather-Forecasting)

<br/>

### [EV Charging Finder](https://github.com/sonubiswal/EV-Charging-Finder)

*Range anxiety is a data problem, not a car problem.*

Enter a location in India and get the nearest EV charging station with a **real driving route** drawn on an interactive map: an actual road-network path, not a straight line. Includes a 3D landing page, a live demo, and a Python backend that geocodes, routes, and renders standalone HTML maps you can open or share anywhere.

`Python` · `Folium` · `geopy` · `OSRM` · `Leaflet`

[**View repository →**](https://github.com/sonubiswal/EV-Charging-Finder) &nbsp;·&nbsp; [**Live demo →**](https://sonubiswal.github.io/EV-Charging-Finder/)

<br/>

### [Offline RL: Groundwater Audit](https://github.com/sonubiswal/offline-rl-groundwater-audit)

*You can't run experiments on an aquifer.*

Applies **offline reinforcement learning** to groundwater monitoring and audit tasks, learning and evaluating policies purely from historical data with no online interaction. It turns logged records into decision-making policy, which is exactly the constraint real environmental monitoring operates under.

`Python` · `Reinforcement Learning` · `Offline RL`

[**View repository →**](https://github.com/sonubiswal/offline-rl-groundwater-audit)

<br/>

### Also built

| Project | Summary |
| :--- | :--- |
| [**DeepSkin**](https://github.com/sonubiswal/deepskin-skin-cancer-detection) | 7-class skin lesion classification on HAM10000. Benchmarked Custom CNN, MobileNetV2, and DenseNet121. `TensorFlow` `Keras` `Streamlit` |
| [**Nirmal — Digital Safai Mitra**](https://github.com/sonubiswal/nirmal-digital-safai-mitra) | Cross-platform Flutter & Firebase waste management app with live GPS tracking, bin locator, and smart complaints. `Flutter` `Firebase` `Google Maps` |
| [**YOLO Object Detection**](https://github.com/sonubiswal/yolo-object-detection) | A real-time detection pipeline on YOLO, covering training, inference, and evaluation. `Python` `OpenCV` `PyTorch` |
| [**StudyTrack**](https://github.com/sonubiswal/CS50x-Work) | Full-stack study session tracker, built as the CS50x final project. `Python` `Flask` `SQLite` `JavaScript` |

<br/>

## Skills

<div align="center">

<img src="https://skillicons.dev/icons?i=python,c,js,html,css,flask,qt,tensorflow,opencv,sklearn,numpy,pandas,git,github,linux,vscode&perline=16" alt="Tech stack" />

</div>

<br/>

| | |
| :--- | :--- |
| **Languages** | Python, C, SQL, JavaScript, HTML, CSS |
| **AI & Data** | TensorFlow, Keras, scikit-learn, NumPy, pandas, OpenCV, NLTK |
| **Apps & Web** | PySide6, Flask, Leaflet, Folium, SQLite, OpenStreetMap |
| **Tooling** | Git, GitHub, Linux, VS Code |

<br/>

## Education

| Program | What it covered |
| :--- | :--- |
| [**CS50 AI**](https://github.com/sonubiswal/CS50-AI-Work) | All 12 projects: search, knowledge, uncertainty, optimization, learning, neural networks, and NLP |
| [**Deep Learning Specialization**](https://github.com/sonubiswal/deep-learning-c1-neural-networks-and-deep-learning) | Neural networks from scratch: backpropagation, regularization, and optimization (DeepLearning.AI) |
| [**CS50x**](https://github.com/sonubiswal/CS50x-Work) | C and memory management, Python, SQL, and Flask, capped by a full-stack final project, *StudyTrack*, a study session tracker |

<br/>

## GitHub Activity

<div align="center">

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://github-readme-stats.vercel.app/api?username=sonubiswal&show_icons=true&include_all_commits=true&count_private=true&hide_border=true&rank_icon=github&title_color=38BDF8&icon_color=38BDF8&text_color=c9d1d9&bg_color=00000000" />
  <img height="170" alt="GitHub stats" src="https://github-readme-stats.vercel.app/api?username=sonubiswal&show_icons=true&include_all_commits=true&count_private=true&hide_border=true&rank_icon=github&title_color=0284c7&icon_color=0284c7&text_color=24292f&bg_color=00000000" />
</picture>
<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://github-readme-stats.vercel.app/api/top-langs/?username=sonubiswal&layout=compact&langs_count=8&hide_border=true&title_color=38BDF8&text_color=c9d1d9&bg_color=00000000" />
  <img height="170" alt="Top languages" src="https://github-readme-stats.vercel.app/api/top-langs/?username=sonubiswal&layout=compact&langs_count=8&hide_border=true&title_color=0284c7&text_color=24292f&bg_color=00000000" />
</picture>

<br/>

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://streak-stats.demolab.com?user=sonubiswal&theme=github-dark-blue&hide_border=true&background=00000000&card_width=800&date_format=j%20M%5B%20Y%5D" />
  <img width="800" alt="Contribution streak" src="https://streak-stats.demolab.com?user=sonubiswal&theme=default&hide_border=true&background=00000000&card_width=800&date_format=j%20M%5B%20Y%5D" />
</picture>

</div>

<details>
<summary><b>More activity</b> &nbsp;<sub>(contribution graph and snake)</sub></summary>

<br/>

<div align="center">

<!-- Appears after the profile-3d workflow runs once (Actions → GitHub-Profile-3D-Contrib → Run workflow) -->
<img src="profile-3d-contrib/profile-night-rainbow.svg" width="100%" alt="3D contribution graph" />

<br/><br/>

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/sonubiswal/sonubiswal/output/github-snake-dark.svg" />
  <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/sonubiswal/sonubiswal/output/github-snake.svg" />
  <img alt="Contribution snake animation" src="https://raw.githubusercontent.com/sonubiswal/sonubiswal/output/github-snake.svg" />
</picture>

</div>

</details>

<br/>

## The Banner Follows the Sun

The header at the top changes through nine scenes across the day, timed to India Standard Time, by a small GitHub Action. Each scene is a single hand-coded animated SVG.

<details>
<summary><b>See all nine scenes</b> &nbsp;<sub>(swapped automatically by IST time of day)</sub></summary>

<br/>

| 🌄 Dawn<br/><sub>4:30 – 6:30 AM</sub> | 🌅 Sunrise<br/><sub>6:30 – 9:30 AM</sub> | 🌤️ Morning<br/><sub>9:30 AM – 12 PM</sub> |
|:---:|:---:|:---:|
| <img src="assets/banners/dawn.svg" width="100%" alt="Dawn" /> | <img src="assets/banners/sunrise.svg" width="100%" alt="Sunrise" /> | <img src="assets/banners/morning.svg" width="100%" alt="Morning" /> |

| ☀️ Noon<br/><sub>12 – 3 PM</sub> | 🌞 Afternoon<br/><sub>3 – 5 PM</sub> | 🌇 Sunset<br/><sub>5 – 6:30 PM</sub> |
|:---:|:---:|:---:|
| <img src="assets/banners/noon.svg" width="100%" alt="Noon" /> | <img src="assets/banners/afternoon.svg" width="100%" alt="Afternoon" /> | <img src="assets/banners/sunset.svg" width="100%" alt="Sunset" /> |

| 🌆 Dusk<br/><sub>6:30 – 7:30 PM</sub> | 🌙 Night<br/><sub>7:30 – 11:30 PM</sub> | 🌌 Midnight<br/><sub>11:30 PM – 4:30 AM</sub> |
|:---:|:---:|:---:|
| <img src="assets/banners/dusk.svg" width="100%" alt="Dusk" /> | <img src="assets/banners/night.svg" width="100%" alt="Night" /> | <img src="assets/banners/midnight.svg" width="100%" alt="Midnight with aurora" /> |

</details>

<br/>

## Contact

Interested in forecasting, geospatial tooling, or applied ML? Open an issue, star a repo, or reach out. I'm happy to talk shop.

<a href="https://github.com/sonubiswal">
  <img src="https://img.shields.io/badge/GitHub-sonubiswal-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub" />
</a>
<a href="https://linkedin.com/in/sonubiswal">
  <img src="https://img.shields.io/badge/LinkedIn-sonubiswal-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn" />
</a>
<a href="mailto:sonubiswal2008@gmail.com">
  <img src="https://img.shields.io/badge/Email-sonubiswal2008@gmail.com-EA4335?style=for-the-badge&logo=gmail&logoColor=white" alt="Email" />
</a>

<br/><br/>

<img src="assets/footer.svg" width="100%" alt="" />