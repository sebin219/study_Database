// 다음 형태의 문서 20000건을 추가하세요.
// - database : test
// - collection : product
// - 문서 필드
// - num : 순번(0부터 시작)
// - name : '스마트폰 ' + 순번

for(let i = 0; i < 20000 ; i++) {
    db.product.insertOne({
        num: i,
        name: '스마트폰 ' + i
    })
}

// product 컬렉션의 전체 문서 수를 출력하세요.
db.product.countDocuments()

// product 컬렉션의 문서를 num의 내림차순으로 정렬하여 출력하세요
db.product.find().sort({num:-1})

// product 컬렉션의 문서를 num의 내림 차순으로 정렬하여 상위 10건을 출력하세요.
db.product.find().sort({ num: -1 }).limit(10)


// product 컬렉션의 문서를 num의 내림 차순으로 정렬한 상테에서 다음을 처리하세요.
// - 한 페이지당 10건씩 출력
// - 6페이지에 해당하는 문서를 출력하세요.
// 6페이지는 앞의 5페이지(50건)을 스킵하는 것을 의미
db.product.find().sort({ num: -1 }).skip(50).limit(10)

// product 컬렉션에서 num이 15미만이거나 19995 초과인 것을 출력하세요.
db.product.find({
    $or: [
        { num: { $lt: 15 } },
        { num: { $gt: 19995 } }
    ]
})

// product 컬렉션에서 name이 '스마트폰 10', '스마트폰 100', '스마트폰 1000'중에 하나이면 출력하세요.
db.product.find({
    name: { $in: ["스마트폰 10", "스마트폰 100", "스마트폰 1000"] }
})

// product 컬렉션에서 num이 5보다 작은 문서를 출력하는데, name만 출력하세요.(_id는 출력X)
db.product.find(
    { num: { $lt: 5 } },
    { name: 1, _id: 0 }
)