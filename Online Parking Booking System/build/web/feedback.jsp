<%-- 
    Document   : feedback
    Created on : Oct 1, 2016, 1:52:03 PM
    Author     : Yashfaa
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css" type="text/css">
        <title>FeedBack</title>
    </head>
    <jsp:include page="header.jsp"></jsp:include>
    <body>
    <center> 
        <br />
        <div class="feed">
            <form action="EmailSender" method="post">
                <table border="1">
                    <caption><h3><font size="5">Send us Feedback</font></h3></caption>
                    <tr>
                        <td>
                            <label>Name</label>
                        </td>
                        <td>
                            <input type="text" name="name" placeholder="Enter your name here" 
                                   id="feed" aria-required="true" required/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Email</label>
                        </td>
                        <td>
                            <input type="text" name="email" placeholder="Enter your email address here" 
                                   id="feed" title="Please enter your email address" aria-required="true" required />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Subject</label>
                        </td>
                        <td>
                            <input type="text" name="subject" placeholder="Subject for the message"
                                   id="feed" title="Please enter your subject" aria-required="true" required />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Message</label>
                        </td>
                        <td class="td2">
                            <textarea name="message" rows="15" cols="50" placeholder="Enter your message here"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Send Message" name="submit"/>
                            <input type="reset" value="Reset" name="button"/>
                        </td>
                    </tr>
                </table>               
            </form>
        </div>
    </body>
</html>
