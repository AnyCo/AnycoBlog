/*
Navicat MySQL Data Transfer

Source Server         : xucoach
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : db_blog

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-11-26 22:48:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `summary` varchar(400) DEFAULT NULL,
  `releaseDate` datetime DEFAULT NULL,
  `clickHit` int(11) DEFAULT NULL,
  `replyHit` int(11) DEFAULT NULL,
  `content` text,
  `typeId` int(11) DEFAULT NULL,
  `keyWord` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `typeId` (`typeId`),
  CONSTRAINT `t_blog_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `t_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES ('72', 'test blog', 'test modify.....', '2017-11-26 00:15:37', '21', '7', '<p>test modify.....</p>', '1', 'test');
INSERT INTO `t_blog` VALUES ('73', 'test blog', 'test blog', '2017-11-26 17:23:06', '0', '0', '<p>test blog</p>', '1', 'test');
INSERT INTO `t_blog` VALUES ('74', ' 在Maven项目中使用tomcat插件来部署Web项目', '<build>        <plugins>            <plugin>                <groupId>org.apache.tomcat.maven</groupId>                <artifactId>tomcat7-maven-plugin</art', '2017-11-26 19:06:53', '10', '0', '<pre class=\"brush:java;toolbar:false\">&lt;build&gt;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;plugins&gt;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;plugin&gt;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;groupId&gt;org.apache.tomcat.maven&lt;/groupId&gt;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;artifactId&gt;tomcat7-maven-plugin&lt;/artifactId&gt;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;version&gt;2.2&lt;/version&gt;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;configuration&gt;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&nbsp;这里配置端口号和访问路径&nbsp;--&gt;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;port&gt;7777&lt;/port&gt;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;path&gt;/MyBlog&lt;/path&gt;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/configuration&gt;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/plugin&gt;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/plugins&gt;\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;/build&gt;</pre><p><span style=\"color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; background-color: rgb(255, 255, 255); font-size: 14px;\">在这里port节点配置的是端口，path结点配置的是浏览器访问的路径，tomcat启动后，如果是在localhost环境下调试项目，那么我们访问项目的路径是locahost:7777/MyBlog。</span><span style=\"color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 15px; background-color: rgb(255, 255, 255);\"></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 14px;\">在这里必须要注意一下，如果我们的项目中使用了tomcat插件来部署web项目，<span style=\"color: rgb(255, 0, 0);\">以下两个依赖的scope必须设置为provided的，否则tomcat:run时会报错</span><span style=\"color: rgb(255, 0, 0);\">。&nbsp;</span></span></p><pre class=\"brush:xml;toolbar:false\">&lt;dependency&gt;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;groupId&gt;javax.servlet&lt;/groupId&gt;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;artifactId&gt;javax.servlet-api&lt;/artifactId&gt;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;version&gt;3.1.0&lt;/version&gt;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;scope&gt;provided&lt;/scope&gt;&nbsp;&nbsp;\n&lt;/dependency&gt;&nbsp;&nbsp;\n&nbsp;&nbsp;\n&lt;dependency&gt;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;groupId&gt;javax.servlet.jsp&lt;/groupId&gt;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;artifactId&gt;javax.servlet.jsp-api&lt;/artifactId&gt;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;version&gt;2.3.1&lt;/version&gt;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;scope&gt;provided&lt;/scope&gt;&nbsp;&nbsp;\n&lt;/dependency&gt;</pre><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 14px;\"><span class=\"s4\" style=\"margin: 0px; padding: 0px; color: rgb(69, 69, 69); font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun;\"><br/></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 14px;\"><span class=\"s4\" style=\"margin: 0px; padding: 0px; color: rgb(69, 69, 69); font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun;\">因为</span><span class=\"s3\" style=\"margin: 0px; padding: 0px; color: rgb(69, 69, 69); font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun;\">servlet-api</span><span class=\"s4\" style=\"margin: 0px; padding: 0px; color: rgb(69, 69, 69); font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun;\">，</span><span class=\"s3\" style=\"margin: 0px; padding: 0px; color: rgb(69, 69, 69); font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun;\">tomcat</span><span class=\"s4\" style=\"margin: 0px; padding: 0px; color: rgb(69, 69, 69); font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun;\">等</span><span class=\"s3\" style=\"margin: 0px; padding: 0px; color: rgb(69, 69, 69); font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun;\">web</span><span class=\"s4\" style=\"margin: 0px; padding: 0px; color: rgb(69, 69, 69); font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun;\">服务器已经存在了，如果再打包会冲突。</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 14px;\">第二步，使用Intellij IDEA（相对于Eclipse，个人更喜欢这个IDE）的tomcat7:run来启动tomcat。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 14px;\"><img src=\"http://img.blog.csdn.net/20171125002114835?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQveHU3Njg4NDA0OTc=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center\"/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 15px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 14px;\"><br/></span></p><p><br/></p>', '13', 'tomcat 部署');
INSERT INTO `t_blog` VALUES ('75', '[编程题]binary-tree-inorder-traversal', 'Given a binary tree, return the inorder traversal of its nodes\' values.For example:Given binary tree{1,#,2,3},   1    \\     2    /   3return[1,3,2].Note: R', '2017-11-26 22:20:25', '4', '0', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.4em; color: rgb(90, 103, 111); font-family: arial, STHeiti, &quot;Microsoft YaHei&quot;, 宋体; font-size: 14px;\">Given a binary tree, return the&nbsp;<em>inorder</em>&nbsp;traversal of its nodes&#39; values.</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.4em; color: rgb(90, 103, 111); font-family: arial, STHeiti, &quot;Microsoft YaHei&quot;, 宋体; font-size: 14px;\">For example:<br/>Given binary tree{1,#,2,3},</p><pre style=\"white-space: pre-wrap; word-wrap: break-word; margin-top: 0.8em; margin-bottom: 0.8em; padding: 10px 0px 10px 10px; font-size: 14px; position: relative; border-left: 2px solid rgb(26, 188, 156); background-color: rgb(254, 254, 254); word-break: break-all; font-family: Courier, &quot;Courier New&quot;, monospace; color: rgb(90, 103, 111);\">&nbsp;&nbsp;&nbsp;1\n&nbsp;&nbsp;&nbsp;&nbsp;\\\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2\n&nbsp;&nbsp;&nbsp;&nbsp;/\n&nbsp;&nbsp;&nbsp;3</pre><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.4em; color: rgb(90, 103, 111); font-family: arial, STHeiti, &quot;Microsoft YaHei&quot;, 宋体; font-size: 14px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.4em; color: rgb(90, 103, 111); font-family: arial, STHeiti, &quot;Microsoft YaHei&quot;, 宋体; font-size: 14px;\">return[1,3,2].</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.4em; color: rgb(90, 103, 111); font-family: arial, STHeiti, &quot;Microsoft YaHei&quot;, 宋体; font-size: 14px;\"><span style=\"color: rgb(0, 0, 0);\">Note:</span>&nbsp;Recursive solution is trivial, could you do it iteratively?</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.4em; color: rgb(90, 103, 111); font-family: arial, STHeiti, &quot;Microsoft YaHei&quot;, 宋体; font-size: 14px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.4em; color: rgb(90, 103, 111); font-family: arial, STHeiti, &quot;Microsoft YaHei&quot;, 宋体; font-size: 14px;\">使用非递归的方法来中序遍历二叉树。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.4em; color: rgb(90, 103, 111); font-family: arial, STHeiti, &quot;Microsoft YaHei&quot;, 宋体; font-size: 14px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.4em; color: rgb(90, 103, 111); font-family: arial, STHeiti, &quot;Microsoft YaHei&quot;, 宋体; font-size: 14px;\">/**<br/>&nbsp;* Definition for binary tree<br/>&nbsp;* public class TreeNode {<br/>&nbsp;*&nbsp; &nbsp; &nbsp;int val;<br/>&nbsp;*&nbsp; &nbsp; &nbsp;TreeNode left;<br/>&nbsp;*&nbsp; &nbsp; &nbsp;TreeNode right;<br/>&nbsp;*&nbsp; &nbsp; &nbsp;TreeNode(int x) { val = x; }<br/>&nbsp;* }<br/>&nbsp;*/<br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.4em; color: rgb(90, 103, 111); font-family: arial, STHeiti, &quot;Microsoft YaHei&quot;, 宋体; font-size: 14px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.4em; color: rgb(90, 103, 111); font-family: arial, STHeiti, &quot;Microsoft YaHei&quot;, 宋体; font-size: 14px;\"><br/></p><p><strong>[java]</strong>&nbsp;<a href=\"http://blog.csdn.net/xu768840497/article/details/78597106#\" class=\"ViewSource\" title=\"view plain\" target=\"_blank\" style=\"text-decoration-line: none; background-image: url(&quot;images/default/ico_plain.gif&quot;); background-position: left top; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: inherit; border: none; padding: 1px; margin: 0px 10px 0px 0px; font-size: 9px; color: rgb(12, 137, 207); display: inline-block; width: 16px; height: 16px; text-indent: -2000px;\">view plain</a><span data-mod=\"popu_168\">&nbsp;<a href=\"http://blog.csdn.net/xu768840497/article/details/78597106#\" class=\"CopyToClipboard\" title=\"copy\" target=\"_blank\" style=\"text-decoration-line: none; background-image: url(&quot;images/default/ico_copy.gif&quot;); background-position: left top; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: inherit; border: none; padding: 1px; margin: 0px 10px 0px 0px; font-size: 9px; color: rgb(12, 137, 207); display: inline-block; width: 16px; height: 16px; text-indent: -2000px;\">copy</a></span><span data-mod=\"popu_169\"></span></p><ol start=\"1\" class=\"dp-j list-paddingleft-2\" style=\"padding: 0px; border-top: none; border-right: 1px solid rgb(231, 229, 220); border-bottom: none; border-left: none; border-image: initial; list-style-position: initial; list-style-image: initial; background-color: rgb(255, 255, 255); color: rgb(92, 92, 92); margin-bottom: 1px !important; margin-left: 45px !important;\"><li><p><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">import</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;java.util.ArrayList;&nbsp;&nbsp;</span></span></p></li></ol><p><strong>[java]</strong>&nbsp;<a href=\"http://blog.csdn.net/xu768840497/article/details/78597106#\" class=\"ViewSource\" title=\"view plain\" target=\"_blank\" style=\"text-decoration-line: none; background-image: url(&quot;images/default/ico_plain.gif&quot;); background-position: left top; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: inherit; border: none; padding: 1px; margin: 0px 10px 0px 0px; font-size: 9px; color: rgb(12, 137, 207); display: inline-block; width: 16px; height: 16px; text-indent: -2000px;\">view plain</a><span data-mod=\"popu_168\">&nbsp;<a href=\"http://blog.csdn.net/xu768840497/article/details/78597106#\" class=\"CopyToClipboard\" title=\"copy\" target=\"_blank\" style=\"text-decoration-line: none; background-image: url(&quot;images/default/ico_copy.gif&quot;); background-position: left top; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: inherit; border: none; padding: 1px; margin: 0px 10px 0px 0px; font-size: 9px; color: rgb(12, 137, 207); display: inline-block; width: 16px; height: 16px; text-indent: -2000px;\">copy</a></span><span data-mod=\"popu_169\"></span></p><ol start=\"1\" class=\"dp-j list-paddingleft-2\" style=\"padding: 0px; border-top: none; border-right: 1px solid rgb(231, 229, 220); border-bottom: none; border-left: none; border-image: initial; list-style-position: initial; list-style-image: initial; background-color: rgb(255, 255, 255); color: rgb(92, 92, 92); margin-bottom: 1px !important; margin-left: 45px !important;\"><li><p><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">import</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;java.util.Stack;&nbsp;&nbsp;</span></span></p></li><li><p><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">public</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;</span><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">class</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;Solution&nbsp;{&nbsp;&nbsp;</span></span></p></li><li><p><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p></li><li><p><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">public</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;ArrayList&lt;Integer&gt;&nbsp;inorderTraversal(TreeNode&nbsp;root)&nbsp;{&nbsp;&nbsp;</span></span></p></li><li><p><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ArrayList&lt;Integer&gt;&nbsp;list&nbsp;=&nbsp;<span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">new</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;ArrayList&lt;Integer&gt;();&nbsp;&nbsp;</span></span></p></li><li><p><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Stack&lt;TreeNode&gt;&nbsp;stack&nbsp;=&nbsp;<span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">new</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;Stack&lt;TreeNode&gt;();&nbsp;&nbsp;</span></span></p></li><li><p><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">while</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">(!stack.isEmpty()&nbsp;||&nbsp;root!=</span><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">null</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">)&nbsp;{&nbsp;&nbsp;</span></span></p></li><li><p><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">while</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">(root&nbsp;!=&nbsp;</span><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">null</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">)&nbsp;{&nbsp;&nbsp;</span></span></p></li><li><p><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;stack.push(root);&nbsp;&nbsp;</span></p></li><li><p><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;root&nbsp;=&nbsp;root.left;&nbsp;&nbsp;</span></p></li><li><p><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;</span></p></li><li><p><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;root&nbsp;=&nbsp;stack.pop();&nbsp;&nbsp;&nbsp;</span></p></li><li><p><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;list.add(root.val);&nbsp;&nbsp;</span></p></li><li><p><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;root&nbsp;=&nbsp;root.right;&nbsp;&nbsp;</span></p></li><li><p><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">continue</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">;&nbsp;&nbsp;</span></span></p></li><li><p><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;</span></p></li><li><p><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">return</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;list;&nbsp;&nbsp;</span></span></p></li><li><p><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;</span></p></li><li><p><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">}&nbsp;&nbsp;</span></p></li></ol><p><br/></p>', '14', '算法 二叉树');

-- ----------------------------
-- Table structure for t_blogger
-- ----------------------------
DROP TABLE IF EXISTS `t_blogger`;
CREATE TABLE `t_blogger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `profile` text,
  `nickName` varchar(50) DEFAULT NULL,
  `sign` varchar(100) DEFAULT NULL,
  `imageName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_blogger
-- ----------------------------
INSERT INTO `t_blogger` VALUES ('1', 'anyco', 'd4ce4828ad834fd92712104e66308fe7', '<p>test modify personal statement</p>', 'anyco', 'in my timezone', '20171126032248.jpg');

-- ----------------------------
-- Table structure for t_blogtype
-- ----------------------------
DROP TABLE IF EXISTS `t_blogtype`;
CREATE TABLE `t_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(30) DEFAULT NULL,
  `orderNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_blogtype
-- ----------------------------
INSERT INTO `t_blogtype` VALUES ('1', 'Java核心基础', '1');
INSERT INTO `t_blogtype` VALUES ('2', 'Mysql', '2');
INSERT INTO `t_blogtype` VALUES ('7', 'shiro', '4');
INSERT INTO `t_blogtype` VALUES ('11', 'hibernate', '5');
INSERT INTO `t_blogtype` VALUES ('12', 'maven', '5');
INSERT INTO `t_blogtype` VALUES ('13', '项目部署', '7');
INSERT INTO `t_blogtype` VALUES ('14', '手撕算法', '1');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userIp` varchar(50) DEFAULT NULL,
  `blogId` int(11) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `commentDate` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=344 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('18', '221.204.14.22', '44', '评论测试', '2016-02-02 15:56:03', '1');
INSERT INTO `t_comment` VALUES ('20', '221.204.14.22', '43', '评测再测', '2016-02-02 17:54:05', '1');
INSERT INTO `t_comment` VALUES ('21', '221.204.14.21', '45', '3222222224', '2016-02-02 18:43:45', '1');
INSERT INTO `t_comment` VALUES ('22', '221.204.14.21', '39', '峰哥你猜我是谁', '2016-02-02 18:44:09', '1');
INSERT INTO `t_comment` VALUES ('24', '202.102.85.15', '45', 'dfdsfd', '2016-02-02 19:09:32', '1');
INSERT INTO `t_comment` VALUES ('25', '202.102.85.15', '45', 'dfdsfd', '2016-02-02 19:09:42', '1');
INSERT INTO `t_comment` VALUES ('26', '120.52.18.54', '40', '沙发沙发', '2016-02-02 19:12:48', '1');
INSERT INTO `t_comment` VALUES ('32', '125.88.189.20', '45', 'dsfadsfds', '2016-02-02 19:33:16', '1');
INSERT INTO `t_comment` VALUES ('33', '120.52.18.45', '39', '2332', '2016-02-02 21:05:52', '1');
INSERT INTO `t_comment` VALUES ('34', '221.204.14.22', '45', 'alert(\'1\')', '2016-02-02 21:22:44', '1');
INSERT INTO `t_comment` VALUES ('35', '221.204.14.22', '45', 'alert(\'1\')', '2016-02-02 21:23:28', '1');
INSERT INTO `t_comment` VALUES ('36', '61.240.144.21', '44', '赞赞赞！！！', '2016-02-02 22:22:24', '1');
INSERT INTO `t_comment` VALUES ('37', '222.73.144.28', '45', '真厉害!', '2016-02-03 00:11:27', '1');
INSERT INTO `t_comment` VALUES ('38', '125.88.189.21', '45', '溜脾', '2016-02-03 08:06:46', '1');
INSERT INTO `t_comment` VALUES ('39', '125.88.189.21', '45', '溜脾', '2016-02-03 08:06:51', '1');
INSERT INTO `t_comment` VALUES ('40', '120.52.18.45', '45', 'alert(\"溜脾\");', '2016-02-03 09:48:31', '1');
INSERT INTO `t_comment` VALUES ('41', '202.102.85.19', '45', '12312312312', '2016-02-03 10:06:40', '1');
INSERT INTO `t_comment` VALUES ('42', '202.102.85.19', '45', '15615615615616156515', '2016-02-03 10:06:58', '1');
INSERT INTO `t_comment` VALUES ('43', '125.88.189.12', '39', '牛掰', '2016-02-03 10:46:21', '1');
INSERT INTO `t_comment` VALUES ('44', '222.73.144.32', '44', '应用', '2016-02-03 11:04:18', '1');
INSERT INTO `t_comment` VALUES ('45', '202.102.85.15', '45', '6666', '2016-02-03 11:19:40', '1');
INSERT INTO `t_comment` VALUES ('46', '222.73.144.27', '45', '楼主每天花在学习上的时间是多少 ？', '2016-02-03 11:40:14', '1');
INSERT INTO `t_comment` VALUES ('47', '222.73.144.27', '45', '尔', '2016-02-03 11:41:23', '1');
INSERT INTO `t_comment` VALUES ('48', '222.73.144.27', '45', '如同仁堂', '2016-02-03 11:41:35', '1');
INSERT INTO `t_comment` VALUES ('49', '222.73.144.30', '45', '这个站点不错，我喜欢这样的风格，很简洁', '2016-02-03 13:33:34', '1');
INSERT INTO `t_comment` VALUES ('50', '125.88.189.19', '41', '博主说得不错哦', '2016-02-03 14:02:21', '1');
INSERT INTO `t_comment` VALUES ('51', '221.204.14.24', '41', '赞', '2016-02-03 15:50:30', '1');
INSERT INTO `t_comment` VALUES ('52', '221.204.14.24', '40', 'Σ( ° △ °|||)︴ ', '2016-02-03 15:51:41', '1');
INSERT INTO `t_comment` VALUES ('53', '120.52.18.49', '47', '不错啊', '2016-02-03 17:24:14', '1');
INSERT INTO `t_comment` VALUES ('54', '120.52.18.49', '39', '不错', '2016-02-03 17:25:04', '1');
INSERT INTO `t_comment` VALUES ('59', '202.102.85.17', '45', 'hahaha', '2016-02-03 20:38:33', '1');
INSERT INTO `t_comment` VALUES ('60', '183.136.133.29', '39', '好牛逼啊', '2016-02-03 20:46:56', '1');
INSERT INTO `t_comment` VALUES ('61', '221.204.14.22', '47', '额外无污染', '2016-02-03 21:42:34', '1');
INSERT INTO `t_comment` VALUES ('62', '221.204.14.27', '44', '生活是一种态度！', '2016-02-03 22:48:06', '1');
INSERT INTO `t_comment` VALUES ('63', '113.17.174.44', '40', '相見恨晚', '2016-02-04 00:55:43', '1');
INSERT INTO `t_comment` VALUES ('64', '113.17.174.47', '41', '赞', '2016-02-04 01:54:47', '1');
INSERT INTO `t_comment` VALUES ('65', '120.52.18.47', '44', '赞', '2016-02-04 09:14:42', '1');
INSERT INTO `t_comment` VALUES ('66', '120.52.18.47', '44', '赞赞赞', '2016-02-04 09:15:03', '1');
INSERT INTO `t_comment` VALUES ('67', '120.52.18.47', '42', '赞赞赞', '2016-02-04 09:15:28', '1');
INSERT INTO `t_comment` VALUES ('68', '222.73.144.27', '39', '不是有主站吗，怎么专门开一个博客了', '2016-02-04 09:51:13', '1');
INSERT INTO `t_comment` VALUES ('69', '120.52.18.49', '47', '：）', '2016-02-04 09:57:34', '1');
INSERT INTO `t_comment` VALUES ('70', '120.52.18.49', '47', '耶？师傅我刚发表的文字咋不见了~~~', '2016-02-04 10:11:55', '1');
INSERT INTO `t_comment` VALUES ('71', '221.204.14.23', '47', 'webservice 有的人一看到这个，估计会认为这个是一种新技术，一种新框架。\n\n其实不是，严格的说，webservice是一种跨平台，跨语言的规范，用于不同平台，不同语言开发的应用之间的交互。\n\n\n\n  这里具体举个例子，比如在Windows Server服务器上有个C#.Net开发的应用A，在Linux上有个Java语言开发的应用B，\n\nB应用要调用A应用，或者是互相调用。用于查看对方的业务数据。\n\n  再举个例子，天气预报接口。无数的应用需要获取天气预报信息；这些应用可能是各种平台，各种技术实现；而气象局的项目，估计也就一两种，要对外提供天气预报信息，这个时候，如何解决呢？\n\n\n\n  webservice就是出于以上类似需求而定义出来的规范；\n\n  \n\n  开发人员一般就是在具体平台开发webservice接口，以及调用webservice接口；每种开发语言都有自己的webservice实现框架。比如Java 就有 Apache Axis1、Apache Axis2、Codehaus XFire、Apache CXF、Apache Wink、Jboss  RESTEasyd等等...', '2016-02-04 10:39:56', '1');
INSERT INTO `t_comment` VALUES ('72', '183.136.133.31', '39', '大神就是这样玩的', '2016-02-04 11:28:05', '1');
INSERT INTO `t_comment` VALUES ('73', '61.160.224.135', '40', '来看看', '2016-02-04 12:11:02', '1');
INSERT INTO `t_comment` VALUES ('74', '113.17.174.48', '39', '好厉害', '2016-02-04 14:37:24', '1');
INSERT INTO `t_comment` VALUES ('75', '113.17.174.48', '39', '好厉害', '2016-02-04 14:37:59', '1');
INSERT INTO `t_comment` VALUES ('76', '120.52.18.51', '44', '这个评论不需要注册的么', '2016-02-04 15:39:13', '1');
INSERT INTO `t_comment` VALUES ('77', '120.52.18.50', '47', '天天天天天天', '2016-02-04 16:00:32', '1');
INSERT INTO `t_comment` VALUES ('78', '120.52.18.50', '47', '吞吞吐吐', '2016-02-04 16:01:06', '1');
INSERT INTO `t_comment` VALUES ('79', '222.73.144.31', '48', '123123', '2016-02-04 19:36:19', '1');
INSERT INTO `t_comment` VALUES ('80', '222.73.144.31', '48', '来说两句', '2016-02-04 19:36:36', '1');
INSERT INTO `t_comment` VALUES ('81', '221.204.14.23', '44', '让他有让他有额y', '2016-02-04 21:05:52', '1');
INSERT INTO `t_comment` VALUES ('82', '221.204.14.23', '48', '为', '2016-02-05 11:12:45', '1');
INSERT INTO `t_comment` VALUES ('83', '221.204.14.23', '44', '2楼SB', '2016-02-05 11:14:03', '1');
INSERT INTO `t_comment` VALUES ('84', '221.204.14.28', '48', '审核测试', '2016-02-06 10:09:56', '1');
INSERT INTO `t_comment` VALUES ('85', '61.240.144.20', '48', '峰哥威武 峰哥威武 峰哥威武', '2016-02-06 17:37:41', '1');
INSERT INTO `t_comment` VALUES ('86', '202.102.85.19', '48', '1564156145', '2016-02-06 19:13:52', '1');
INSERT INTO `t_comment` VALUES ('87', '120.52.18.49', '48', '峰哥，具体怎么搞啊？可以给你发邮件咱们私聊吗？', '2016-02-06 21:59:48', '1');
INSERT INTO `t_comment` VALUES ('88', '120.52.18.49', '45', '峰哥，我是你的VIP会员呢。嘿嘿。个人觉得，一个技术网站，一方面是资源多。另一个方面就是需要有原创。这点峰哥做的可以。还有这个站点不就是屌丝记事本的原型吗。', '2016-02-06 22:03:15', '1');
INSERT INTO `t_comment` VALUES ('89', '221.204.14.25', '44', 'aa', '2016-02-07 11:55:10', '1');
INSERT INTO `t_comment` VALUES ('90', '202.102.85.20', '47', '不错不错', '2016-02-08 07:47:01', '1');
INSERT INTO `t_comment` VALUES ('91', '202.102.85.20', '47', '不错不错', '2016-02-08 07:47:02', '1');
INSERT INTO `t_comment` VALUES ('92', '120.52.18.52', '48', '峰哥威武霸气，猴年吉祥', '2016-02-08 09:20:03', '1');
INSERT INTO `t_comment` VALUES ('93', '221.204.14.23', '48', '四大', '2016-02-08 22:05:52', '1');
INSERT INTO `t_comment` VALUES ('94', '221.204.14.24', '49', '新的一年，祝愿峰哥猴年大吉。\n', '2016-02-10 10:10:41', '1');
INSERT INTO `t_comment` VALUES ('95', '221.204.14.21', '49', '为什么这个评论楼层是倒着啊？！！先评论的是1楼，再一个评论先评论的就成2楼了', '2016-02-10 10:55:17', '1');
INSERT INTO `t_comment` VALUES ('96', '113.17.174.46', '49', '13年去北大青鸟学习过。。最后工作却与开发无关。。空余时间较多想学习安卓开发，可以前学的java忘的差不多了', '2016-02-10 15:18:12', '1');
INSERT INTO `t_comment` VALUES ('97', '202.102.85.19', '41', '读起来挺有感觉的，希望自己能每天进步一点点！加油', '2016-02-10 20:13:30', '1');
INSERT INTO `t_comment` VALUES ('98', '222.73.144.34', '44', 'test', '2016-02-11 10:22:19', '1');
INSERT INTO `t_comment` VALUES ('99', '125.88.189.13', '44', 'dsad', '2016-02-11 20:26:48', '1');
INSERT INTO `t_comment` VALUES ('100', '222.73.144.30', '44', 'test  叼扎天ip', '2016-02-12 10:11:09', '1');
INSERT INTO `t_comment` VALUES ('101', '202.102.85.15', '47', 'good', '2016-02-12 12:06:32', '1');
INSERT INTO `t_comment` VALUES ('102', '202.102.85.20', '49', '<font color=red>新年快乐</font>', '2016-02-12 16:55:57', '1');
INSERT INTO `t_comment` VALUES ('103', '183.136.133.29', '41', '赞', '2016-02-12 22:12:32', '1');
INSERT INTO `t_comment` VALUES ('104', '221.204.14.23', '39', '赞', '2016-02-13 19:18:04', '1');
INSERT INTO `t_comment` VALUES ('105', '61.160.224.139', '48', '测试下', '2016-02-13 20:55:16', '1');
INSERT INTO `t_comment` VALUES ('106', '61.160.224.139', '48', 'ad', '2016-02-13 21:06:08', '1');
INSERT INTO `t_comment` VALUES ('107', '125.88.189.14', '49', '看看', '2016-02-14 10:14:26', '1');
INSERT INTO `t_comment` VALUES ('108', '120.52.18.54', '49', '试试', '2016-02-14 12:46:00', '2');
INSERT INTO `t_comment` VALUES ('109', '120.52.18.54', '49', '试试', '2016-02-14 12:46:22', '1');
INSERT INTO `t_comment` VALUES ('110', '222.73.144.28', '48', '666', '2016-02-14 16:11:15', '1');
INSERT INTO `t_comment` VALUES ('111', '221.204.14.20', '50', '手动滑稽', '2016-02-14 19:21:52', '1');
INSERT INTO `t_comment` VALUES ('112', '125.88.189.18', '49', 'fghjk', '2016-02-14 19:56:22', '1');
INSERT INTO `t_comment` VALUES ('113', '202.102.85.15', '44', 'ee', '2016-02-14 20:37:16', '1');
INSERT INTO `t_comment` VALUES ('114', '125.88.189.12', '41', '解决了我的很多学习方法上的困惑，非常感谢！', '2016-02-15 11:18:05', '1');
INSERT INTO `t_comment` VALUES ('115', '222.73.144.27', '50', '用它在做爬虫', '2016-02-15 14:45:23', '1');
INSERT INTO `t_comment` VALUES ('116', '222.73.144.27', '50', '用它在做爬虫', '2016-02-15 14:45:43', '1');
INSERT INTO `t_comment` VALUES ('117', '221.204.14.21', '50', 'fffff', '2016-02-15 15:20:43', '1');
INSERT INTO `t_comment` VALUES ('118', '222.73.144.32', '44', '楼主厉害，汗颜', '2016-02-15 16:14:11', '1');
INSERT INTO `t_comment` VALUES ('119', '222.73.144.28', '39', '谢谢锋哥！', '2016-02-15 16:51:58', '1');
INSERT INTO `t_comment` VALUES ('120', '61.240.144.26', '48', '好~~~~~~~~~~~~', '2016-02-15 16:58:02', '1');
INSERT INTO `t_comment` VALUES ('121', '202.102.85.22', '42', 'asdf', '2016-02-16 09:03:05', '1');
INSERT INTO `t_comment` VALUES ('122', '183.136.133.42', '52', '配置完环境变量之后应该怎么验证是否配置成功了呢，因为我按照上面的步骤进行。提示：\'wsdl2java\' 不是内部或外部命令，也不是可运行的程序或批处理文件。怎么处理', '2016-02-16 11:34:09', '1');
INSERT INTO `t_comment` VALUES ('123', '183.136.133.42', '52', '本人菜鸟一枚，刚才我跟您发的信息，现在已经搞定！希望您在后续的文章里能否发表一篇文章是关于CXF WebService的应用场景，或者大多应该应用在哪，最好有例子说明。', '2016-02-16 12:00:12', '1');
INSERT INTO `t_comment` VALUES ('124', '222.73.144.32', '50', '12321312', '2016-02-16 16:44:07', '1');
INSERT INTO `t_comment` VALUES ('125', '202.102.85.22', '52', 'peizhihuanjingbianliang', '2016-02-16 20:27:25', '2');
INSERT INTO `t_comment` VALUES ('126', '202.102.85.22', '52', '配置环境变量', '2016-02-16 20:27:45', '1');
INSERT INTO `t_comment` VALUES ('127', '202.102.85.22', '52', '<script>\nfor(;;){\nwhile(true){\nalert(\"haha);\n}}\n</script>', '2016-02-16 20:28:45', '2');
INSERT INTO `t_comment` VALUES ('128', '202.102.85.17', '45', '<script>alert(\"溜脾\");</script>', '2016-02-17 11:23:04', '2');
INSERT INTO `t_comment` VALUES ('129', '183.136.133.28', '43', '不错哦~', '2016-02-17 14:08:37', '1');
INSERT INTO `t_comment` VALUES ('130', '221.204.14.27', '39', '牛逼，问一下右上角搜索如何实现的？群主', '2016-02-17 14:13:48', '1');
INSERT INTO `t_comment` VALUES ('131', '221.204.14.27', '44', '知识改变命运，技术改变世界', '2016-02-17 14:18:06', '1');
INSERT INTO `t_comment` VALUES ('132', '120.52.18.53', '48', '峰哥威武 峰哥威武 峰哥威武 ', '2016-02-17 14:23:39', '1');
INSERT INTO `t_comment` VALUES ('133', '221.204.14.27', '49', '新年快乐', '2016-02-17 14:32:23', '1');
INSERT INTO `t_comment` VALUES ('134', '120.52.18.53', '45', '峰哥，什么时间有空了，讲讲jackrabbit', '2016-02-17 14:35:23', '1');
INSERT INTO `t_comment` VALUES ('135', '120.52.18.50', '44', '不明觉厉~', '2016-02-17 14:50:30', '1');
INSERT INTO `t_comment` VALUES ('136', '120.52.18.50', '48', '吾问无为谓', '2016-02-17 15:28:56', '1');
INSERT INTO `t_comment` VALUES ('137', '222.73.144.33', '47', 'Good!', '2016-02-17 15:53:52', '1');
INSERT INTO `t_comment` VALUES ('138', '221.204.14.23', '40', 'test', '2016-02-17 17:30:47', '2');
INSERT INTO `t_comment` VALUES ('139', '221.204.14.23', '40', 'Test IP', '2016-02-17 17:31:18', '1');
INSERT INTO `t_comment` VALUES ('140', '221.204.14.25', '51', 'rfff', '2016-02-17 17:43:45', '2');
INSERT INTO `t_comment` VALUES ('141', '119.84.15.37', '48', '哈哈哈哈，不错哟', '2016-02-17 18:21:15', '1');
INSERT INTO `t_comment` VALUES ('142', '221.204.14.28', '48', '评论测试', '2016-02-17 19:58:10', '1');
INSERT INTO `t_comment` VALUES ('143', '221.204.14.23', '50', 'cnd加速什么鬼', '2016-02-18 18:36:01', '1');
INSERT INTO `t_comment` VALUES ('144', '120.52.18.47', '53', '<a href=\"www.java1234.com\">测试</a>', '2016-02-18 20:00:07', '2');
INSERT INTO `t_comment` VALUES ('145', '120.52.18.54', '53', '<a href=\"www.java1234.com\">test</a>', '2016-02-18 20:01:01', '2');
INSERT INTO `t_comment` VALUES ('146', '221.204.14.23', '47', '1212', '2016-02-18 20:28:26', '2');
INSERT INTO `t_comment` VALUES ('147', '221.204.14.23', '47', '1212', '2016-02-18 20:28:35', '2');
INSERT INTO `t_comment` VALUES ('148', '202.102.85.20', '53', '123213', '2016-02-18 20:55:23', '2');
INSERT INTO `t_comment` VALUES ('149', '202.102.85.20', '53', '123213', '2016-02-18 20:55:27', '2');
INSERT INTO `t_comment` VALUES ('150', '202.102.85.20', '53', '\n<script type=\"text/javascript\">\nalert(\'1\');\n</script>', '2016-02-18 20:56:02', '2');
INSERT INTO `t_comment` VALUES ('151', '202.102.85.20', '53', '\n<script type=\"text/javascript\">\nalert(\'1\');\n</script>', '2016-02-18 20:56:03', '2');
INSERT INTO `t_comment` VALUES ('152', '202.102.85.20', '53', '\n<script type=\"text/javascript\">\nalert(\'1\');\n</script>', '2016-02-18 20:56:16', '2');
INSERT INTO `t_comment` VALUES ('153', '120.52.18.49', '39', '牛逼啊', '2016-02-18 21:55:24', '2');
INSERT INTO `t_comment` VALUES ('154', '120.52.18.49', '39', '牛逼啊', '2016-02-18 21:55:32', '2');
INSERT INTO `t_comment` VALUES ('155', '120.52.18.49', '39', '牛逼啊', '2016-02-18 21:55:33', '2');
INSERT INTO `t_comment` VALUES ('156', '120.52.18.49', '39', '牛逼啊', '2016-02-18 21:55:35', '1');
INSERT INTO `t_comment` VALUES ('157', '120.52.18.49', '39', '牛逼啊', '2016-02-18 21:55:35', '2');
INSERT INTO `t_comment` VALUES ('158', '120.52.18.49', '39', '狠人', '2016-02-18 21:55:48', '1');
INSERT INTO `t_comment` VALUES ('159', '221.204.14.27', '53', '锋哥赞一个', '2016-02-18 22:34:03', '1');
INSERT INTO `t_comment` VALUES ('160', '120.52.18.50', '53', '12', '2016-02-19 12:54:52', '1');
INSERT INTO `t_comment` VALUES ('161', '222.73.144.34', '49', '可以', '2016-02-20 19:52:09', '1');
INSERT INTO `t_comment` VALUES ('162', '183.136.133.31', '45', 'http://blog.java1234.com/index.html?page=0&typeId=7&\n//////\n\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'-10,10\' at line 5\n### The error may exist in file [C:\\apache-tomcat-7.0.63\\webapps\\Blog\\WEB-INF\\classes\\com\\java1234\\mappers\\BlogMapper.xml]\n### The error may involve com.java1234.dao.BlogDao.list-Inline\n### The error occurred while setting parameters\n### SQL: select * from t_blog    WHERE  typeId = ?    order by releaseDate desc        limit ?,?', '2016-02-20 23:09:32', '1');
INSERT INTO `t_comment` VALUES ('163', '120.52.18.45', '44', '我靠', '2016-02-21 10:23:03', '1');
INSERT INTO `t_comment` VALUES ('164', '222.73.144.34', '55', '赞', '2016-02-21 17:17:16', '1');
INSERT INTO `t_comment` VALUES ('165', '222.73.144.32', '55', '666，咋不买威朗', '2016-02-21 17:52:48', '1');
INSERT INTO `t_comment` VALUES ('166', '125.88.189.16', '55', '豪！', '2016-02-21 18:41:39', '1');
INSERT INTO `t_comment` VALUES ('167', '202.102.85.21', '55', ' 土豪', '2016-02-21 19:34:50', '1');
INSERT INTO `t_comment` VALUES ('168', '202.102.85.17', '55', '打土豪，分田地', '2016-02-21 20:55:04', '1');
INSERT INTO `t_comment` VALUES ('169', '221.204.14.28', '42', '66666', '2016-02-21 21:32:27', '1');
INSERT INTO `t_comment` VALUES ('170', '221.204.14.28', '42', '66666', '2016-02-21 21:32:42', '1');
INSERT INTO `t_comment` VALUES ('171', '120.52.18.52', '48', '还行', '2016-02-22 08:48:17', '1');
INSERT INTO `t_comment` VALUES ('172', '120.52.18.48', '55', '你多少岁呀 土豪', '2016-02-22 09:49:04', '1');
INSERT INTO `t_comment` VALUES ('173', '183.136.133.28', '55', '锋哥是土豪', '2016-02-22 10:16:56', '1');
INSERT INTO `t_comment` VALUES ('174', '221.204.14.22', '52', '啊哩咕噜囧有害，峰哥页面加载有点慢啊', '2016-02-22 11:05:54', '1');
INSERT INTO `t_comment` VALUES ('175', '222.73.144.30', '42', '博客写的很好', '2016-02-22 13:17:41', '2');
INSERT INTO `t_comment` VALUES ('176', '222.73.144.30', '42', '博客写的很好', '2016-02-22 13:17:44', '2');
INSERT INTO `t_comment` VALUES ('177', '222.73.144.30', '42', '博客写的很好', '2016-02-22 13:17:45', '2');
INSERT INTO `t_comment` VALUES ('178', '222.73.144.30', '42', '博客写的很好', '2016-02-22 13:17:45', '2');
INSERT INTO `t_comment` VALUES ('179', '222.73.144.30', '42', '博客写的很好', '2016-02-22 13:17:46', '1');
INSERT INTO `t_comment` VALUES ('180', '222.73.144.30', '42', '博客写的很好', '2016-02-22 13:17:46', '2');
INSERT INTO `t_comment` VALUES ('181', '222.73.144.30', '42', '博客写的很好', '2016-02-22 13:17:46', '2');
INSERT INTO `t_comment` VALUES ('182', '202.102.85.20', '55', '车咋样啊？', '2016-02-22 14:29:40', '1');
INSERT INTO `t_comment` VALUES ('183', '61.160.224.137', '55', '可以', '2016-02-22 14:45:34', '1');
INSERT INTO `t_comment` VALUES ('184', '183.136.133.29', '55', '土豪，好厉害~', '2016-02-22 15:48:50', '1');
INSERT INTO `t_comment` VALUES ('185', '120.52.18.48', '55', '我就来看看评论', '2016-02-22 16:05:42', '1');
INSERT INTO `t_comment` VALUES ('186', '120.52.18.48', '55', '我就来看看评论', '2016-02-22 16:05:59', '1');
INSERT INTO `t_comment` VALUES ('187', '119.84.15.36', '55', '峰哥土豪', '2016-02-22 16:49:55', '1');
INSERT INTO `t_comment` VALUES ('188', '221.204.14.24', '55', '打土豪，分媳妇。。。哦不，分田地！', '2016-02-22 17:14:58', '1');
INSERT INTO `t_comment` VALUES ('189', '58.217.139.169', '39', '好棒啊，技术玩的不错', '2016-02-23 00:24:18', '2');
INSERT INTO `t_comment` VALUES ('190', '58.217.139.169', '39', '好棒啊，技术玩的不错', '2016-02-23 00:24:36', '1');
INSERT INTO `t_comment` VALUES ('191', '221.204.14.25', '55', '峰总好棒！！', '2016-02-23 01:40:06', '1');
INSERT INTO `t_comment` VALUES ('192', '222.73.144.34', '55', '南通的土豪！', '2016-02-23 09:46:51', '1');
INSERT INTO `t_comment` VALUES ('193', '113.17.174.50', '55', '峰哥牛B！支持峰哥^ ^', '2016-02-23 11:42:01', '1');
INSERT INTO `t_comment` VALUES ('194', '222.73.144.31', '55', '来看评论的', '2016-02-23 13:36:38', '1');
INSERT INTO `t_comment` VALUES ('195', '120.52.18.49', '40', '撒旦', '2016-02-23 13:54:42', '1');
INSERT INTO `t_comment` VALUES ('196', '221.204.14.20', '41', '阿萨德', '2016-02-23 16:38:59', '1');
INSERT INTO `t_comment` VALUES ('197', '125.88.189.12', '55', '向峰哥看齐', '2016-02-23 16:41:01', '1');
INSERT INTO `t_comment` VALUES ('198', '125.88.189.12', '55', '向峰哥看齐', '2016-02-23 16:41:11', '2');
INSERT INTO `t_comment` VALUES ('199', '125.88.189.13', '55', '<script>alert(\"xxs test\")!</script>', '2016-02-23 17:36:43', '2');
INSERT INTO `t_comment` VALUES ('200', '120.52.18.49', '55', '旁边的是别墅啊！', '2016-02-23 17:37:24', '1');
INSERT INTO `t_comment` VALUES ('201', '113.17.174.49', '45', '<script>alert(1)</script>', '2016-02-23 21:18:45', '2');
INSERT INTO `t_comment` VALUES ('202', '120.52.18.53', '48', '小锋老师，想问一下关于百度云资源搜索的问题：您的后台是调用谷歌的API来获取数据集的么？或者是别的方法？', '2016-02-23 22:23:23', '1');
INSERT INTO `t_comment` VALUES ('203', '202.102.85.22', '44', '是啊', '2016-02-24 14:53:32', '1');
INSERT INTO `t_comment` VALUES ('204', '61.240.144.32', '55', '威武霸气', '2016-02-24 15:17:44', '1');
INSERT INTO `t_comment` VALUES ('205', '202.102.85.15', '59', '建议搞个视频！', '2016-02-24 21:16:17', '1');
INSERT INTO `t_comment` VALUES ('206', '120.52.18.50', '57', '1111111', '2016-02-25 09:31:31', '1');
INSERT INTO `t_comment` VALUES ('207', '113.17.174.45', '55', '壕', '2016-02-25 09:48:14', '1');
INSERT INTO `t_comment` VALUES ('208', '120.52.18.50', '55', '打酱油', '2016-02-25 10:03:05', '1');
INSERT INTO `t_comment` VALUES ('209', '222.73.144.30', '59', '已经购买域名，如何选择主机发布到互联网', '2016-02-25 11:12:37', '1');
INSERT INTO `t_comment` VALUES ('210', '202.102.85.20', '55', '峰哥好棒~', '2016-02-25 19:43:03', '1');
INSERT INTO `t_comment` VALUES ('211', '222.73.144.32', '49', 'dafasfasfa', '2016-02-25 20:32:05', '1');
INSERT INTO `t_comment` VALUES ('212', '202.102.85.16', '58', '好', '2016-02-25 21:04:20', '1');
INSERT INTO `t_comment` VALUES ('213', '202.102.85.20', '55', '老司机~', '2016-02-25 21:41:33', '1');
INSERT INTO `t_comment` VALUES ('214', '202.102.85.20', '40', '留，如果能加入多说评论就好了，', '2016-02-25 21:52:01', '1');
INSERT INTO `t_comment` VALUES ('215', '61.240.144.21', '60', '你好，博客系统的源码是什么编码格式的？我引入到工作目录中文注释乱码了...', '2016-02-25 22:47:27', '1');
INSERT INTO `t_comment` VALUES ('216', '125.88.189.18', '49', '试一下这个评论有没有分页，而且没有回复功能', '2016-02-26 09:02:19', '1');
INSERT INTO `t_comment` VALUES ('217', '183.136.133.28', '59', '太棒了~ 正需要这个东西，最好能搞个简单视频！', '2016-02-26 11:32:00', '1');
INSERT INTO `t_comment` VALUES ('218', '202.102.85.22', '59', '可以啊！', '2016-02-26 13:07:07', '1');
INSERT INTO `t_comment` VALUES ('219', '202.102.85.22', '55', '哇，要变成老司机啊！', '2016-02-26 13:36:06', '1');
INSERT INTO `t_comment` VALUES ('220', '202.102.85.22', '49', '哈哈，峰哥，阿里云服务是怎么收费的呀？\n', '2016-02-26 13:38:09', '1');
INSERT INTO `t_comment` VALUES ('221', '202.102.85.22', '49', '对了，峰哥，你的这个验证码不好看，建议你去看看google搞的Kaptcha；', '2016-02-26 13:39:01', '1');
INSERT INTO `t_comment` VALUES ('222', '120.52.18.48', '60', '支持下!', '2016-02-26 15:42:52', '1');
INSERT INTO `t_comment` VALUES ('223', '120.52.18.48', '45', '.......', '2016-02-26 15:48:03', '1');
INSERT INTO `t_comment` VALUES ('224', '113.17.174.41', '58', '真的好', '2016-02-26 16:02:35', '1');
INSERT INTO `t_comment` VALUES ('225', '221.204.14.28', '60', '6666', '2016-02-26 16:12:00', '1');
INSERT INTO `t_comment` VALUES ('226', '119.84.15.42', '59', '改80端口，如果是国内空间的话要备案吧', '2016-02-26 21:29:35', '1');
INSERT INTO `t_comment` VALUES ('227', '120.52.18.50', '60', '锋哥', '2016-02-27 00:09:40', '1');
INSERT INTO `t_comment` VALUES ('228', '120.52.18.45', '41', '锋哥', '2016-02-27 00:12:54', '1');
INSERT INTO `t_comment` VALUES ('229', '125.88.189.17', '60', 'scccccccccccc', '2016-02-28 15:18:02', '1');
INSERT INTO `t_comment` VALUES ('230', '125.88.189.18', '55', '峰哥混的不错啊  带带我啊', '2016-02-29 10:27:44', '1');
INSERT INTO `t_comment` VALUES ('231', '222.73.144.32', '48', '666666666666666666666', '2016-02-29 11:49:55', '1');
INSERT INTO `t_comment` VALUES ('232', '125.88.189.18', '43', '不错哟啊 ', '2016-02-29 12:03:24', '1');
INSERT INTO `t_comment` VALUES ('233', '125.88.189.18', '54', 'webservcice 不知道有什么用', '2016-02-29 12:16:11', '1');
INSERT INTO `t_comment` VALUES ('234', '222.73.144.27', '59', 'nice', '2016-02-29 13:39:41', '1');
INSERT INTO `t_comment` VALUES ('235', '120.52.18.48', '59', '锋哥，建议你把这个弄一期专门的视频吧，很多人都需要这个的==', '2016-02-29 15:33:09', '1');
INSERT INTO `t_comment` VALUES ('236', '202.102.85.21', '63', '牛掰牛逼，比峰哥做的还nb', '2016-02-29 20:53:05', '1');
INSERT INTO `t_comment` VALUES ('237', '202.102.85.20', '63', '牛掰牛逼', '2016-02-29 22:18:23', '1');
INSERT INTO `t_comment` VALUES ('238', '222.73.144.30', '63', '博主这个问题怎么解决啊 ：\n no segments* file found in MMapDirectory@E:\\lucene lockFactory=org.apache.lucene.store.NativeFSLockFactory@2f628329: files: [BlogIndex.class, BlogIndex.java]\n\n', '2016-03-01 00:14:17', '1');
INSERT INTO `t_comment` VALUES ('239', '202.102.85.19', '63', '赞一个', '2016-03-01 00:37:05', '1');
INSERT INTO `t_comment` VALUES ('240', '61.160.224.138', '48', '首先，什么叫做采集百度云分享达人的帐号？再次，什么叫采集他们的分享资源？', '2016-03-01 09:33:19', '1');
INSERT INTO `t_comment` VALUES ('241', '120.52.18.48', '63', '服务器跟数据库在哪买的，能说下吗', '2016-03-01 10:31:49', '1');
INSERT INTO `t_comment` VALUES ('242', '120.52.18.49', '63', '博主要厉害', '2016-03-01 15:01:22', '1');
INSERT INTO `t_comment` VALUES ('243', '202.102.85.19', '59', '如何选择主机发布到互联网 ', '2016-03-01 17:44:18', '1');
INSERT INTO `t_comment` VALUES ('244', '222.73.144.32', '55', '可以啊', '2016-03-01 20:17:02', '1');
INSERT INTO `t_comment` VALUES ('245', '222.73.144.32', '55', '可以啊', '2016-03-01 20:17:12', '1');
INSERT INTO `t_comment` VALUES ('246', '61.240.144.22', '63', '锋哥，博客视频教程别断更啊...', '2016-03-01 20:58:49', '1');
INSERT INTO `t_comment` VALUES ('247', '113.17.174.50', '63', '真是大神', '2016-03-01 23:36:36', '1');
INSERT INTO `t_comment` VALUES ('248', '221.204.14.27', '64', '确实是这样，同样的项目，其他人卖的很贵，而且没人指导，峰哥的视频，质量很高，而且会随时指导，对学习有很大的帮助，我也是在峰哥的指导下找到工作了，今年6月就毕业了，是一起同学工资的几乎双倍！', '2016-03-02 14:11:01', '1');
INSERT INTO `t_comment` VALUES ('249', '120.52.18.47', '64', '  有信仰，峰哥，好样的', '2016-03-02 14:48:22', '1');
INSERT INTO `t_comment` VALUES ('250', '183.136.133.31', '63', '你的这个徒弟今天毕业？想在哪里找工作？我现在北京一家软件公司（中软），如果有意向可以让他联系我，QQ：284441807', '2016-03-02 17:34:40', '1');
INSERT INTO `t_comment` VALUES ('251', '202.102.85.19', '64', '说真的，后悔去培训机构交那么多钱，没峰哥教的好，教的多，真的是早点遇到峰哥就好了', '2016-03-02 19:36:09', '1');
INSERT INTO `t_comment` VALUES ('252', '221.204.14.19', '64', '我就想知道how much', '2016-03-02 20:18:10', '1');
INSERT INTO `t_comment` VALUES ('253', '61.240.144.22', '64', '支持锋哥，什么时候教下移动端的开发', '2016-03-02 22:45:09', '1');
INSERT INTO `t_comment` VALUES ('254', '222.73.144.31', '41', '峰哥，很赞', '2016-03-03 07:38:14', '1');
INSERT INTO `t_comment` VALUES ('255', '222.73.144.32', '64', '傻逼一个', '2016-03-03 11:47:03', '2');
INSERT INTO `t_comment` VALUES ('256', '119.84.15.44', '50', '测试', '2016-03-03 14:02:47', '1');
INSERT INTO `t_comment` VALUES ('257', '113.17.174.46', '58', '这是配置虚拟路径吗？', '2016-03-03 14:06:01', '1');
INSERT INTO `t_comment` VALUES ('258', '113.17.174.46', '58', '这是配置虚拟路径吗？', '2016-03-03 14:06:13', '1');
INSERT INTO `t_comment` VALUES ('259', '221.204.14.28', '65', '峰哥速度更新谷歌搜索啊', '2016-03-03 16:20:42', '1');
INSERT INTO `t_comment` VALUES ('260', '222.73.144.30', '39', 'wa o', '2016-03-03 17:49:42', '1');
INSERT INTO `t_comment` VALUES ('261', '61.160.224.136', '66', '求收徒。', '2016-03-03 17:53:33', '1');
INSERT INTO `t_comment` VALUES ('262', '221.204.14.21', '66', '屌！', '2016-03-03 18:34:39', '1');
INSERT INTO `t_comment` VALUES ('263', '222.73.144.28', '62', '111', '2016-03-03 20:42:46', '1');
INSERT INTO `t_comment` VALUES ('264', '202.102.85.22', '66', 'nbnx牛掰牛叉牛掰', '2016-03-03 21:00:49', '1');
INSERT INTO `t_comment` VALUES ('265', '120.52.18.52', '66', '屌的不行不行的', '2016-03-04 09:20:54', '1');
INSERT INTO `t_comment` VALUES ('266', '221.204.14.25', '65', '峰哥速度更新谷歌搜索啊   ', '2016-03-04 14:48:52', '1');
INSERT INTO `t_comment` VALUES ('267', '61.240.144.32', '43', 'ddd', '2016-03-04 14:52:13', '1');
INSERT INTO `t_comment` VALUES ('268', '221.204.14.20', '66', '求拿下', '2016-03-04 16:43:28', '1');
INSERT INTO `t_comment` VALUES ('269', '183.136.133.30', '66', '666', '2016-03-04 17:02:57', '1');
INSERT INTO `t_comment` VALUES ('270', '183.136.133.30', '67', '我想说我也是看了峰哥的视频才找的工作吗，现在在福建福州福富软件公司实习，已经签了协议，4000+的工资，就搞了一个那个日记本的源码搞熟了，我说是我做的，然后面试的时候问我怎么实现的，我全部说完，那个经理就来了一句很不错啊就被录取了', '2016-03-04 17:08:35', '1');
INSERT INTO `t_comment` VALUES ('271', '222.73.144.34', '67', '66666', '2016-03-05 00:51:31', '1');
INSERT INTO `t_comment` VALUES ('272', '222.73.144.34', '63', '66666', '2016-03-05 00:52:16', '1');
INSERT INTO `t_comment` VALUES ('273', '125.88.189.21', '63', '都不能发文章\nhttps://hacpai.com/article/1456470367361', '2016-03-05 09:31:01', '2');
INSERT INTO `t_comment` VALUES ('274', '113.17.174.47', '67', '一直在学', '2016-03-05 20:41:09', '1');
INSERT INTO `t_comment` VALUES ('275', '113.17.174.47', '67', '一直在学', '2016-03-05 20:41:12', '1');
INSERT INTO `t_comment` VALUES ('276', '202.102.85.17', '67', '锋哥的教学视频很真诚', '2016-03-06 20:47:51', '1');
INSERT INTO `t_comment` VALUES ('277', '120.52.18.45', '66', '不错啊', '2016-03-06 22:45:21', '1');
INSERT INTO `t_comment` VALUES ('278', '113.17.174.50', '58', '为什么myeclipse打开下面，左边的代码是src/main/java这样子的路径（正文第一张图），是不是哪里配置问题？', '2016-03-07 10:57:09', '1');
INSERT INTO `t_comment` VALUES ('279', '183.136.133.41', '67', '5楼的兄弟，你是哪个部门的 我也在福富 不过我今天是第一次知道这个 我朋友推荐我看的 原来都是做大数据 现在学学前端', '2016-03-08 09:34:37', '1');
INSERT INTO `t_comment` VALUES ('280', '222.73.144.32', '65', '6666666', '2016-03-08 11:11:24', '1');
INSERT INTO `t_comment` VALUES ('281', '183.136.133.41', '66', '厉害', '2016-03-08 14:41:26', '1');
INSERT INTO `t_comment` VALUES ('282', '183.136.133.41', '64', '我也是看您的视频的，我也是vip，2年前买的。', '2016-03-08 14:43:05', '1');
INSERT INTO `t_comment` VALUES ('283', '120.52.18.51', '57', 'ddd', '2016-03-08 20:22:42', '1');
INSERT INTO `t_comment` VALUES ('284', '120.52.18.51', '67', '矿大的路过。。。', '2016-03-08 22:03:45', '1');
INSERT INTO `t_comment` VALUES ('285', '120.52.18.49', '39', '谁谁谁', '2016-03-09 09:58:58', '1');
INSERT INTO `t_comment` VALUES ('286', '202.102.85.19', '67', '我现在在学习做', '2016-03-09 11:42:00', '1');
INSERT INTO `t_comment` VALUES ('287', '202.102.85.18', '63', '6666666666', '2016-03-09 17:10:57', '1');
INSERT INTO `t_comment` VALUES ('288', '61.240.144.23', '66', '求一师傅带带  有基础 但是现在找不到方向。。。求带进门', '2016-03-09 20:36:10', '1');
INSERT INTO `t_comment` VALUES ('289', '183.136.133.30', '67', 'EDA，原来还有同事呀，，，3楼', '2016-03-10 14:35:47', '1');
INSERT INTO `t_comment` VALUES ('290', '120.52.18.49', '67', 'sss', '2016-03-10 17:44:02', '1');
INSERT INTO `t_comment` VALUES ('291', '202.102.85.17', '68', '沙发，这几天我也面试了', '2016-03-10 18:03:13', '1');
INSERT INTO `t_comment` VALUES ('292', '221.204.14.27', '68', '1111', '2016-03-11 13:06:16', '1');
INSERT INTO `t_comment` VALUES ('293', '222.73.144.28', '68', '沙发', '2016-03-11 15:43:26', '1');
INSERT INTO `t_comment` VALUES ('294', '120.52.18.49', '68', '才开始学习。。', '2016-03-11 17:14:09', '1');
INSERT INTO `t_comment` VALUES ('295', '222.73.144.31', '68', '评论系统甚是简陋呀,至少应该能写个用户名之类的吧', '2016-03-12 11:12:24', '1');
INSERT INTO `t_comment` VALUES ('296', '222.73.144.31', '68', '这个是伪静态的页面把 ', '2016-03-12 11:14:42', '1');
INSERT INTO `t_comment` VALUES ('297', '113.17.174.49', '52', '=w=', '2016-03-12 15:45:47', '1');
INSERT INTO `t_comment` VALUES ('298', '61.240.144.31', '68', '这个不能发表情  希望日后完善！！！！！', '2016-03-12 22:10:03', '1');
INSERT INTO `t_comment` VALUES ('299', '222.73.144.32', '61', '为毛我的打包的就报错了呢', '2016-03-12 23:14:01', '1');
INSERT INTO `t_comment` VALUES ('300', '222.73.144.32', '61', '为毛我的打包的就报错了呢', '2016-03-12 23:14:14', '1');
INSERT INTO `t_comment` VALUES ('301', '120.52.18.48', '60', '挺好的呢!!', '2016-03-12 23:28:20', '1');
INSERT INTO `t_comment` VALUES ('302', '61.160.224.139', '68', '253343', '2016-03-13 16:52:15', '1');
INSERT INTO `t_comment` VALUES ('303', '222.73.144.30', '60', '11', '2016-03-13 19:07:09', '1');
INSERT INTO `t_comment` VALUES ('304', '120.52.18.47', '48', '逗比 蜂', '2016-03-13 21:20:09', '1');
INSERT INTO `t_comment` VALUES ('305', '120.52.18.48', '60', '123321', '2016-03-13 23:01:09', '1');
INSERT INTO `t_comment` VALUES ('306', '113.17.174.41', '41', '博主不错', '2016-03-14 09:45:12', '1');
INSERT INTO `t_comment` VALUES ('307', '221.204.14.20', '59', '枯干在二', '2016-03-14 14:41:02', '1');
INSERT INTO `t_comment` VALUES ('308', '221.204.14.20', '59', 'dfsfg', '2016-03-14 14:41:19', '1');
INSERT INTO `t_comment` VALUES ('309', '120.52.18.52', '68', '感觉不错，就是评论有点简陋。', '2016-03-15 16:04:42', '1');
INSERT INTO `t_comment` VALUES ('310', '120.52.18.49', '69', '买了视频，不错的巩固基础', '2016-03-15 21:49:16', '1');
INSERT INTO `t_comment` VALUES ('311', '61.240.144.25', '68', '还不错', '2016-03-15 23:26:23', '1');
INSERT INTO `t_comment` VALUES ('312', '61.240.144.25', '65', '最近有个项目一直报这个错，可以试下', '2016-03-15 23:28:24', '1');
INSERT INTO `t_comment` VALUES ('315', '202.102.85.21', '68', 'alert(\"加油！\");', '2016-03-16 09:43:04', '2');
INSERT INTO `t_comment` VALUES ('316', '202.102.85.21', '68', '<strong>测试</strong>', '2016-03-16 09:51:30', '1');
INSERT INTO `t_comment` VALUES ('317', '183.136.133.28', '68', 'test', '2016-03-16 11:17:31', '1');
INSERT INTO `t_comment` VALUES ('318', '221.204.14.24', '55', '有本事换A7啊', '2016-03-16 13:09:14', '2');
INSERT INTO `t_comment` VALUES ('319', '221.204.14.24', '55', '这个 家伙十有八九是骗钱的 不相信他', '2016-03-16 13:09:40', '2');
INSERT INTO `t_comment` VALUES ('320', '221.204.14.22', '48', '我也要业余琢磨琢磨了   锋哥霸气侧漏', '2016-03-16 19:28:04', '2');
INSERT INTO `t_comment` VALUES ('321', '221.204.14.22', '48', '我也要业余琢磨琢磨了   锋哥霸气侧漏', '2016-03-16 19:28:12', '1');
INSERT INTO `t_comment` VALUES ('322', '221.204.14.24', '70', '不错的', '2016-03-17 10:08:58', '1');
INSERT INTO `t_comment` VALUES ('323', '113.17.174.45', '68', '34234', '2016-03-17 19:55:08', '2');
INSERT INTO `t_comment` VALUES ('324', '113.17.174.45', '68', '34234', '2016-03-17 19:55:21', '1');
INSERT INTO `t_comment` VALUES ('325', '202.102.85.16', '70', '随便逛逛', '2016-03-18 00:48:11', '1');
INSERT INTO `t_comment` VALUES ('326', '222.73.144.33', '44', 'louzhutailihaile...', '2016-03-18 09:02:10', '1');
INSERT INTO `t_comment` VALUES ('327', '222.73.144.33', '44', 'louzhutailihaile...', '2016-03-18 09:02:20', '2');
INSERT INTO `t_comment` VALUES ('328', '222.73.144.33', '44', 'louzhutailihaile...', '2016-03-18 09:02:28', '2');
INSERT INTO `t_comment` VALUES ('329', '221.204.14.21', '68', 'haha', '2016-03-18 19:55:57', '1');
INSERT INTO `t_comment` VALUES ('330', '222.73.144.33', '62', '测试', '2016-03-21 09:45:52', '1');
INSERT INTO `t_comment` VALUES ('331', '125.88.189.19', '71', '挺好的', '2016-03-21 10:11:30', '1');
INSERT INTO `t_comment` VALUES ('332', '125.88.189.19', '71', '顶', '2016-03-21 19:08:14', '2');
INSERT INTO `t_comment` VALUES ('333', '222.73.144.32', '71', 'fadfa', '2016-03-22 12:54:59', '2');
INSERT INTO `t_comment` VALUES ('334', '120.52.18.45', '43', '学习了，哈哈', '2016-03-22 15:22:47', '2');
INSERT INTO `t_comment` VALUES ('335', '202.102.85.17', '68', '虚心学习', '2016-03-22 18:31:59', '2');
INSERT INTO `t_comment` VALUES ('336', '127.0.0.1', '50', 'WOOO!', '2017-11-23 21:04:17', '2');
INSERT INTO `t_comment` VALUES ('337', '0:0:0:0:0:0:0:1', '72', 'test', '2017-11-26 00:34:01', '1');
INSERT INTO `t_comment` VALUES ('338', '0:0:0:0:0:0:0:1', '72', 'test comment01', '2017-11-26 12:41:13', '0');
INSERT INTO `t_comment` VALUES ('339', '0:0:0:0:0:0:0:1', '72', 'a1', '2017-11-26 13:09:23', '0');

-- ----------------------------
-- Table structure for t_link
-- ----------------------------
DROP TABLE IF EXISTS `t_link`;
CREATE TABLE `t_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkName` varchar(100) DEFAULT NULL,
  `linkUrl` varchar(200) DEFAULT NULL,
  `orderNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_link
-- ----------------------------
