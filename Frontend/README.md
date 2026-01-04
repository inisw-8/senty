# 📊 Senty Frontend

> 트윗 기반 IT 기업 감성 분석 대시보드

[![React](https://img.shields.io/badge/React-18.2-61DAFB?style=for-the-badge&logo=react&logoColor=white)](https://react.dev)
[![Vite](https://img.shields.io/badge/Vite-4.3-646CFF?style=for-the-badge&logo=vite&logoColor=white)](https://vitejs.dev)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind-3.3-06B6D4?style=for-the-badge&logo=tailwindcss&logoColor=white)](https://tailwindcss.com)
[![Recharts](https://img.shields.io/badge/Recharts-2.6-8884D8?style=for-the-badge)](https://recharts.org)

---

## 🎯 프로젝트 개요

**Senty**는 Twitter 데이터를 기반으로 IT 기업의 대중 감성을 시각화하는 인터랙티브 대시보드입니다. LDA 토픽 모델링과 RoBERTa 감성 분석 결과를 직관적인 차트와 그래프로 표현합니다.

### ✨ 주요 특징

- 🌙 **다크 테마** - 인디고 블루 컬러 기반의 모던한 UI
- 📈 **인터랙티브 차트** - Recharts 기반 동적 데이터 시각화
- 🎛️ **탭 기반 네비게이션** - 토픽별 분석 결과를 효율적으로 탐색
- ☁️ **워드 클라우드** - 토픽별 키워드 시각화
- 🔍 **상관관계 분석** - 감성 점수와 주가 지수의 관계 시각화

---

## 🖼️ 스크린샷

### 메인 대시보드
![Dashboard](https://via.placeholder.com/800x400?text=Senty+Dashboard)

### 토픽별 분석
![Topic Analysis](https://via.placeholder.com/800x400?text=Topic+Analysis)

---

## 🏗️ 프로젝트 구조

```
Frontend/
├── 📄 index.html              # 진입점 HTML
├── 📄 vite.config.js          # Vite 설정
├── 📄 tailwind.config.js      # Tailwind CSS 설정
├── 📄 package.json            # 의존성 관리
│
└── 📁 src/
    ├── 📄 App.jsx             # 앱 루트 컴포넌트
    ├── 📄 main.jsx            # React 진입점
    ├── 📄 index.css           # 글로벌 스타일
    │
    ├── 📁 pages/
    │   └── OneReport.jsx      # 메인 리포트 페이지
    │
    ├── 📁 components/
    │   ├── MainContent.jsx    # 메인 콘텐츠 영역
    │   ├── Sidebar.jsx        # 사이드바 네비게이션
    │   ├── BigCharacter.jsx   # 핵심 지표 카드
    │   ├── SentimentDist.jsx  # 감성 분포 차트
    │   ├── TopicProportion.jsx# 토픽 비율 차트
    │   ├── CorrLine.jsx       # 상관관계 라인 차트
    │   ├── WordCloud.jsx      # 워드 클라우드
    │   └── TopicValueTable.jsx# 데이터 테이블
    │
    └── 📁 data/
        └── mockData.js        # Mock 데이터
```

---

## 🔬 기술 스택

| 기술 | 버전 | 용도 |
|------|------|------|
| **React** | 18.2 | UI 라이브러리 |
| **Vite** | 4.3 | 빌드 도구 |
| **Tailwind CSS** | 3.3 | 스타일링 |
| **Recharts** | 2.6 | 차트 라이브러리 |
| **react-wordcloud** | 1.2 | 워드 클라우드 |
| **react-scroll** | 1.8 | 스크롤 네비게이션 |
| **Heroicons** | 2.0 | 아이콘 |

---

## 🚀 실행 방법

### 개발 환경

```bash
# 의존성 설치
npm install --legacy-peer-deps

# 개발 서버 실행
npm run dev

# 브라우저에서 확인
open http://localhost:5173
```

### 프로덕션 빌드

```bash
# 빌드
npm run build

# 미리보기
npm run preview
```

---

## 📊 컴포넌트 구조

### 페이지 레이아웃

```jsx
<OneReport>
  ├── <Header />           // 네비게이션 바
  ├── <Sidebar />          // 사이드바 메뉴
  └── <MainContent>
      ├── 서론
      ├── 전체 토픽 분석
      │   ├── <BigCharacter />
      │   ├── <SentimentDist />
      │   └── <TopicProportion />
      ├── 토픽별 감성 분석 (탭)
      │   ├── <WordCloud />
      │   ├── <CorrLine />
      │   └── <TopicValueTable />
      └── 결론
</OneReport>
```

### 핵심 컴포넌트

#### `<SentimentDist />`
감성 분포를 파이 차트로 시각화
```jsx
<SentimentDist data={[
  { name: '긍정', value: 48 },
  { name: '부정', value: 28 },
  { name: '중립', value: 24 }
]} />
```

#### `<CorrLine />`
감성 점수와 주가 지수의 상관관계를 라인 차트로 표현
```jsx
<CorrLine data={sentimentCorrelationData} />
```

#### `<WordCloud />`
토픽별 키워드를 워드 클라우드로 시각화
```jsx
<WordCloud words={[
  { text: 'iPhone', value: 85 },
  { text: 'MacBook', value: 72 },
  { text: 'iOS', value: 68 }
]} />
```

---

## 🎨 디자인 시스템

### 컬러 팔레트

| 색상 | Tailwind 클래스 | 용도 |
|------|----------------|------|
| 🟣 인디고 | `indigo-500` | 주요 액센트 |
| 🔵 스카이 | `sky-400` | 보조 액센트 |
| ⬛ 슬레이트 | `slate-800/900` | 배경 |
| ✅ 그린 | `green-400` | 긍정 지표 |
| 🔴 로즈 | `rose-400` | 부정 지표 |

### UI 스타일

```css
/* 글래스모피즘 */
.glassmorphism {
  background-color: rgba(30, 41, 59, 0.5);
  backdrop-filter: blur(10px);
}

/* 인디고 글로우 효과 */
.glow-indigo {
  animation: glow-indigo 1.5s infinite alternate;
}
```

---

## 🔗 API 연동

### 백엔드 API

```javascript
// API 엔드포인트
const API_URL = 'http://localhost:8000/api';

// 데이터 페치
fetch(API_URL)
  .then(res => res.json())
  .then(data => {
    set_total_topic(data.total_topic);
    setTopics(data.topics.slice(1));
  });
```

### Mock 데이터 모드

```javascript
// src/pages/OneReport.jsx
const USE_API = false;  // true: API, false: Mock 데이터
```

---

## 📁 데이터 구조

```typescript
interface ReportData {
  total_topic: {
    tweet_number: number;
    sentiment_dist: SentimentDist[];
    sentiment_dist_rank: TopicValue[];
    corr_rank_list: TopicValue[];
    topic_proportions: TopicProportion[];
  };
  topics: Topic[];
}

interface Topic {
  topic_name: string;
  tweet_number: number;
  sentiment_dist: SentimentDist[];
  topic_words: TopicWord[];
  correlations: Correlation;
  sentiment_corr: CorrLine[];
}
```

---

## 🔗 관련 레포지토리

- [🤖 AI Modeling](https://github.com/inisw-8/ai-modeling) - 토픽 모델링 & 감성 분석
- [📥 Data Gathering](https://github.com/inisw-8/data-gathering) - 데이터 수집
- [🖥️ Web Server](https://github.com/inisw-8/web-server) - FastAPI 백엔드
- [📊 Senty Frontend](https://github.com/inisw-8/senty-frontend) - 독립형 프론트엔드

---

## 📄 라이선스

MIT License

---

<div align="center">

**Senty Project** - 트윗 기반 IT 기업 감성 분석 📊

[Live Demo](https://senty.vercel.app) · [Report Bug](https://github.com/inisw-8/frontend/issues)

</div>

