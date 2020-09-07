# JSP
## 1：配置Servlet
xml方式配置
注解方式配置

## 2： Servlet

```text
Servlet  爷爷  有init getServletConfig service getServletInfo destroy
GenericServlet  爸爸  实现了Servlet的一些方法  主要实现了method的分发
HTTPServlet  儿子  继承自GenericServlet
```

## 3：jsp基本写法
```html
<% %>  Java脚本和调用java方法
<%！ %>声明Java方法
<%= %> 结果调用
```


## 4：jsp内置对象
```html
request:
  String id = request.getParameter("id");
            String[] names = request.getParameterValues("name");//得到多个同名的数据
            request.setCharacterEncoding("UTF-8");//设置编码
            Integer integer = Integer.valueOf(id);
            integer++;
            request.setAttribute("ia",integer);
            request.getRequestDispatcher("test2.jsp").forward(request,response);  //转发请求  能携带数据
    

​        Integer ia = (Integer) request.getAttribute("ia");

​        response:
​        response.sendRedirect("test.jsp"); //不能携带数据  重定向 是一个新的请求

​        session：会话  客户端和服务器之间发生的一系列连续的请求于响应过程 作用于服务端
​        session.getId(); 获取sessionId
​        session.setMaxInactiveInterval();设置session的失效时间，单位为秒
​        session.getMaxInactiveInterval();获取最大失效时间

​        session.invalidate();立即失效
​        setAttribute 通过key value存储数据 修改
​        getAttribute 取数据
​        removeAttribute 删除数据
​        session.invalidate();会话失效

​        Cookie: 会话  作用于客户端
​        服务端在HTTP响应中附带传给浏览器的一个小文本文件，
​        一旦浏览器保存了某个cookie，在之后的请求和响应中，会将其cookie来回传递
​        通过其完成客户端和服务端的数据交互
​        创建Cookie
​        Cookie cookie=new Cookie("name","zhangsan");
​        response.addCookie(cookie);
​        取Cookie
​        Cookie[] cookies = request.getCookies();
​        for (Cookie cookie : cookies)
​        {
​            System.out.println(cookie);
​        }
​        设置cookie时间
​         cookie.setMaxAge(123); //单位为s  默认为关闭浏览器就过期
​            cookie.getMaxAge();
​            cookie.getName();
​            cookie.getValue();
​         实现session的登录、退出 login1.jsp LoginServlet.class、LogoutServlet.class
​         实现cookie的登录、退出 login1.jsp、CookieLogin.class、CookieLogout.class
```
## 4：jsp对象作用域  
```html
   page.jsp request.jsp  作用效果从大到小
   application：表示当前Web应用 全局对象，保存所有用户信息 ServletContext
   对应的内置对象 application 整个web生效
    session：表示一次会话 对应的内置对象 session 同一个会话生效
   request：表示一次请求 HttpServletRequest  对应的内置对象 request 同一次请求
   page：当前jsp对应的servlet对象 对应的内置对象pageContext  仅当前页面生效
   有这两个方法：
   setAttribute
   getAttribute
```
## 5：EL表达式
```html
<%
    pageContext.setAttribute("name","tom");
    request.setAttribute("name","tom1");
    session.setAttribute("name","tom2");
    application.setAttribute("name","tom3");
%>
${name}  同名的话，按照从小到大的作用域取 page开始
${pageScope.name}
${requestScope.name}
${sessionScope.name}
${applicationScope.name}
级联操作
<%
    Stu stu = new Stu(2, "2",new User("张三",33));
    pageContext.setAttribute("stu", stu);
%>

<hr>
${stu}<%--实际就是通过实体类的set、get方法取值--%>
${stu.age}
${stu.name="222"}
<hr>
${stu.user}
${stu.user.name}
${stu.user.age=333}
```
## 6：JSTL



### 1 在lib中引入jar包
   在lib中引入jar包
### 2 在jsp页面import
​    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
### 3:使用
    <c:forEach items="${list}" var="user">
        <tr>
            <td>${user.name}</td>
            <td>${user.age}</td>
        </tr>
    </c:forEach>
### 4：常用标签
 #### set 向域对象中添加数据
```
 <c:set var="name" value="tom" scope="request"></c:set> 默认为page
 相当于scope.setAttribute(var,value)
 <%
    User user=new User("张三",33);
    request.setAttribute("user",user);//先set
 %>
 ${user.name}
 <c:set target="${user}" property="name" value="李四"></c:set> 修改值
 ${user.name}
 <c:out value="${name}" default="tom"></c:out> 输出值
 <c:remove var="name" scope="request"></c:remove> 删除
 <c:catch var="error">  异常处理
    <%
        int a=10/0;
    %>
 </c:catch>
 ${error}
```



 #### if语句
```
 <c:set var="num1" value="1"></c:set>
 <c:set var="num2" value="2"></c:set>
 <c:if test="${num1>num2}">OK</c:if>
 <c:if test="${num1<num2}">fail</c:if>
```

 #### choose语句
```
 <c:choose>
    <c:when test="${num1>num2}">OK</c:when>
    <c:otherwise>fail</c:otherwise>
 </c:choos
```

#### foreach
```
<c:forEach items="${list}" var="list" begin="2" step="2" varStatus="sta">
    ${sta.count}
    ${list}<br/>
</c:forEach>
```
### format格式化标签库
```html
 使用之前 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    request.setAttribute("date",new Date());
%>
<!--日期转换-->
<c:formatDate value="${date}" pattern="yyyy-MM-dd HH:mm:ss"></c:formatDate>
<!--值转换  maxInteger取.前面的位数 maxF 取.后面-->
<c:formatNumber value="${231123.2312}" maxIntegerDigits="2" maxFractionDigits="3"></c:formatNumber>
```
### 函数标签库
```html
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    request.setAttribute("date", new Date());
    request.setAttribute("info", "Java,C");
%>
<cdd:formatDate value="${date}" pattern="yyyy-MM-dd HH:mm:ss"></cdd:formatDate>
<%--<cdd:formatNumber value="${231123.2312}" maxIntegerDigits="2" maxFractionDigits="3"></cdd:formatNumber>--%>
${info}
${fn:contains(info,"python")}<%--是否存在python--%>
${fn:startsWith(info, "Java")}<%--是否java开头--%>
${fn:indexOf(info,"va")}<%--va的下标--%>
${fn:replace(info, "C","python")}<%--C替换为python--%>
${fn:substring(info, 2,4)}
${fn:split(info, ",")[0]}-${fn:split(info, ",")[1]}
```
### 7：过滤器
Filter  
+ 作用:  
   - 拦截传入的请求和传出的响应  
   - 修改或以某种方式处理正在客户端和服务端交互的数据  
+ 使用  
   + 自定义一个类实现接口  
```java
public class CharacterFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        servletRequest.setCharacterEncoding("UTF-8"); //进行操作
        filterChain.doFilter(servletRequest,servletResponse);//必须要的 向下走
    }

    @Override
    public void destroy() {

    }
}
```
+ web.xml配置或注解配置
```html  
多个filte时 由配置循序决定执行顺序
    <filter>
        <filter-name>charart</filter-name>
        <filter-class>com.ms.ser.filter.CharacterFilter</filter-class>
    </filter>
    <filter-mapping>
        <filter-name>charart</filter-name>
        <url-pattern>/*</url-pattern> 过滤的url地址
        <url-pattern>/*</url-pattern> 
    </filter-mapping>
```
+ 生命周期  
当tomcat启动时就会创建并初始化，每进行一次访问调用一次doFilter方法，tomcat关闭时销毁  
+ 使用场景  
    1. 同意处理中文乱码  
    2. 屏蔽敏感词  
    3. 控制资源访问权限
### 8：上传下载  
#### 上传  

```html
JSP
form的标签enctype method  input的type 这样设置为文件以二级制流传输 没有enctype，只是传递文件名字
<form action="/upload" method="post" enctype="multipart/form-data">
    <input type="file" name="image">
    <input type="submit" value="提交">
</form>
```
##### FileUpload文件上传

1. FileUpload分析
  fileUpload是apache的commons组件提供的上传组件，它最主要的工作就是帮我们解析request.getInpustream()。可以参考在线API文档：http://tool.oschina.net/apidocs/apidoc?api=commons-fileupload

  使用fileUpload组件首先需要引入两个jar包：
  commons-fileUpload.jar
  commons-io.jar
  fileUpload的核心类有DiskFileItemFactory、ServletFileUpload、FileItem。

2. 使用fileUpload固定步骤：

   创建工厂类：DiskFileItemFactory factory=new DiskFileItemFactory();
   创建解析器：ServletFileUpload upload=new ServletFileUpload(factory);
   使用解析器解析request对象：List<FileItem> list=upload.parseRequest(request);

3. 一个FileItem对象对应一个表单项。FileItem类有如下方法：
  String getFieldName()：获取表单项的name的属性值。
  String getName()：获取文件字段的文件名。如果是普通字段，则返回null
  String getString()：获取字段的内容。如果是普通字段，则是它的value值；如果是文件字段，则是文件内容。
  String getContentType()：获取上传的文件类型，例如text/plain、image。如果是普通字段，则返回null。
  long getSize()：获取字段内容的大小，单位是字节。
  boolean isFormField()：判断是否是普通表单字段，若是，返回true，否则返回false。
  InputStream getInputStream()：获得文件内容的输入流。如果是普通字段，则返回value值的输入流。
4. 使用fileUpload组件实现文件上传除了上面的那些方法之外还要注意的：  
  文件名中文乱码处理：servletFileUpload.setHeaderEncoding("utf-8") 或 request.setCharacterEncoding("utf-8");
  表单普通字段中文乱码处理：new String(str.getBytes("iso-8859-1","utf-8"));
  设置内存缓冲区的大小，默认为10KB：diskFileItemFactory.setSizeThreshold(1024*1024);
  指定临时文件目录，如果单个文件的大小超过内存缓冲区，该文件将会临时缓存在此目录下：diskFileItemFactory.setRepository(file);
  设置单个文件大小限制，如果有某个文件超过此大小，将抛出FileUploadBase.FileSizeLimitExceededException：servletFileUpload.setFileSizeMax(1024*1024*10);
  设置所有文件，也就是请求大小限制，如果文件总和超过此大小，将抛出FileUploadBase.SizeLimitExceededException：servletFileUpload.setSizeMax(1024*1024*20);
  利用UUID生成伪随机字符串作为文件名避免重复：UUID.randomUUID().toString();
  将文件写到硬盘上。写完之后，系统会自动将放在临时文件目录的该文件删除：fileItem.write(new File(path,fileName));

```java
//Servlet 使用FileUpload实现

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import sun.misc.IOUtils;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
 
@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DiskFileItemFactory factory=new DiskFileItemFactory();
        ServletFileUpload upload=new ServletFileUpload(factory);
        try {
            List<FileItem> list=upload.parseRequest(request);
            for (FileItem fileItem:list){
                System.out.println("fieldName:"+fileItem.getFieldName());
                System.out.println("name:"+fileItem.getName());
                System.out.println("string:"+fileItem.getString());
                System.out.println("contentType:"+fileItem.getContentType());
                System.out.println("size:"+fileItem.getSize()+"byte");
                System.out.println("isFieldForm:"+fileItem.isFormField());
                System.out.println("inputStream:"+ org.apache.commons.io.IOUtils.toString(fileItem.getInputStream()));
                System.out.println("*************");
            }
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
```
#### 下载  
有道云笔记搜
### Ajax  
定义：交互方式，异步加载，客户端和服务端的数据交互更新在局部页面的技术。不需要刷新整个页面  
优点：  
1. 局部刷新，效率更高  
2. 用户体验更好