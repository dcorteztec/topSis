<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <jsp:include page="/head.jsp"></jsp:include>

</head>

<body>

    <div id="wrapper">

        <!-- begin TOP NAVIGATION -->
        <jsp:include page="/top.jsp"></jsp:include>
        <!-- /.navbar-top -->
        <!-- end TOP NAVIGATION -->

        <!-- begin SIDE NAVIGATION -->
         <jsp:include page="/menu.jsp"></jsp:include>
        <!-- /.navbar-side -->
        <!-- end SIDE NAVIGATION -->

         <!-- begin MAIN PAGE CONTENT -->
        <div id="page-wrapper">

            <div class="page-content">

                <!-- begin PAGE TITLE ROW -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="page-title">
                            <h1>
                                500 Error
                                <small>Internal Server Error</small>
                            </h1>
                            <ol class="breadcrumb">
                                <li><i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                                </li>
                                <li class="active">500 Error</li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <!-- end PAGE TITLE ROW -->

                <div class="row">
                    <div class="col-lg-6 col-lg-offset-3">
                        <h1 class="error-title">500</h1>
                        <h4 class="error-msg"><i class="fa fa-warning text-red"></i> Internal Server Error</h4>
                        <p class="lead">Aconteceu um problema no sistema</p>
<!--                         <ul class="list-unstyled"> -->
<!--                             <li> -->
<!--                                 <a class="btn btn-default" href="#">Open Support Ticket</a> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <br> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a class="btn btn-default" href="#">Back to Dashboard</a> -->
<!--                             </li> -->
<!--                         </ul> -->
                    </div>
                    <!-- /.col-lg-6 -->
                </div>
                <!-- /.row -->

            </div>
            <!-- /.page-content -->

        </div>
        <!-- /#page-wrapper -->
        <!-- end MAIN PAGE CONTENT -->

    </div>
    <!-- /#wrapper -->

  <jsp:include page="/footer.jsp"></jsp:include>

</body>

</html>
