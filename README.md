# E-Commerce-Profitability-Analysis

<h1>Introduction</h1>
<p>This project delivers a comprehensive, data-driven audit of multi-channel e-commerce profitability, moving beyond top-line revenue to uncover the true net margins of a $1M+ DTC brand. Leveraging SQL for complex data joins, Pandas for granular financial modeling, and Power Bi /Excel for executive-level visualization, the study answers critical questions for fiscal health—such as category-level profit leakage, platform fee efficiency across Social Commerce and Marketplaces, and the impact of return rates on the bottom line. By synthesizing order transactions, product COGS, and multi-platform marketing spend, this analysis identifies underperforming ad channels and provides a data-backed roadmap for a 20% budget optimization without sacrificing high-margin growth.</p>

# 🛒 E-Commerce Sales & Profitability Analysis (BrightCart)

A comprehensive data analysis evaluating product profitability, sales channel efficiency, the financial impact of returns, and marketing ROI to drive strategic business decisions and optimize profit margins.

## 🛠️ Tech Stack
* **Database Querying:** SQL
* **Data Manipulation & Analysis:** Python (Pandas)
* **Data Visualization:** Power BI / Tableau
* **Spreadsheets:** Excel

---

## 📊 Key Findings & Analysis

### 1. Product Category Profitability
<img width="1100" height="375" alt="{29E05900-5945-45B7-A58B-76E56918D367}" src="https://github.com/user-attachments/assets/5da9de93-1481-4cef-8940-ee4dcbd17a29" />

Top-line revenue hides the true unit economics of our catalog. Shipping costs are heavily penalizing lower-ticket categories.

* **Top Performer (Electronics):** The most profitable category with a **31.13% profit margin**, despite having the highest average product cost ($75.25) and the highest return rate (8.61%). The high retail price easily absorbs shipping and return costs.
* **Worst Performer (Books):** Generates a mere **11.94% profit margin**. With an average product cost of $37.48, the relatively fixed average shipping cost ($26.20) severely cannibalizes the profitability of these lower-priced items.

> **💡 Insight:** Shipping costs are relatively flat across categories (ranging from $23 to $26), meaning low-AOV (Average Order Value) categories like Books, Beauty (17.39% margin), and Clothing (19.99%) are disproportionately dragged down by fulfillment expenses.

### 2. Sales Channel Efficiency
<img width="1129" height="712" alt="{BF34799A-C8C8-40AE-8D42-26F0EB205709}" src="https://github.com/user-attachments/assets/f3460591-8467-4ceb-97f0-f15b56367c4e" />

Not all revenue channels are created equal. Platform fees significantly alter the bottom line.

* **The Best:** The **Mobile App** yields the highest Profit Per Order (PPO) at roughly **$36**, followed closely by the native Website ($31).
* **The Worst:** **Third-party Marketplaces** yield less than half the profit of the Mobile App, sitting at roughly **$15 PPO**. Social Commerce performs similarly poorly at ~$17 PPO.

> **💡 Insight:** The high platform fees associated with Marketplaces and Social Commerce are destroying per-unit profitability, making them volume-dependent channels that require strict cost control.

### 3. The Impact of Returns
Returns cost the business significantly, but the rate of returns tells a different story than the absolute dollars lost.

* **By Channel:** **Social Commerce** experiences the highest return rate (nearly 9%), suggesting impulsive buying behavior driven by social feeds. However, the **Website** accounts for the highest absolute revenue lost (~$10,000) simply due to its massive sales volume.
* **By Category:** **Electronics** leads in both return rate and total revenue lost (>$4,000). However, because its baseline margin is over 31%, it remains highly profitable even after factoring in these losses.

### 4. Marketing & Return on Ad Spend (ROAS)
<img width="1090" height="307" alt="{1571F6B1-DB5A-4E35-8F4F-EC72121CA92D}" src="https://github.com/user-attachments/assets/cab164aa-d7a2-4d12-aa86-5fbf95125ecb" />

An analysis of $503K in ad spend reveals massive disparities in platform efficiency.

* **The Winners:** **TikTok Ads** (24.44 ROAS) and **Influencer Marketing** (23.45 ROAS) are highly capital-efficient, driving massive returns on relatively modest spends (~$57K and ~$97K, respectively).
* **The Losers:** **Email Marketing** is severely underperforming with a 5.41 ROAS. **Facebook Ads**, despite eating up $106K of the budget, yields a mediocre 11.25 ROAS.
* **Seasonality Flaws:** Ad spend spikes dramatically in November and December (heavily weighted toward Google and Facebook Ads), yet average ROAS plummets from a peak of ~22 in February down to ~12-14 during the Q4 holiday rush.

---

## 🎯 Strategic Recommendations
<img width="1384" height="771" alt="image" src="https://github.com/user-attachments/assets/0c79d711-ddef-4d0e-b073-dc7e8fe9aa6a" />

If tasked with improving overall profitability and cutting 20% of the marketing budget (approx. $100,000), I recommend the following three actions:

1. **Reallocate Q4 Ad Spend to High-Yield Social Platforms:** Cut $100K by drastically reducing **Google Ads** and **Facebook Ads** spend, specifically trimming their bloated budgets in November and December when ad auctions are expensive and average ROAS dips. Reinvest a fraction of these savings into consistently high-performing channels like TikTok Ads and Influencer marketing throughout the year.

2. **Overhaul Fulfillment Strategy for Low-Ticket Items:** With Books and Beauty operating at <18% margins due to flat shipping costs, BrightCart must implement minimum order thresholds for free shipping (e.g., *"Free shipping on orders over $50"*) or bundle these items. This will increase the Average Order Value and absorb the $25+ average shipping cost.

3. **Audit the Social Commerce Funnel:** Social Commerce has the highest return rate (~9%) and the second-lowest Profit Per Order (~$17). We need to review product descriptions, sizing guides, and video representations on social platforms to set better buyer expectations and reduce impulse-driven returns, while factoring platform fees into pricing strategies to protect margins.
