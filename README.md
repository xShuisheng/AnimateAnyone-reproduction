# animate-anyone-reproduction
reproduction of AnimateAnyone using SVD

**we will release V1 checkpoint before 2.25.2024. We can not release the latest version, but the release one can also reproduce the result below to some extents. Anyone can finetune the model by their own dataset.**

### To Do list
- [x] piepline based on SVD
- [x] train V0.9 which can only generate 14 frames per ref-image
- [x] train animate-anyone like pipeline V1 which can generate arbitrary frames per ref-image
- [x] enhance face quality and time consistency(trick according to analyse animate anyone app cases)
- [ ] release V1 inference code and model
---
 **2024-02-05 update**
- because of the [issue](https://github.com/bendanzzc/AnimateAnyone-reproduction/issues/4), we decide to release inference code in advance which is not well organized but works.
- as for postprocess of face, you can use any video face swap framework to do that. More details can be found in [issue](https://github.com/bendanzzc/AnimateAnyone-reproduction/issues/3).
- our inference code mainly baed on [svd-temporal-controlnet](https://github.com/CiaraStrawberry/svd-temporal-controlnet), you can also use training code to train your own model.
- our dataset is only UBC, but it can generalize to other simple domains. we will continue collecting high quailty video data.
---
 **2024-01-25 update**
- according to analyse animate anyone app cases, we find there may be some tricks instead of training model. so we will update the case which has better face quality with free training.
- the face enhance result shows below in the V1 part
---

### V1
**cross-domain case**

https://github.com/bendanzzc/AnimateAnyone-reproduction/assets/26294676/6add2e5f-a110-4513-adaa-ac24378971af

**with face enhance**

https://github.com/bendanzzc/AnimateAnyone-reproduction/assets/26294676/0af71e3f-623a-4f31-8fa7-d82ea86ae6c2

**ori result**

https://github.com/bendanzzc/AnimateAnyone-reproduction/assets/26294676/3bffc2db-6b46-4386-bed9-1d59dc7f62e1

https://github.com/bendanzzc/AnimateAnyone-reproduction/assets/26294676/027608d9-970b-4f3e-b47f-f95e7be8553c

---
### v0.9
https://github.com/bendanzzc/animate-anyone-reproduction/assets/26294676/57b65b96-1391-47b5-81c0-2b25700c5aaa

https://github.com/bendanzzc/animate-anyone-reproduction/assets/26294676/2d0ebb99-e632-46b6-9780-f2443361977a


