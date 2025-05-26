// numbers 컬렉션에 20000개의 문서를 생성하세요.
// 문서의 형태: {num : i}
const docs = [];
for(let i = 0; i < 20000; i++) {
    docs.push({ num: i });
}
db.numbers.insertMany(docs);

// numbers 컬렉션의 문서 개수를 출력하세요.
db.numbers.countDocuments()

// numbers 컬렉션에서 num의 값이 20이상 25이하인 문서를 출력하세요.
db.numbers.find({ num: { $gte: 20, $lte: 25 } })

//위 쿼리의 실행 통계를 출력하세요.
db.numbers.find({ num: { $gte: 20, $lte: 25 } }).explain("executionStats")

// numbers 컬렉션의 num 키에 대해서 인덱스를 생성하세요.
db.numbers.createIndex({ num: 1 })

// 위에서 생성한 인덱스 정보를 출력하세요.
db.numbers.getIndexes()

// 앞에서 작성한 범위 연산 쿼리의 실행 통계를 출력하고, 인덱스가 없을 때와 비교해보세요.
db.numbers.find({ num: { $gte: 200, $lte: 250 } }).explain("executionStats")