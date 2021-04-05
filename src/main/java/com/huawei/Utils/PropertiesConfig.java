package com.huawei.Utils;

import java.io.*;
import java.util.Properties;

/**
 * Java读写修改Property文件
 *
 * @author LzwGLory
 * @version 创建时间：2014年7月15日 上午9:39:09
 */
public class PropertiesConfig {

    /**
     * 注意：把properties放到"src/main/resources/"下
     * 根据KEY，读取文件对应的值
     *
     * @param filePath 文件路径，即文件所在包的路径，例如：java/util/config.properties
     * @param key      键
     * @return key对应的值
     */
    public static String readData(String filePath, String key) {
//        filePath = "src/main/resources/"+filePath;
        Properties props = new Properties();
        try {
            InputStream in = new BufferedInputStream(new FileInputStream(filePath));
            props.load(in);
            in.close();
            String value = props.getProperty(key);
            return value;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 注意：把properties放到"src/main/resources/"下
     * 修改或添加键值对 如果key存在，修改, 反之，添加。
     *
     * @param filePath 文件路径，即文件所在包的路径，例如：java/util/config.properties
     * @param key      键
     * @param value    键对应的值
     */
    public static void writeData(String filePath, String key, String value) {
//        filePath = "src/main/resources/"+filePath;
        Properties prop = new Properties();
        try {
            File file = new File(filePath);
            if (!file.exists())
                file.createNewFile();
            InputStream fis = new FileInputStream(file);
            prop.load(fis);
            //一定要在修改值之前关闭fis
            fis.close();
            OutputStream fos = new FileOutputStream(filePath);
            prop.setProperty(key, value);
            //保存，并加入注释
            prop.store(fos, "Update '" + key + "' value");
            fos.close();
        } catch (IOException e) {
            System.err.println("Visit " + filePath + " for updating " + value + " value error");
        }
    }

    public static void main(String[] args) {
        PropertiesConfig.writeData("config.properties", "pageSize", "10");
        System.out.println(PropertiesConfig.readData("config.properties", "pageSize"));
    }
}
