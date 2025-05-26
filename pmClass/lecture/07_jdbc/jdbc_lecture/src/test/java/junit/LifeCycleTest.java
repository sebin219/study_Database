package junit;

import org.junit.jupiter.api.*;

import static org.junit.jupiter.api.Assertions.*;

// @Order 를 사용하기 위해
// @Order : 테스트 메서드의 실행 순서 조작
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
class LifeCycleTest {

    @BeforeAll
    static void beforeAll() {
        System.out.println("beforeAll : 모든 테스트 전 1회 실행");
    }

    @AfterAll
    static void afterAll() {
        System.out.println("afterAll : 모든 테스트 후 1회 실행");
    }

    @BeforeEach
    void beforeEach() {
        System.out.println("beforeEach : 각 테스트 전 1회 실행");
    }

    @AfterEach
    void afterEach() {
        System.out.println("afterEach : 각 테스트 후 1회 실행");
    }

    @Test
    @Order(3)
    void testOne() {
        System.out.println("test : 테스트 1 실행");
    }

    @Test
    @Order(2)
    void testTwo() {
        System.out.println("test : 테스트 2 실행");
    }

    @Test
    @Order(1)
    void testThree() {
        System.out.println("test : 테스트 3 실행");
    }

}