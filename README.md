# Jeelite 企业信息化快速开发平台

## 平台简介

Jeelite是基于多个优秀的开源项目，高度整合封装而成的高效，高性能，强安全性的**开源**Java EE快速开发平台。
是您快速完成项目的最佳基础平台解决方案，是您想学习Java平台的最佳学习案例，还是接私活的最佳助手。

Jeelite是在SpringBoot基础上搭建的一个Java基础开发平台，以Spring MVC为模型视图控制器，MyBatis为数据访问层，
Apache Shiro为权限授权层，Ehcache对常用数据进行缓存。

Jeelite主要定位于企业信息化领域，已内置企业信息化系统的基础功能和高效的代码生成工具，
包括：系统权限组件、数据权限组件、数据字典组件、核心工具组件、视图操作组件、代码生成等。
前端界面采用了零门槛开箱即用的前端UI解决方案[Layui](http://www.layui.com)。
采用分层设计、双重验证、提交数据安全编码、密码加密、访问验证、数据权限验证。
使用Maven做项目管理，提高项目的易开发性、扩展性。

项目目前包括以下两大模块，系统管理（SYS）模块、代码生成（GEN）模块。 **系统管理模块** ，包括企业组织架构（用户管理、机构管理）、
菜单管理、角色权限管理、字典管理等功能；**代码生成模块** ，完成重复的工作。

还提供了对常用工具的封装，包括日志工具、缓存工具、服务器端验证、数据字典、当前组织机构数据
（用户、机构）以及其它常用小工具等。另外还提供一个强大的在线 **代码生成** 工具，
此工具提供简单的单表、一对多、树结构功能的生成，如果对外观要求不是很高，生成的功能就可以用了。
如果你使用了本基础框架，就可以很高效的快速开发出优秀的后台管理系统。

## 内置功能

1.	用户管理：用户是系统操作者，该功能主要完成系统用户配置。
2.	机构管理：配置系统组织机构（公司、部门、小组），树结构展现，可随意调整上下级。
3.	菜单管理：配置系统菜单，操作权限，按钮权限标识等。
4.	角色管理：角色菜单权限分配、设置角色按机构进行数据范围权限划分。
5.	字典管理：对系统中经常使用的一些较为固定的数据进行维护，如：是否、男女、类别、级别等。
6.	操作日志：系统正常操作日志记录和查询；系统异常信息日志记录和查询。
7.	连接池监视：监视当前系统数据库连接池的状态，可分析SQL找出系统性能瓶颈。

## 为何选择Jeelite

1. 使用 [Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0) 协议，源代码完全开源，无商业限制。
2. 使用目前主流的Java EE开发框架，简单易学，学习成本低。
3. 数据库无限制，目前支持MySql、Oracle、SQL Server，可扩充支持PostgreSQL、H2等。
4. 模块化设计，层次结构清晰。内置一系列企业信息管理的基础功能。
5. 操作权限控制精密细致，对所有管理链接都进行权限验证，可控制到按钮。
6. 数据权限控制精密细致，对指定数据集权限进行过滤，七种数据权限可供选择。
7. 提供在线功能代码生成工具，提高开发效率及质量。
8. 提供常用工具类封装，日志、缓存、验证、字典、组织机构等数据。
9. 兼容主流浏览器（IE6/7除外）。

## 技术选型

1、后端

* 核心框架：SpringBoot 1.5
* 安全框架：Apache Shiro 1.3
* 服务端验证：Hibernate Validator 5.3
* 布局框架：SiteMesh 2.4
* 持久层框架：MyBatis Plus 2.3
* 数据库连接池：Alibaba Druid 1.1
* 缓存框架：Ehcache 2.6、Redis
* 日志管理：SLF4J 1.7、Logback 1.1
* 工具类：Apache Commons、Jackson 2.8、Guava 20.0、POI 3.16

2、前端

* JS框架：jQuery 1.12。
* 前端框架：Layui。
* 客户端验证：JQuery Validation Plugin 1.16。
* 对话框：layer
* 树结构控件：jQuery zTree
* 日期控件： My97DatePicker

4、平台

* 数据库支持：目前仅提供MySql和Oracle数据库的支持，但不限于数据库，你可以很方便的更改为其它数据库
* 开发环境：Jdk1.8、Eclipse、Maven、Git

## 安全考虑

1. 开发语言：系统采用Java 语言开发，具有卓越的通用性、高效性、平台移植性和安全性。
2. 分层设计：（数据库层，数据访问层，业务逻辑层，展示层）层次清楚，低耦合，各层必须通过接口才能接入并进行参数校验（如：在展示层不可直接操作数据库），保证数据操作的安全。
3. 双重验证：用户表单提交双验证：包括服务器端验证及客户端验证，防止用户通过浏览器恶意修改（如不可写文本域、隐藏变量篡改、上传非法文件等），跳过客户端验证操作数据库。
4. 安全编码：用户表单提交所有数据，在服务器端都进行安全编码，防止用户提交非法脚本及SQL注入获取敏感数据等，确保数据安全。
5. 密码加密：登录用户密码进行SHA1散列加密，此加密方法是不可逆的。保证密文泄露后的安全问题。
6. 强制访问：系统对所有管理端链接都进行用户身份权限验证，防止用户直接填写url进行访问。

## 演示地址

* 暂无

## 快速体验

1. 具备运行环境：JDK1.8、Maven3.0+、MySql5+或Oracle10g+。
2. 修改src\main\resources\application.properties文件中的数据库设置参数。
3. 根据修改参数创建对应MySql或Oracle数据库用户和参数。
4. 运行db\init-db.bat脚本(mysql可直接导入db目录下jeelite-mysql.sql)，即可导入表结构及演示数据(linux操作系统：在控制台中切换至项目根目录，运行命令：mvn antrun:run -Pinit-db)
5. 运行bin\run-tomcat7.bat或bin\run-jetty.bat，启动Web服务器（第一次运行，需要下载依赖jar包，请耐心等待）。
6. 最高管理员账号，用户名：admin 密码：admin

## 常见问题

1. 用一段时间提示内存溢出，请修改JVM参数：-Xmx512m -XX:MaxPermSize=256m
2. 有时出现文字乱码：修改Tomcat的server.xml文件的Connector项，增加URIEncoding="UTF-8"
3. 为什么新建菜单后看不到新建的菜单？因为授权问题，菜单管理只允许最高管理员账号管理（最高管理员默认账号：admin 密码：admin）。

## 更多文档

* <https://github.com/xusheng1987/jeelite/tree/master/doc>

## 版权声明

本软件使用 [Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0) 协议，请严格遵照协议内容：

1. 需要给代码的用户一份Apache Licence。
2. 如果你修改了代码，需要在被修改的文件中说明。
3. **在延伸的代码中（修改和有源代码衍生的代码中）需要带有原来代码中的协议，商标，专利声明和其他原来作者规定需要包含的说明。**
4. 如果再发布的产品中包含一个Notice文件，则在Notice文件中需要带有Apache Licence。你可以在Notice中增加自己的许可，但不可以表现为对Apache Licence构成更改。
5. Apache Licence也是对商业应用友好的许可。使用者也可以在需要的时候修改代码来满足需要并作为开源或商业产品发布/销售
6. 你可以二次包装出售，**但还请保留文件中的版权和作者信息**，并在你的产品说明中注明Jeelite。
7. 你可以以任何方式获得，你可以修改包名或类名，**但还请保留文件中的版权和作者信息**。
