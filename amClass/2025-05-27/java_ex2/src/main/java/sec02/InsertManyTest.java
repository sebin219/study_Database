package sec02;

import app.Database;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.result.InsertManyResult;
import org.bson.Document;

import java.util.ArrayList;
import java.util.List;

public class InsertManyTest {
    public static void main(String[] args) {

        /*
        * MongoCollection<Document>
        * - 특정 컬렉션에 접근하기 위한 객체 (컬렉션 : rdb의 테이블 개념)
        *
        * Document
        * - MongoDB에 저장할 하나의 데이터를 구성하는 객체
        * - append("필드", "값")를 사용해 필드와 값을 추가
        * */
        MongoCollection<Document> collection = Database.getCollection("todo");
        List<Document> insertList = new ArrayList<>();
        Document document1 = new Document();
        Document document2 = new Document();
        document1.append("title", "Dune2 영화보기");
        document1.append("desc", "이번 주말 IMAX로 Dune2 영화보기");
        document1.append("done", false);
        document2.append("title", "Java MongoDB 연동");
        document2.append("desc", "Java로 MongoDB 연동 프로그래밍 연습하기");
        document2.append("done", false);

        insertList.add(document1);
        insertList.add(document2);

        // InsertMany : list 형태의 Document를 받아 DB에 저장
        InsertManyResult result = collection.insertMany(insertList);
        System.out.println("==> InsertManyResult : " + result.getInsertedIds());
        Database.close();
    }
}