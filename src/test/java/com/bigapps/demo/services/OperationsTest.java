package com.bigapps.demo.services;

import org.junit.Assert;
import org.junit.Test;

public class OperationsTest {

    @Test
    public void add() {
        //Given
        Operations operations = new Operations();
        Integer a = 0;
        Integer b = 0;
        Integer expected = 0;

        //When
        Integer result = operations.add(0, 0);

        //Then
        Assert.assertEquals(result, expected);
    }
}