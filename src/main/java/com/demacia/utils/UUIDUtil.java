package com.demacia.utils;

import java.util.UUID;

/**
 * Created by songshiwen on 17/12/19.
 */
public class UUIDUtil {
    public static String randomID(){
        return UUID.randomUUID()
                .toString()
                .toLowerCase()
                .replace("-","");
    }

}
