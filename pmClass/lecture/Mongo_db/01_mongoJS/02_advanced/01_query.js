use shop

// users 컬렉션에 {username: "smith"}문서를 추가하세요.
db.users.insertOne({ username: "smith" })

// 위의 문서를 수정하세요.
db.users.updateOne(
    { username: "smith" },
    {
        $set: {
            favorites: {
                cities: ["Chicago", "Cheyenne"],
                movies: ["Casablanca", "For a Few Dollars More", "The Sting"]
            }
        }
    }
)

// users 컬렉션에 {username: "jones"}문서를 추가하세요.
db.users.insertOne({ username: "jones" })

// 위의 문서를 수정하세요.
db.users.updateOne(
    { username: "jones" },
    {
        $set: {
            favorites: {
                movies: ["Casablanca", "Rocky"]
            }
        }
    }
)

// users 컬렉션의 "Casablanca" 영화를 좋아하는 사용자들을 출력하세요.
db.users.find({ "favorites.movies": "Casablanca" })

// users 컬렉션의 "Casablanca" 영화를 좋아하는 사용자들에 대해서
// 좋아하는 영화목록에"The M altese Falcon"을 중복 없이 추가하세요.
// 단, 해당 항목이 없는 경우는 무시하고, 여러 사람이 일치한다면 모두 업데이트하세요.
db.users.updateMany(
    { "favorites.movies": "Casablanca" },
    {
        $addToSet: {
            "favorites.movies": "The Maltese Falcon"
        }
    }
)