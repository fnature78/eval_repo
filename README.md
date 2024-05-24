# eval_repo

Nous récupérons tout d'abord la clé API sur le site GROQ

![2024-05-24 15_34_34-1 png ‎- Photos](https://github.com/fnature78/eval_repo/assets/110181431/2b523d57-9d3a-4fc8-a71b-8d90e74c6d7e)

Nous allons maintenant cloner notre repo github avec la commande : git clone 

Nous allons maintenant créer notre premier fichier avec :

nano requirements.txt

Voici ce que nous mettrons dedans : 

![2024-05-24 14_35_28-root@fna-ubu_ _home_fna_eval_repo](https://github.com/fnature78/eval_repo/assets/110181431/05c0848e-db44-4f7f-a701-6aa993d9ff28)

Nous créons maintenant un dossier app :

![2024-05-24 14_36_08-root@fna-ubu_ _home_fna_eval_repo](https://github.com/fnature78/eval_repo/assets/110181431/18b743cb-23bc-48f1-94d6-cf7e919e0603)

Dans lequel nous créerons un nouveau fichier main.py avec ce contenu : 

![2024-05-24 14_36_56-root@fna-ubu_ _home_fna_eval_repo](https://github.com/fnature78/eval_repo/assets/110181431/38fcc555-f887-453d-9a20-95b9a5f84f31)

Il suffit maintenant de le lancer avec la commande 

uvicorn main:app --reload --port=8001

Nous pouvons voir que l'application s'est bien lancée sans erreurs :

![image](https://github.com/fnature78/eval_repo/assets/110181431/4873d403-ca84-4558-86f2-4cce3cbe473a)



