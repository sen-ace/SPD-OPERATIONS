%% Compute Local Difference Vectors(LDV) via four metrics on the Symmetric Positive Definite(SPD) manifold. 
% (https://github.com/Kai-Xuan/MyNote/tree/master/ML/SPD-LDV)
% Four metrics: 1.Affine Invariant Riemannian Metric(AIRM),
%               2.Stein divergence,
%               3.Jeffrey divergence,
%               4.Log-Euclidean Metric(LEM).
% 
% For x,y in Euclidean space, the LDV is computed by : y - x.
% Here we compute LDV on the SPD manifold. 
% Written by Kai-Xuan Chen (e-mail: kaixuan_chen_jsh@163.com)  
% If you find any bugs, please contact me. Also, you can find more applications at:  
% https://github.com/Kai-Xuan/RiemannianCovDs  
% 
% 
% If you find this code useful for your research, maybe you can cite the following paper:
%{
    @article{chen2020covariance,
      title={Covariance Descriptors on a Gaussian Manifold and their Application to Image Set Classification},
      author={Chen, Kai-Xuan and Ren, Jie-Yi and Wu, Xiao-Jun and Kittler, Josef},
      journal={Pattern Recognition},
      pages={107463},
      year={2020},
      publisher={Elsevier}
    }
%} 


clear;  
clc;
feature_matrix1 = rand(3,100);
feature_matrix2 = rand(3,100);
X = cov(feature_matrix1');    
Y = cov(feature_matrix2');


%% LDV while using AIRM
ldv_A = compute_ldv(X,Y,'A');

%% LDV while using Stein
ldv_S = compute_ldv(X,Y,'S');

%% LDV while using Jeffrey
ldv_J = compute_ldv(X,Y,'J');

%% LDV while using LEM
ldv_L = compute_ldv(X,Y,'L');



             


                            
