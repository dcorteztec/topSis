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
                                404 Error
                                <small>Page Not Found</small>
                            </h1>
                            <ol class="breadcrumb">
                                <li><i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                                </li>
                                <li class="active">404 Error</li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <!-- end PAGE TITLE ROW -->

                <div class="row">
                    <div class="col-lg-6 col-lg-offset-3">
                        <h1 class="error-title">404</h1>
                        <h4 class="error-msg"><i class="fa fa-warning text-red"></i>Página não Encontrada</h4>
                        <p class="lead">Página não Encontrada</p>
<!--                         <div class="well"> -->
<!--                             <div class="input-group"> -->
<!--                                 <input type="text" placeholder="Search Flex Admin..." class="form-control"> -->
<!--                                 <span class="input-group-btn"> -->
<!--                                     <button class="btn btn-default" type="button"><i class="fa fa-search"></i> Search</button> -->
<!--                                 </span> -->
<!--                             </div> -->
<!--                             /input-group -->
<!--                         </div> -->
<!--                         <ul class="list-inline"> -->
<!--                             <li> -->
<!--                                 <a class="btn btn-default" href="index.html">Back to Dashboard</a> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a class="logout_open btn btn-red" href="#logout">Logout</a> -->
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
