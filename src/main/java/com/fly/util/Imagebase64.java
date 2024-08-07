package com.fly.util;


import sun.misc.BASE64Decoder;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;

/**
 *转换工具
 */
public class Imagebase64 {
    /**
     * input流 转 base64
     * @param
     * @return base64字符串
     */
    public static String inputStream2Base64( InputStream is) throws Exception {
        byte[] data = null;
        try {
            ByteArrayOutputStream swapStream = new ByteArrayOutputStream();
            byte[] buff = new byte[100];
            int rc = 0;
            while ((rc = is.read(buff, 0, 100)) > 0) {
                swapStream.write(buff, 0, rc);
            }
            data = swapStream.toByteArray();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e) {
                    throw new Exception("输入流关闭异常");
                }
            }
        }
        return Base64.getEncoder().encodeToString(data);
    }

    /**
     * base64 转 input流
     * @param
     * @return 输入流
     */
    public static InputStream base2InputStream(String base64string) {
        ByteArrayInputStream stream = null;
        try {
            BASE64Decoder decoder = new BASE64Decoder();
            byte[] bytes1 = decoder.decodeBuffer(base64string);
            stream = new ByteArrayInputStream(bytes1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return stream;
    }

//    /**
//     * spring boot  把集合对象中的从数据库取出来的Blob对像属性 转换成base64
//     * @param goodsList
//     */
//    public static void changList(List<Pet> goodsList) {
//       for (int i=0;i<goodsList.size();i++){
//           if (goodsList.get(i).getImg()!=null&&!"".equals(goodsList.get(i).getImg())) {
//               try {
//                   byte[] b = (byte[])( goodsList.get(i).getImg());
//                   InputStream is = new ByteArrayInputStream(b);
//                   goodsList.get(i).setImg(Imagebase64.inputStream2Base64(is));
//               } catch (Exception e) {
//                   e.printStackTrace();
//               }
//           }
//       }
//    }
//    /**
//     * spring boot  把单个对象中的从数据库取出来的Blob对像属性 转换成base64
//     * @param goods
//     */
//    public static void changOne(Pet goods) {
//            if (goods.getImg()!=null&&!"".equals(goods.getImg())) {
//                try {
//                    byte[] b = (byte[]) (goods.getImg());
//                    InputStream is = new ByteArrayInputStream(b);
//                    goods.setImg(Imagebase64.inputStream2Base64(is));
//                } catch (Exception e) {
//                    e.printStackTrace();
//                }
//
//        }
//    }


}