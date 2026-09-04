# 🛒 D2C Subscription Churn & Revenue Risk Analysis 

An end-to-end customer retention and revenue risk analysis for a D2C subscription platform, shifting the analytical focus from flat demographic churn percentages to actionable financial impact (Lost MRR) and high-risk segment intervention.

---

### 📌 Project Overview

This project analyzes historical customer behavior, subscription tier dynamics, and engagement scores to identify where the business is leaking recurring revenue. Using Power Query for data modeling and Power BI for interactive visualization, the analysis cuts through the noise of uniform churn rates to expose how specific customer segments—particularly high-tier and "occasional" users—carry disproportionate financial risk.

**Business Context:** Customer churn limits business growth. Understanding *which* demographics drive the highest churn volume is useful, but understanding *which* subscription tiers and engagement behaviors drive the highest **Revenue at Risk** is critical for allocating retention marketing budgets effectively.

---

### 🎯 Problem Statement

A D2C subscription business wants to:

1. Shift retention metrics from basic customer headcounts to financial impact (Active MRR vs. Lost MRR).
2. Identify which subscription tiers and platforms contribute most to the revenue leak.
3. Understand the financial vulnerability of different user engagement segments (e.g., Occasional vs. At-Risk).
4. Develop data-driven, targeted intervention strategies to reduce Lost MRR.

---

### 📊 Dashboard Preview

<img width="626" height="353" alt="image" src="https://github.com/user-attachments/assets/202e8a2b-628b-433c-ba36-746ec570c8e9" />


---

### 📁 Dataset

| Attribute | Details |
| --- | --- |
| **Source** | Customer Churn Prediction Dataset V2 |
| **Domain** | D2C E-commerce / Subscription Services |
| **Volume** | 7 Years of historical transaction and status data |
| **Business KPIs** | Total Revenue, Active MRR, Lost MRR, AOV, CLTV |
| **Fields** | Subscription plan, engagement score, churn risk score, support tickets, device, age, income, status |

**Key Fields Used**

* `order_amount`, `Actual_Monthly_Fee`, `subscription_plan`
* `engagement_segment`, `churn_risk_score`, `support_tickets`
* `preferred_device`, `customer_status`

---

### 🛠️ Tools & Technologies

| Tool | Purpose |
| --- | --- |
| **Power Query** | Data cleansing, resolving $0 fee anomalies via conditional logic |
| **DAX** | Feature engineering (AOV, CLTV, Lost MRR, dynamic pricing tables) |
| **Power BI** | Star Schema modeling, Decomposition Trees, Treemaps, interactive storytelling |

---

### 🔬 Methodology

**1. Data Modeling & Cleansing (Power Query / DAX)**

* Resolved inactive customer data anomalies (e.g., handling missing or zeroed fees for churned users) by creating a `Dim_Pricing` lookup table.
* Implemented a Star Schema architecture connecting customer dimensions with transaction fact tables.
* Engineered calculated measures for True Average Order Value (`DIVIDE` on distinct orders) and Customer Lifetime Value.

**2. Feature Engineering**

* **Revenue Mapping:** Converted binary churn status into financial metrics (`Active MRR` and `Lost MRR`).
* **Risk Segmentation:** Mapped `Churn Risk Score` and `Engagement Score` to actionable customer cohorts.

**3. Exploratory Analysis**

* Identified that demographic dimensions (Age, Payment Method) exhibited a flat ~20.7% uniform churn rate.
* Pivoted the analysis to evaluate absolute revenue loss and tier-based financial hemorrhage to extract actionable business insights.

**4. Dashboard Design**

* Built a 3-page hierarchical layout: Executive Overview (Macro), Churn Analysis (Diagnostic), and Customer Segmentation (Actionable).
* Utilized AI-powered Decomposition Trees and conditional Treemaps for dynamic drill-down.

---

### 📈 Key Performance Indicators

| KPI | Value |
| --- | --- |
| **Total Historical Revenue** | ₹63.78bn |
| **Active MRR** | ₹124.53M |
| **Lost MRR** | ₹73.39M |
| **Overall Churn Rate** | 20.7% |
| **Overall Average Order Value** | ₹63.78K |

---

### 🔍 Key Findings

🎯 **Overall Portfolio Health**

* The business maintains a strong historical revenue base of ₹63.78bn, but currently sacrifices ₹73.39M in recurring revenue to churn every month.
* The flat baseline churn rate (~20.7%) across demographics indicates that churn is driven by product experience or tenure, rather than specific user personas.

⚠️ **Top Risk Factors**

| # | Finding |
| --- | --- |
| 1 | **Platinum Tier Hemorrhage:** Platinum users lose ₹12M in Churn MRR while only keeping ₹6M in Active MRR (a massive ~65% revenue loss rate). |
| 2 | **High Support Friction:** 75K active customers have generated between 3 and 8 support tickets, indicating critical UX or product fulfillment friction. |
| 3 | **Android Platform Leak:** Android users account for the highest absolute volume of lost revenue (₹44M), heavily correlating with platform market share but requiring UX auditing. |

🧠 **Counterintuitive Insight (The "Occasional" Paradox)**

* The "Occasional" engagement segment generates the highest active revenue (₹3.94 Cr), anchoring the business's cash flow.
* **Implication:** The company relies heavily on casual, low-engagement users for bulk revenue. Because their engagement is low, they are highly susceptible to slipping silently into the "At Risk" category without immediate detection.

---

### 💡 Business Recommendations

🎯 **Retention Strategy**

1. **Deploy Platinum Interventions:** Immediately target high-risk Platinum and Gold users with aggressive retention campaigns (e.g., premium discounts or dedicated success managers). Saving a fraction of these users offsets massive MRR losses.
2. **Engage the "Occasional" Base:** Develop automated lifecycle marketing (e.g., "We miss you" campaigns, low-barrier re-engagement offers) to keep the highest-revenue occasional segment from transitioning to churned status.

🛠️ **Product & Operations Strategy**

3.  **Investigate Android App UX:** Conduct an immediate audit of the Android application checkout and subscription management flows to determine if the ₹44M loss is strictly volume-based or exacerbated by technical friction.
4.  **Proactive Ticket Resolution:** Flag any active user crossing the 3-ticket threshold for priority routing, as high ticket volume heavily correlates with impending cancellation.

---

### 🧠 Skills Demonstrated

* [x] **Data Modeling:** Star Schema architecture, Fact/Dimension table relationships
* [x] **DAX Proficiency:** Time-intelligence, conditional aggregation, custom financial measures (MRR, CLTV)
* [x] **Data Visualization:** Decomposition Trees, Treemaps, hierarchical layout design
* [x] **Critical Thinking:** Identifying synthetic data limitations and pivoting to absolute financial impact
* [x] **Business Storytelling:** Translating flat churn percentages into actionable retention strategies

---

### 📬 Contact

**Sibin Augustine**
📧 sibinaugustine12830@gmail.com
💼 [LinkedIn](https://www.google.com/search?q=%23)
🌐 [Portfolio](https://www.google.com/search?q=%23)

⭐ *If you found this analysis useful, please star the repo!*
