db.createCollection('alunos');

db.alunos.insert({
    name: 'Murilo',
    data_nascimento: new Date(2000,06,10)
    }
);

db.alunos.insert({
    name: 'Murilo',
    data_nascimento: new Date(2000,06,10),
    curso: {
        name: 'Engenharia da Computação',
    },
    notas: [10.0, 9.0, 4.5],
    habilidades:[{
        name: 'Inglês',
        nivel: 'Avançado',
    },{
        name: 'Taekondo',
        nivel: 'Básico',
    },]
    }
);

db.alunos.insert({
    name: 'Felipe',
    data_nascimento: new Date(1999,03,27),
    curso: {
        name: 'Sistemas',
    },
    notas: [8.0, 8, 4],
    habilidades:[{
        name: 'Inglês',
        nivel: 'Básico',
    },{
        name: 'Taekondo',
        nivel: 'Avançado',
    },]
    }
);

db.alunos.insert({
    name: 'Teste',
    data_nascimento: new Date(1999,03,27),
    curso: {
        name: 'Teste',
    },
    notas: [8.0, 8, 4],
    habilidades:[{
        name: 'Teste',
        nivel: 'Teste',
    },]
    }
);

db.alunos.find();

db.alunos.remove({
    _id: ObjectId("5e2b368d0b0afc7fb40b1cce"),
    }
);

db.alunos.find().pretty();

db.alunos.find({
    name: 'Murilo'
    }
).pretty();

db.alunos.find({
    'habilidades.name': 'Inglês',
    'habilidades.nivel': 'Avançado',
    }
).pretty();

db.alunos.find({
    $or:[
        {'curso.name': 'Engenharia da Computação'},
        {'curso.name': 'Sistemas'},
        {'curso.name': 'Moda'},]
    }
).pretty();

db.alunos.find(
    {
        'curso.name': {
        $in:[
            'Engenharia da Computação',
            'Sistemas',
            'Moda',
        ]
        }
    }
).pretty();

db.alunos.insert({
    name: 'Fernando',
    data_nascimento: new Date(1994,03,26),
    curso: {
        name: 'Sistema de informação',
    },
    notas: [10,4.5,7],
});

db.alunos.find({
    'curso.name': 'Sistema de informação',
}).pretty();

db.alunos.update({
    'curso.name': 'Teste',
},{
    $set: {
        'curso.name': 'Sistema de informação',
    }
});

db.alunos.update({
    'curso.name': 'Sistema de informação',
},{
    $set: {
        'curso.name': 'Sistemas de Informação',
    }
});

db.alunos.update({
    'curso.name': 'Sistema de informação',
},{
    $set: {
        'curso.name': 'Sistemas de Informação',
    }
},{
    multi: true
});

db.alunos.find({"_id" : ObjectId("5e2f1d2dbb1a176a277e6076")}).pretty();

db.alunos.update({
    "_id" : ObjectId("5e2f1d2dbb1a176a277e6076"),
},{
    $push: {
        "notas" : {$each: [8.5, 3,10]}
    }
});




db.alunos.find({
    notas: {
        $gt: 5
    }
}).pretty();

db.alunos.find().sort({'name': 1});
db.alunos.find().sort({'name': 1}).limit(2);



db.alunos.find().pretty();
db.alunos.find({"_id" : ObjectId("5e2f1d2dbb1a176a277e6076")}).pretty();

db.alunos.update({
    "_id" : ObjectId("5e2f1d2dbb1a176a277e6076"),
},{
    $set: {
        localizacao: {
            coordinates: [-23.588213, -46.632356],
            type: 'Point',
        }
    }
});

db.alunos.createIndex({
    localizacao: '2dsphere',
})

db.alunos.aggregate([
    {
        $geoNear: {
            near:{
                coordinates: [-23.588213, -46.632356],
                type: 'Point',
            },
            distanceField: 'distacia.calculada',
            spherical: true,
        }
    },
    {$skip: 1}
]).pretty();
