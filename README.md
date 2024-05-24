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

Créons maintenant notre dockerfile à la racine, voici son contenu : 

![2024-05-24 16_03_16-root@fna-ubu_ _home_fna_eval_repo](https://github.com/fnature78/eval_repo/assets/110181431/421c7ce0-22f5-4346-a841-0bf82fc845f6)

(à noter qu'il ne faut jamais mettre la clé API en clair, nous le faisais ici à des fins de test)

Buildons maintenant notre image avec la commande suivante : 

![2024-05-24 16_07_18-root@fna-ubu_ _home_fna_eval_repo](https://github.com/fnature78/eval_repo/assets/110181431/e1a5c6b5-e6a3-4e59-ae16-1aa4a85790ae)

Puis démarrons le container avec cette commande : 

![2024-05-24 16_09_38-root@fna-ubu_ _home_fna_eval_repo](https://github.com/fnature78/eval_repo/assets/110181431/dfcc9c12-bcee-4f22-bcf8-0b08d51c763e)

Nous pouvons voir que cela a bien marché : 

![2024-05-24 16_10_13-root@fna-ubu_ _home_fna_eval_repo](https://github.com/fnature78/eval_repo/assets/110181431/c91d9073-3dd4-4189-818d-a6bcd3df3177)

Nous pouvons aussi voir qu'elle est bien en fonctionnement : 

![2024-05-24 16_13_23-root@fna-ubu_ _home_fna_eval_repo](https://github.com/fnature78/eval_repo/assets/110181431/87d50d28-c8bf-4750-b77b-b4b1da591ef6)

Basculons maintenant vers la branche dev :

![2024-05-24 16_23_33-root@fna-ubu_ _home_fna_eval_repo](https://github.com/fnature78/eval_repo/assets/110181431/51562689-b9c1-47c0-ba13-a60f2d6f9b35)

Et créons un test.sh de fast-api comme ceci : 

![2024-05-24 16_24_44-Paramètres](https://github.com/fnature78/eval_repo/assets/110181431/613a0453-0522-41c7-95e6-16aae1dcded6)

Pour la prochaine étape, nous allons créer des secrets pour nos identifiants dockerhub : 

Il suffit d'aller dans les settings de notre repo et ajouter des repositories secrets : 


![2024-05-24 16_57_22-Actions secrets · fnature78_eval_repo et 5 pages de plus - Personnel – Microsoft](https://github.com/fnature78/eval_repo/assets/110181431/940c469d-dbbf-40ef-8632-699f07c8c793)


Maintenant créons un dossier .github/workflow à la racine afin créer le work flow suivant : dockerdeploy.yml

![2024-05-24 16_52_42-Alienware Command Center](https://github.com/fnature78/eval_repo/assets/110181431/f2cd50bc-db0e-4310-82bf-f77af6057188)

Ajoutons le .github au repo github avec la commande git add .github

Nous voyons qu'il est bien apparu

![2024-05-24 16_53_47-fnature78_eval_repo_ Repo pour l'éval et 5 pages de plus - Personnel – Microsoft](https://github.com/fnature78/eval_repo/assets/110181431/fb6e58fa-e7e6-495f-8046-2b081fa0eee4)

Regardons si notre workflow fonctionne dans l'onglet actions 

![2024-05-24 16_54_39-docker-deploy yml · Workflow runs · fnature78_eval_repo et 5 pages de plus - Per](https://github.com/fnature78/eval_repo/assets/110181431/a114b1f9-8661-487f-ac71-11696a1e4653)

Il s'est bien exécuté sans problèmes.

Maintenant, allons voir s'il apparaît sur notre compte docker : 

![image](https://github.com/fnature78/eval_repo/assets/110181431/522a1356-2f9e-4b55-92a3-051b3aa25c51)

ça marche !






