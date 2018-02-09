<%@page import="javax.servlet.ServletInputStream,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpUtils"%>
<%@page import="java.io.BufferedReader,java.io.InputStreamReader,java.io.ByteArrayOutputStream"%>
<%@page import="java.util.Enumeration,java.util.zip.GZIPOutputStream"%>
<%@page import="java.net.URL,java.net.HttpURLConnection,java.io.IOException"%>

 <%
System.out.println(request.getQueryString());
System.out.println(request.getRequestURL());      
ServletInputStream sis = request.getInputStream();
       StringBuilder sb = new StringBuilder();
       try {
    	   BufferedReader reader = new BufferedReader(new InputStreamReader(sis));
           reader.mark(10000);
           String line;
           do {
               line = reader.readLine();
               sb.append(line).append("\n");
           } while (line != null);
           reader.reset();
       } catch(IOException e) {
    	   System.out.println(sb);    
       }
       System.out.println(sb);
 %>
 
Hi I am fine. How about you ?
