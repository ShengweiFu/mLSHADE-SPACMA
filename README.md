%  Source codes demo version 1.0 using matlab2023b 


%  Author and programmer: Shengwei Fu  e-Mail: shengwei_fu@163.com 


%  Paper : Modified LSHADE-SPACMA with new mutation strategy and external archive mechanism for numerical optimization and point cloud registration


%  Journal : Artificial Intelligence Review


% If the code is useful to you, please cite our paper, thanks！

Abstract: Numerical optimization and point cloud registration are critical research topics in the field of artificial intelligence. The differential evolution algorithm is an effective approach to address these problems, and LSHADE-SPACMA, the winning algorithm of CEC2017, is a competitive differential evolution variant. However, LSHADE-SPACMA's local exploitation capability can sometimes be insufficient when handling these challenges. Therefore, in this work, we propose a modified version of LSHADE-SPACMA (mLSHADE-SPACMA) for numerical optimization and point cloud registration. Compared to the original approach, this work presents three main innovations. First, we present a precise elimination and generation mechanism to enhance the algorithm's local exploitation ability. Second, we introduce a mutation strategy based on a modified semi-parametric adaptive strategy and rank-based selective pressure, which improves the algorithm's evolutionary direction. Third, we propose an elite-based external archiving mechanism, which ensures the diversity of the external population and can accelerate the algorithm's convergence progress. Additionally, we utilize the CEC2014 (Dim=10, 30, 50, 100) and CEC2017 (Dim=10, 30, 50, 100) test suites for numerical optimization experiments, comparing our approach against: (1) 10 recent CEC winner algorithms, including LSHADE, EBOwithCMAR, jSO, LSHADE-cnEpSin, HSES, LSHADE-RSP, ELSHADE-SPACMA, EA4eig, L-SRTDE, and LSHADE-SPACMA; (2) 4 advanced variants: APSM-jSO, LensOBLDE, ACD-DE, and MIDE. The results of the Wilcoxon signed-rank test and Friedman mean rank test demonstrate that mLSHADE-SPACMA not only outperforms the original LSHADE-SPACMA but also surpasses other high-performance optimizers, except that it is inferior L-SRTDE on CEC2017. Finally, 25 point cloud registration cases from the Fast Global Registration dataset are applied for simulation analysis to demonstrate the potential of the developed mLSHADE-SPACMA technique for solving practical optimization problems.