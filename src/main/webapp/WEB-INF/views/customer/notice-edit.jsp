<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<main id="main">
											
		<h2 class="main-title">공지사항 내용</h2>
	
		<div class="breadcrumb">	
			<h3 class="hidden">breadcrumb</h3>
			<ol>
				<li>home</li>
				<li>고객센터</li>
				<li>공지사항</li>
			</ol>
		</div>						
		<form action="notice-edit" method="post">		
            <table border="1">
               <tbody>
                  <tr>		                  
                     <th>제목</th>
                     <td><input name="title" type="text" value="${n.title }"/></td>	                    
                  </tr>
                  <tr>
                     <th>작성자</th>
                     <td>${n.writer }</td>	                    
                  </tr>
                  <tr>
                     <th>작성일</th>
                     <td>${n.regDate }</td>	                    
                  </tr>
                  <tr>
                     <th>조회수</th>
                     <td>${n.hit }</td>	                    
                  </tr>
                  <tr>              
                     <td colspan="2">
                     	<textarea name="content" rows="20" cols="80">${n.content }</textarea>	                      
                     </td>
                  </tr>   
               </tbody>
            </table>
            <div>
               <input name="code" type="hidden" value="${n.code}"/>                      
               <input type="submit" value="저장"/>
               <a href="notice-detail?code=${n.code }">취소</a>
            </div>
          	</form>	
	</main>
