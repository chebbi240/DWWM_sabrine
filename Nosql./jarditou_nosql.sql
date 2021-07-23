--creer le table
use jarditou,
--insertion de la table categories
db.categories.insert({
    "cat_id": 1,
    "cat_nom":"outillage",
    "cat_parent":NULL
})
db.categories.insert({
    "cat_id": 2,
    "cat_nom":"outillage manuel",
    "cat_parent": 1,
})
db.categories.insert({
    "cat_id":'3',
    "cat_nom":'outillage mécanique',
    "cat_parent": 2,
})
db.categories.insert({
    "cat_id":4,
    "cat_nom":"Plants mécanique",
    "cat_parent": NULL
})
db.categories.insert ({
    "cat_id": 5,
    "cat_nom":"Arbres et arbustes",
    "cat_parent":NULL
})
--insertion de la collection produits
db.produits.insert({
    "pro_id": 7,
    "pro_cat_id": 27 ,
    "pro_ref":'barb001',
    "pro_libelle":'Aramis',
    "pro_description":'Lorem ipsum dolor sit amet, consectetur adipiscing...',
    "pro_prix":110.000,
    "pro_stock":2 ,
    "pro_photo":'jpg',
    "pro_couleur":'Brun'
    "pro_d_ajout":new date ('2018-04-18'),
    "pro_d_modif":NULL
})
db.produits.insert({
    "pro_id": 8,
    "pro_cat_id":27,
    "pro_ref":'barb002',
    "pro_libelle":'Athos',
    "pro_description":'Curabitur pellentesque posuere luctus. Sed et risu...',
    "pro_prix":249.99,
    "pro_stock":0,
    "pro_photo":'jpg',
    "pro_couleur":'Noir'
    "pro_d_ajout": new Date('2016-06-14',
    "pro_d_modif":NULL
})
db.produits.insert({
    "pro_id": 11,
   "pro_cat_id":27,
    "pro_ref":'barb003',
    "pro_libelle":'Clatronic',
    "pro_description":'Fusce rutrum odio sem, quis finibus nisl finibus a...',
    "pro_prix":135.90,
    "pro_stock": 0, 
    "pro_couleur":'chrome'
    "pro_photo":'jpg',
    "pro_id_ajout":new date ('2017-10-18'),
    "pro_id_modif":NULL
})
db.produits.insert({
    "pro_id": 12,
    "pro_cat_id": 27,
    "pro_ref":'barb004',
    "pro_libelle":'Camping',
    "pro_description":'Phasellus auctor mattis justo, in semper urna cong...',
    "pro_prix": 88.00,
    "pro_stock": 5,
    "pro_couleur":'Noir'
    "pro_photo":'jpg',
    "pro_d_ajout":new date('2018-08-20'),
    "pro_d_modif": NULL
})
db.produits.insert({
    "pro_id":12,
    "pro_cat_id":27 ,
    "pro_ref":'barb001',
    "pro_libelle":'Camping',
    "pro_description":'Phasellus auctor mattis justo, in semper urna cong...',
    "pro_prix": 49.00,
    "pro_stock":25,
    "pro_couleur":'verte'
    "pro_photo":'jpg',
    "pro_d_ajout":new date ('2018-08-01'),
    "pro_d_modif": NULL
})
db.produits.insert({
    "pro_id":13,
    "pro_cat_id":13,
    "pro_ref":'barb001',
    "pro_libelle":'Green',
    "pro_description":'Fusce interdum ex justo, vel imperdiet erat volutp...',
    "pro_prix":'49.00',
    "pro_stock":'25',
    "pro_couleur":'verte'
    "pro_photo:"'jpg',
    "pro_d_ajout":new date('2018-08-01'),
    "pro_d_modif": NULL
})
--modication de la collection categories

db.categories.update({
    "cat_id": 2,
    "cat_nom":"outillage manuel",
    "cat_parent": 1,
})
db.users. update({
    "cat_id":'3',
    "cat_nom":'outillage mécanique',
    "cat_parent": 2,
})
db.users. update({
    "cat_id":4,
    "cat_nom":"Plants mécanique",
    "cat_parent": NULL
})
db.users. update({
    "cat_id": 5,
    "cat_nom":"Arbres et arbustes",
    "cat_parent":NULL
})
--modification de la collection produits
db.users. update({
    "pro_id": 7,
    "pro_cat_id": 27 ,
    "pro_ref":'barb001',
    "pro_libelle":'Aramis',
    "pro_description":'Lorem ipsum dolor sit amet, consectetur adipiscing...',
    "pro_prix":110.000,
    "pro_stock":2 ,
    "pro_photo":'jpg',
    "pro_couleur":'Brun'
    "pro_d_ajout":new date ('2018-04-18'),
    "pro_d_modif":NULL
})
db.users. update({
    "pro_id": 8,
    "pro_cat_id":27,
    "pro_ref":'barb002',
    "pro_libelle":'Athos',
    "pro_description":'Curabitur pellentesque posuere luctus. Sed et risu...',
    "pro_prix":249.99,
    "pro_stock":0,
    "pro_photo":'jpg',
    "pro_couleur":'Noir'
    "pro_d_ajout": new Date('2016-06-14',
    "pro_d_modif":NULL
})
db.users. update({
    "pro_id": 11,
   "pro_cat_id":27,
    "pro_ref":'barb003',
    "pro_libelle":'Clatronic',
    "pro_description":'Fusce rutrum odio sem, quis finibus nisl finibus a...',
    "pro_prix":135.90,
    "pro_stock": 0, 
    "pro_couleur":'chrome'
    "pro_photo":'jpg',
    "pro_id_ajout":new date ('2017-10-18'),
    "pro_id_modif":NULL
})
db.users. update({
    "pro_id": 12,
    "pro_cat_id": 27,
    "pro_ref":'barb004',
    "pro_libelle":'Camping',
    "pro_description":'Phasellus auctor mattis justo, in semper urna cong...',
    "pro_prix": 88.00,
    "pro_stock": 5,
    "pro_couleur":'Noir'
    "pro_photo":'jpg',
    "pro_d_ajout":new date('2018-08-20'),
    "pro_d_modif": NULL
})
db.users. update({
    "pro_id":12,
    "pro_cat_id":27 ,
    "pro_ref":'barb001',
    "pro_libelle":'Camping',
    "pro_description":'Phasellus auctor mattis justo, in semper urna cong...',
    "pro_prix": 49.00,
    "pro_stock":25,
    "pro_couleur":'verte'
    "pro_photo":'jpg',
    "pro_d_ajout":new date ('2018-08-01'),
    "pro_d_modif": NULL
})
db.users.update({
    "pro_id":13,
    "pro_cat_id":13,
    "pro_ref":"barb001",
    "pro_libelle":"Green",
    "pro_description":"Fusce interdum ex justo, vel imperdiet erat volutp...",
    "pro_prix":49.00,
    "pro_stock": 25,
    "pro_couleur":"verte"
    "pro_photo":"jpg",
    "pro_d_ajout":new date('2018-08-01'),
    "pro_d_modif": NULL
})
--suppresion de la collection categories

db.categories.remove({
    "cat_id": 2,
    "cat_nom":"outillage manuel",
    "cat_parent": 1,
})
db.users. remove({
    "cat_id":3,
    "cat_nom":'outillage mécanique',
    "cat_parent": 2,
})
db.users. remove({
    "cat_id":4,
    "cat_nom":"Plants mécanique",
    "cat_parent": NULL
})
db.users. remove({
    "cat_id": 5,
    "cat_nom":"Arbres et arbustes",
    "cat_parent":NULL
})
--suppresion de la collection produits
db.users. remove({
    "pro_id": 7,
    "pro_cat_id": 27 ,
    "pro_ref":'barb001',
    "pro_libelle":'Aramis',
    "pro_description":'Lorem ipsum dolor sit amet, consectetur adipiscing...',
    "pro_prix":110.000,
    "pro_stock":2 ,
    "pro_photo":'jpg',
    "pro_couleur":'Brun'
    "pro_d_ajout":new date ('2018-04-18'),
    "pro_d_modif":NULL
})
db.users. remove({
    "pro_id": 8,
    "pro_cat_id":27,
    "pro_ref":'barb002',
    "pro_libelle":'Athos',
    "pro_description":'Curabitur pellentesque posuere luctus. Sed et risu...',
    "pro_prix":249.99,
    "pro_stock":0,
    "pro_photo":'jpg',
    "pro_couleur":'Noir'
    "pro_d_ajout": new Date('2016-06-14',
    "pro_d_modif":NULL
})
db.users. remove({
    "pro_id": 11,
   "pro_cat_id":27,
    "pro_ref":'barb003',
    "pro_libelle":'Clatronic',
    "pro_description":'Fusce rutrum odio sem, quis finibus nisl finibus a...',
    "pro_prix":135.90,
    "pro_stock": 0, 
    "pro_couleur":'chrome'
    "pro_photo":'jpg',
    "pro_id_ajout":new date ('2017-10-18'),
    "pro_id_modif":NULL
})
db.users.remove({
    "pro_id": 12,
    "pro_cat_id": 27,
    "pro_ref":'barb004',
    "pro_libelle":'Camping',
    "pro_description":'Phasellus auctor mattis justo, in semper urna cong...',
    "pro_prix": 88.00,
    "pro_stock": 5,
    "pro_couleur":'Noir'
    "pro_photo":'jpg',
    "pro_d_ajout":new date('2018-08-20'),
    "pro_d_modif": NULL
})
db.users. remove({
    "pro_id":12,
    "pro_cat_id":27 ,
    "pro_ref":'barb001',
    "pro_libelle":'Camping',
    "pro_description":'Phasellus auctor mattis justo, in semper urna cong...',
    "pro_prix": 49.00,
    "pro_stock":25,
    "pro_couleur":'verte'
    "pro_photo":'jpg',
    "pro_d_ajout":new date ('2018-08-01'),
    "pro_d_modif": NULL
})
db.users.remove({
    "pro_id":13,
    "pro_cat_id":13,
    "pro_ref":"barb001",
    "pro_libelle":"Green",
    "pro_description":"Fusce interdum ex justo, vel imperdiet erat volutp...",
    "pro_prix":49.00,
    "pro_stock": 25,
    "pro_couleur":"verte"
    "pro_photo":"jpg",
    "pro_d_ajout":new date('2018-08-01'),
    "pro_d_modif": NULL
})