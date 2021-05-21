<%-- 
    Document   : index
    Created on : May 14, 2021, 9:26:21 PM
    Author     : DARWINFLORES
--%>

 <%@include file="Encabezado.jsp" %>
          <div class="row">
            <div class="col-12 col-lg-6 col-xl-3">
                        <div class="widget widget-tile">
                          <div class="chart sparkline" id="spark1"><canvas width="85" height="35" style="display: inline-block; width: 85px; height: 35px; vertical-align: top;"></canvas></div>
                          <div class="data-info">
                            <div class="desc">Nuevos Us</div>
                            <div class="value"><span class="indicator indicator-equal mdi mdi-chevron-right"></span><span class="number" data-toggle="counter" data-end="100">100</span>
                            </div>
                          </div>
                        </div>
            </div>
            <div class="col-12 col-lg-6 col-xl-3">
                        <div class="widget widget-tile">
                          <div class="chart sparkline" id="spark2"><canvas width="81" height="35" style="display: inline-block; width: 81px; height: 35px; vertical-align: top;"></canvas></div>
                          <div class="data-info">
                            <div class="desc">Monthly </div>
                            <div class="value"><span class="indicator indicator-positive mdi mdi-chevron-up"></span><span class="number" data-toggle="counter" data-end="80" data-suffix="%">80%</span>
                            </div>
                          </div>
                        </div>
            </div>
            <div class="col-12 col-lg-6 col-xl-3">
                        <div class="widget widget-tile">
                          <div class="chart sparkline" id="spark3"><canvas width="85" height="35" style="display: inline-block; width: 85px; height: 35px; vertical-align: top;"></canvas></div>
                          <div class="data-info">
                            <div class="desc">Impressions</div>
                            <div class="value"><span class="indicator indicator-positive mdi mdi-chevron-up"></span><span class="number" data-toggle="counter" data-end="532">532</span>
                            </div>
                          </div>
                        </div>
            </div>
            <div class="col-12 col-lg-6 col-xl-3">
                        <div class="widget widget-tile">
                          <div class="chart sparkline" id="spark4"><canvas width="85" height="35" style="display: inline-block; width: 85px; height: 35px; vertical-align: top;"></canvas></div>
                          <div class="data-info">
                            <div class="desc">Downloads</div>
                            <div class="value"><span class="indicator indicator-negative mdi mdi-chevron-down"></span><span class="number" data-toggle="counter" data-end="113">113</span>
                            </div>
                          </div>
                        </div>
            </div>
          </div>
          
          <div class="row">
            <div class="col-12 col-lg-12">
              <div class="card card-table">
                <div class="card-header">
                  <div class="tools dropdown"><span class="icon mdi mdi-download"></span><a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown"><span class="icon mdi mdi-more-vert"></span></a>
                    <div class="dropdown-menu dropdown-menu-right" role="menu"><a class="dropdown-item" href="#">Action</a><a class="dropdown-item" href="#">Another action</a><a class="dropdown-item" href="#">Something else here</a>
                      <div class="dropdown-divider"></div><a class="dropdown-item" href="#">Separated link</a>
                    </div>
                  </div>
                  <div class="title">Proyectos en Curso</div>
                </div>
                <div class="card-body table-responsive">
                  <table class="table table-striped table-hover">
                    <thead>
                      <tr>
                        <th style="width:37%;">User</th>
                        <th style="width:36%;">Commit</th>
                        <th>Date</th>
                        <th class="actions"></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="user-avatar"> <img src="../Lib/avatar6.png" alt="Avatar">Penelope Thornton</td>
                        <td>Topbar dropdown style</td>
                        <td>Aug 16, 2018</td>
                        <td class="actions"><a class="icon" href="#"><i class="mdi mdi-github-alt"></i></a></td>
                      </tr>
                      <tr>
                        <td class="user-avatar"> <img src="../Lib/avatar4.png" alt="Avatar">Benji Harper</td>
                        <td>Left sidebar adjusments</td>
                        <td>Jul 15, 2018</td>
                        <td class="actions"><a class="icon" href="#"><i class="mdi mdi-github-alt"></i></a></td>
                      </tr>
                      <tr>
                        <td class="user-avatar"> <img src="../Lib/avatar5.png" alt="Avatar">Justine Myranda</td>
                        <td>Main structure markup</td>
                        <td>Jul 28, 2018</td>
                        <td class="actions"><a class="icon" href="#"><i class="mdi mdi-github-alt"></i></a></td>
                      </tr>
                      <tr>
                        <td class="user-avatar"> <img src="../Lib/avatar3.png" alt="Avatar">Sherwood Clifford</td>
                        <td>Initial commit</td>
                        <td>Jun 30, 2018</td>
                        <td class="actions"><a class="icon" href="#"><i class="mdi mdi-github-alt"></i></a></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-12 col-lg-12">
              <div class="card">
                <div class="card-header card-header-divider pb-3">Progreso del Proyecto</div>
                <div class="card-body pt-5">
                  <div class="row user-progress user-progress-small">
                    <div class="col-lg-5"><span class="title">Bootstrap Admin</span></div>
                    <div class="col-lg-7">
                      <div class="progress">
                        <div class="progress-bar bg-success" style="width: 40%;"></div>
                      </div>
                    </div>
                  </div>
                  <div class="row user-progress user-progress-small">
                    <div class="col-lg-5"><span class="title">Custom Work</span></div>
                    <div class="col-lg-7">
                      <div class="progress">
                        <div class="progress-bar bg-success" style="width: 65%;"></div>
                      </div>
                    </div>
                  </div>
                  <div class="row user-progress user-progress-small">
                    <div class="col-lg-5"><span class="title">Clients Module</span></div>
                    <div class="col-lg-7">
                      <div class="progress">
                        <div class="progress-bar bg-success" style="width: 30%;"></div>
                      </div>
                    </div>
                  </div>
                  <div class="row user-progress user-progress-small">
                    <div class="col-lg-5"><span class="title">Email Templates</span></div>
                    <div class="col-lg-7">
                      <div class="progress">
                        <div class="progress-bar bg-success" style="width: 80%;"></div>
                      </div>
                    </div>
                  </div>
                  <div class="row user-progress user-progress-small">
                    <div class="col-lg-5"><span class="title">Plans Module</span></div>
                    <div class="col-lg-7">
                      <div class="progress">
                        <div class="progress-bar bg-success" style="width: 45%;"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
      
          
          </div>
       
        <%@include file="Pie.jsp" %>
         <script type="text/javascript">
      $(document).ready(function(){
      	//-initialize the javascript
      	App.init();
      	App.dashboard();
      
      });
    </script>