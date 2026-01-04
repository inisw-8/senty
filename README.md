# 📊 Senty Project

> **트윗 기반 IT 기업 감성 분석 및 주가 상관관계 분석 프로젝트**

[![Live Demo](https://img.shields.io/badge/🚀_Live_Demo-senty--phi.vercel.app-6366f1?style=for-the-badge)](https://senty-phi.vercel.app)
[![Python](https://img.shields.io/badge/Python-3.8+-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://python.org)
[![React](https://img.shields.io/badge/React-18-61DAFB?style=for-the-badge&logo=react&logoColor=black)](https://reactjs.org)
[![FastAPI](https://img.shields.io/badge/FastAPI-009688?style=for-the-badge&logo=fastapi&logoColor=white)](https://fastapi.tiangolo.com)

![Dashboard Preview](https://github.com/h06-Cpy/inisw-8/assets/106899647/2278412a-0867-4a30-9952-db8959686ac2)

---

## 🎯 프로젝트 개요

소셜 미디어(트위터)에서 수집한 IT 기업 관련 트윗을 분석하여:
- **LDA 토픽 모델링**으로 주요 토픽 추출
- **RoBERTa 딥러닝 모델**로 감성 분류 (긍정/부정/중립)
- **Pearson 상관분석**으로 감성-주가 상관관계 도출

---

## 🏗️ 프로젝트 구조

```
Senty Project/
├── 🤖 AI Modeling/          # 딥러닝 모델링
├── 📥 Data Gathering/        # 데이터 수집
├── 💻 Web Server/            # FastAPI 백엔드
├── 🎨 Frontend/              # React 대시보드 (원본)
├── 📊 senty/                 # 배포용 프론트엔드
└── 📝 Our Efforts/           # R&D 실험 기록
```

---

## 📦 레포지토리

| 레포 | 설명 | 기술 스택 |
|------|------|-----------|
| [🤖 ai-modeling](https://github.com/inisw-8/ai-modeling) | LDA 토픽 모델링, RoBERTa 감성분석 | PyTorch, Gensim, Transformers |
| [📥 data-gathering](https://github.com/inisw-8/data-gathering) | 트윗 수집 및 전처리 | snscrape, SQLAlchemy |
| [💻 web-server](https://github.com/inisw-8/web-server) | REST API 백엔드 | FastAPI, Uvicorn |
| [🎨 frontend](https://github.com/inisw-8/frontend) | React 대시보드 (원본) | React, Vite, Tailwind |
| [📊 senty-frontend](https://github.com/inisw-8/senty-frontend) | 배포용 프론트엔드 | React, Recharts |
| [📝 our-efforts](https://github.com/inisw-8/our-efforts) | R&D 실험 기록 | Jupyter Notebook |

---

## 🔬 기술 스택

### AI/ML
| 기술 | 설명 |
|------|------|
| **LDA** | 토픽 모델링 (9개 토픽 추출) |
| **RoBERTa** | 감성 분류 (Accuracy: 72.3%) |
| **Gensim** | 토픽 모델링 라이브러리 |
| **Transformers** | 사전학습 모델 활용 |

### Backend
| 기술 | 설명 |
|------|------|
| **FastAPI** | REST API 서버 |
| **SQLAlchemy** | ORM |
| **SciPy** | 상관관계 분석 |

### Frontend
| 기술 | 설명 |
|------|------|
| **React 18** | UI 라이브러리 |
| **Tailwind CSS** | 스타일링 |
| **Recharts** | 차트 시각화 |
| **react-wordcloud** | 워드클라우드 |

---

## 📊 분석 결과

### 감성-주가 상관관계

| 토픽 | S&P500 | NASDAQ100 |
|------|--------|-----------|
| GPU | **-0.68** | -0.62 |
| Apple | -0.45 | -0.41 |
| AI/ML | -0.38 | -0.35 |

> 💡 **주요 발견**: GPU 토픽에서 p-value < 0.05로 통계적으로 유의미한 음의 상관관계 발견

### 감성 점수 계산

```
Score = ((긍정 수 - 부정 수) / 전체 트윗) × (1 - 중립 비율)
```

---

## 🚀 빠른 시작

### 프론트엔드 실행

```bash
cd senty
npm install --legacy-peer-deps
npm run dev
```

### 백엔드 실행

```bash
cd "Web Server"
pip install -r requirements.txt
uvicorn main:app --reload
```

---

## 🔗 외부 리소스

| 리소스 | 링크 |
|--------|------|
| **Live Demo** | [senty-phi.vercel.app](https://senty-phi.vercel.app) |
| **Colab 노트북** | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://drive.google.com/file/d/1KtYeBYy3nYnWO9lgUkJio5tN4t__u_P5/view?usp=sharing) |
| **HuggingFace 모델** | [![HuggingFace](https://img.shields.io/badge/%F0%9F%A4%97-Models%20on%20Hub-yellow)](https://huggingface.co/ugiugi) |
| **W&B 학습 기록** | [![wandb](https://raw.githubusercontent.com/wandb/assets/main/wandb-github-badge-gradient.svg)](https://wandb.ai/inisw08) |

---

## 📅 데이터셋

| 항목 | 내용 |
|------|------|
| **수집 기간** | 2023.05.23 ~ 2023.06.15 |
| **총 트윗 수** | ~50,000개 |
| **분석 대상** | 5개 IT 기업 |
| **추출 토픽** | 9개 |

---

## 📄 라이선스

MIT License

---

**Senty Project** - 트윗 기반 IT 기업 감성 분석 📊
