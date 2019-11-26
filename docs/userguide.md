---
layout: default
title: 이용가이드
nav_order: 1
---

# 이용가이드
{: .fw-700 }

## 1. 회원가입 및 로그인
{: .fw-700 }
---

### Step1. 회원가입
{: .fw-700 }

COEUS 사용을 위해 SK그룹 구성원 인증을 수행합니다.  

![](/docs/images/sign-in-process.jpg){: width="400" height="300"}  
비고) 그룹공통인증시스템과 연동이 필요하여, serviceflow와 동일한 비밀번호 입력이 필요합니다. 

### Step2. 로그인
{: .fw-700 }

회원가입을 마친 구성원은 ID(E-mail) 및 비밀번호를 입력하여 로그인 하여 Main Page으로 진입합니다.
![](/docs/images/Untitled-454a3b1a-2985-48fa-bee5-c6a992296378.png){: width="400" height="300"} 

## 2. 데이터 검색
{: .fw-700 }
---

### Step1. Catalog를 통한 데이터 검색
{: .fw-700 }

Data Catalog에서 원하는 산업별 영역을 선택 및 검색하여 데이터를 확인합니다.

![](/docs/images/Untitled-819f0c90-24a8-4fb1-8ec3-ee152b59840a.png){: width="400" height="300"} 

### Step2. 검색 데이터 결과 확인
{: .fw-700 }

검색한 데이터의 주제영역 확인 후, 상세페이지에서 관련된 테이블 목록을 조회합니다.

![](/docs/images/Untitled-177fc700-b8fd-41a7-ba54-f3ae5357ef09.png){: width="400" height="300"}

타사 데이터를 활용하기 위해서는 공유요청 및 승인을 통해 별도의 database 주소가 제공됩니다.

![](/docs/images/Untitled-2c18e559-8252-4436-a99d-64d2af70d5ff.png){: width="400" height="300"}

## 3. 분석환경 사용
{: .fw-700 }

---

### Step1. 분석환경 사용 신청
{: .fw-700 }

Notebook 사용을 위해 [Data Scientist]로 요청 권한을 신청합니다. 이후, Data Steward가 확인 후, 승인 처리됩니다.

### Step2. Notebook Instance 생성
{: .fw-700 }

본인 계정의 Jupyter Notebook Instance을 생성합니다.

![](/docs/images/Untitled-e8551ced-e477-4ba4-9d11-08254e9812cb.png){: width="400" height="300"}

Notebook 환경설정을 위해 기본 셋팅 값 이외에 학습 환경을 설정합니다.

![](/docs/images/Untitled-99c2b7a7-69f9-45f6-b9b3-e936169a6218.png){: width="400" height="300"}

### Step3. Notebook 실행하기 (Jupyter Lab 환경 제공)
{: .fw-700 }

![](/docs/images/Untitled-777db72c-8e0c-445a-9431-2af8ae0c3423.png){: width="400" height="300"}

### Step4. Jupyter Lab Example 확인 
{: .fw-700 }

붉은색 상자 Icon 클릭 후, 예제 확인  
![](/docs/images/Untitled-5304abe3-6740-47fc-bd45-e54089cd4dcf.jpg){: width="400" height="300"}

### Step5. Notebook 중지 및 재시작 하기
{: .fw-700 }

미사용 시, Notebook 사용을 중지하시고, 재 작업 시 시작버튼을 통해 합습을 이어서 진행합니다.

![](/docs/images/Untitled-a75a78f9-2b2e-4815-bb7c-9cf1a50dbb58.png){: width="400" height="300"}

## 4. 시각화 도구 사용
{: .fw-700 }
---

### Step1. 시각화 도구 사용 신청
{: .fw-700 }

시각화 도구는 두 가지 사용자 유형으로 분리되며, Report 생성자는 Data Analysis(C), 각 사의 별도 Report 조회를 위해서는 Data Analysis로 권한을 요청합니다.

이후 Data Steward 승인 후, 사용이 가능합니다.

### Step2. 갤러리
{: .fw-700 }

산업별 특성을 가진 대표 템플릿 9종 외 50여개의 예시를 확인할 수 있습니다. 이를 참고하여 각 사의 Dashboard 구성이 가능합니다.
 
![](/docs/images/Untitled-e6fc8af9-8b38-4799-b74a-4197786af799.png){: width="400" height="300"}

### Step3. 리포트 조회
{: .fw-700 }

각 사의 레포트와 관계사 공유 Report을 조회할 수 있습니다.

![](/docs/images/Untitled-470e2536-487b-48d7-8183-53201df25143.png){: width="400" height="300"}

## 5. 데이터 공유요청 및 활용
{: .fw-700 }

---

### Step1. Catalog를 통한 데이터 검색
{: .fw-700 }

Data Catalog에서 원하는 산업별 영역을 선택하여 데이터를 확인합니다.

![](/docs/images/Untitled-1d823b21-c2d2-4477-8c11-96611555b953.png){: width="400" height="300"}

### Step2. Table 선택 후, 공유요청하기
{: .fw-700 }

공유 요청은 Table 단위이며, 요청기한과 사유를 기재하여 요청합니다.

요청서는 해당 관계사의 Data Steward에게 전달 됩니다.

![](/docs/images/Untitled-3473b155-2eec-45ec-9b85-bf0d22ca37e8.png){: width="400" height="300"}

### Step3. Data Steward 승인 완료 후, Data 저장주소 확인 후 분석 활용
{: .fw-700 }

Data Steward는 해당 요청서에 대해 [승인/반려] 처리가 가능합니다.

요청서 승인 후, 요청자에게 해당 내역은 Mail로 발송되며, 해당 Data 접근이 가능합니다.
