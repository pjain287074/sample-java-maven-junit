package com.example;

import org.junit.Test;
import static org.junit.Assert.*;

public class SampleTest {
    @Test
    public void testAdd() {
        Sample sample = new Sample();
        int result = sample.add(2, 3);
        assertEquals(5, result);
    }
}
