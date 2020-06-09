# NLOS
Final project for course Computational Photography at PKU



This is the final project of Qiankun Ding for the course of Computational Photography 2019-2020 at PKU. 



#### Description

To use the code, first download NLOS data, and put them under correct file path.

Z-NLOS dataset:http://graphics.unizar.es/nlos_dataset.html

###### scenes under ./zaragoza/

```
rabbit:
bunny_l[0.00,-0.50,0.00]_r[1.57,0.00,3.14]_v[0.80,0.53,0.81]_s[256]_l[256]_gs[1.00]_conf.hdf5

indonesian:
indonesian_statue_l[0.00,-1.00,-0.40]_r[0.00,0.00,0.00]_v[0.61,0.37,0.81]_s[256]_l[256]_gs[1.00]_conf.hdf5

serapis: 
serapis_l[0.00,-0.50,-0.41]_r[0.00,0.00,-1.57]_v[0.82]_s[256]_l[256]_gs[1.00]_conf.hdf5

spheres: 
spheres_l[0.00,-0.50,-0.64]_r[0.00,0.00,0.00]_v[0.68]_s[256]_l[256]_gs[1.00]_conf.hdf5

MHL:
MHLivingRoom_l[-3.09,-5.90,3.63]_r[0.00,0.00,0.00]_v[2.71]_s[256]_l[256]_gs[0.60]_conf.hdf5
```

###### scenes under ./zaragoza1/

```
staircase:
staircase_l[-0.76,1.73,3.32]_r[0.00,0.00,0.00]_v[3.21]_s[64]_l[64]_gs[3.20]_conf.mat
```

To run the code, run  demo.m​  in ./matlab. 



#### References

David B. Lindell, Gordon Wetzstein, and Matthew O’Toole. 2019. Wave-based non-line-of-sight imaging using fast f-k migration. ACM Trans. Graph. 38, 4, Article 116 (July 2019), 13 pages. DOI:https://doi.org/10.1145/3306346.3322937

Galindo, Miguel & Marco, Julio & O'Toole, Matthew & Wetzstein, Gordon & Gutiérrez, Diego & Jarabo, Adrián. (2019). A dataset for benchmarking time-resolved non-line-of-sight imaging. 1-2. 10.1145/3306214.3338583. 

Sean I. Young, David B. Lindell, Bernd Girod, David Taubman, Gordon Wetzstein. 2020. Non-line-of-sight Surface Reconstruction Using the Directional Light-cone Transform. *Proc. CVPR*.



#### Dataset

Galindo, Miguel & Marco, Julio & O'Toole, Matthew & Wetzstein, Gordon & Gutiérrez, Diego & Jarabo, Adrián. (2019). A dataset for benchmarking time-resolved non-line-of-sight imaging. 1-2. 10.1145/3306214.3338583. 



#### Main Sources of Code

https://github.com/computational-imaging/nlos-fk

https://github.com/computational-imaging/nlos-dlct

http://graphics.unizar.es/nlos_dataset.html