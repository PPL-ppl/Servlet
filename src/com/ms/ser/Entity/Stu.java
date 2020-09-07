package com.ms.ser.Entity;

public class Stu {
    private int age;
    private String name;
    private User user;

    public Stu() {
    }

    public Stu(int age, String name) {
        this.age = age;
        this.name = name;
    }

    public Stu(int age, String name, User user) {
        this.age = age;
        this.name = name;
        this.user = user;
    }

    /**
     * 获取
     *
     * @return age
     */
    public int getAge() {
        return age;
    }

    /**
     * 设置
     *
     * @param age
     */
    public void setAge(int age) {
        this.age = age;
    }

    /**
     * 获取
     *
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * 设置
     *
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Stu{" +
                "age=" + age +
                ", name='" + name + '\'' +
                '}';
    }

    /**
     * 获取
     * @return user
     */
    public User getUser() {
        return user;
    }

    /**
     * 设置
     * @param user
     */
    public void setUser(User user) {
        this.user = user;
    }
}
