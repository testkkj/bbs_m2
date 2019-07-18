package polymorphism;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.cache.interceptor.BasicOperation;

public class testcaseTest {

	@Test
	public void testAdd() {
		assertEquals(3,testcase.add(1,2));
	}

	@Test
	public void testSub() {
		assertEquals(2,testcase.sub(4,2));
	}

	@Test
	public void testMul() {
		assertEquals(4,testcase.mul(2,2));
	}

	@Test
	public void testDiv() {
		assertEquals(5,testcase.div(10,2));
	}

}
