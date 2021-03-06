<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<%@ include file="AdminHeader.jsp" %>	
<body>
	<%@ include file="AdminLeftBar.jsp" %>
	
	<%@ include file="AdminTopBar.jsp" %>

<section id="main">
  <div class="row-fluid">
  <div class="span12">

    <hr class="main">
    <ul class="breadcrumbs">
      <li>
        <a class="crumb" href="#">Some</a>
        <span class="divider">/</span>
      </li>
      <li>
        <a class="crumb" href="#">Pretty</a>
        <span class="divider">/</span>
      </li>
      <li>
        <a class="crumb" href="#">Cool</a>
        <span class="divider">/</span>
      </li>
      <li>
        <a class="crumb active" href="#">Crumbs</a>
      </li>
    </ul>
    <hr class="main">
  </div>
</div>

  <div class="container-fluid">
  <div class="row-fluid">
    <div class="span12">

      <div class="box bordered">
        <div class="box inner light-gray">
          <div class="row-fluid padded10">

  <div class="span2 center">
    <div class="stat-box medium-blue">
      <i class="icon-group icon-large"></i>
      <span class="count">134</span>
      <span class="stat-text">Users</span>
    </div>
  </div>

  <div class="span2 center">
    <div class="stat-box dark-blue">
      <i class="icon-bell icon-large"></i>
      <span class="count">23</span>
      <span class="stat-text">Events</span>
    </div>
  </div>

  <div class="span2 center">
    <div class="stat-box border-blue">
      <i class="icon-umbrella icon-large"></i>
      <span class="count">220</span>
      <span class="stat-text">Requests</span>
    </div>
  </div>

  <div class="span2 center">
    <div class="stat-box text-blue">
      <i class="icon-hand-right icon-large"></i>
      <span class="count">204</span>
      <span class="stat-text">Orders</span>
    </div>
  </div>

  <div class="span2 center">
    <div class="stat-box dark-blue">
      <i class="icon-envelope icon-large"></i>
      <span class="count">32</span>
      <span class="stat-text">Messages</span>
    </div>
  </div>

  <div class="span2 center">
    <div class="stat-box medium-blue">
      <i class="icon-comments-alt icon-large"></i>
      <span class="count">65</span>
      <span class="stat-text">Comments</span>
    </div>
  </div>

</div>
        </div>

        <div class="row-fluid">
          <div class="span7">
            <div class="padded">
              <div class="section-title">Audience overview</div>
              <div class="chart" id="site-visits" style="width: 100%; height: 330px;"></div>
            </div>
          </div>

          <div class="span5">
            <div class="padded">
              <div class="section-title">Traffic type</div>
              <div class="chart" id="traffic-type-chart" style="width: 100%; height: 300px;"></div>
            </div>
          </div>
        </div>

        <div class="row-fluid">
          <div class="span6">
            <div class="padded">
              <div class="section-title">Visits</div>
              <ul class="audience-alt">
  <li>
    <div class="icon">
      <div class="big-label medium-blue text-inverse">
        <i class="icon-lightbulb"></i>
      </div>
    </div>

    <div class="value">504</div>
    <div class="stat-name">Visitors</div>

    <div class="percent">(+30%)</div>
    <div class="progress-bar audience-progress">
      <div class="progress progress-medium-blue">
        <div class="bar" style="width: 30%"></div>
      </div>
    </div>
  </li>

  <li>
    <div class="icon">
      <div class="big-label dark-blue text-inverse">
        <i class="icon-star"></i>
      </div>
    </div>
    <div class="value">439</div>
    <div class="stat-name">Visits</div>

    <div class="percent">(+61%)</div>
    <div class="progress-bar audience-progress">
      <div class="progress progress-dark-blue">
        <div class="bar" style="width: 61%"></div>
      </div>
    </div>
  </li>

  <li>
    <div class="icon">
      <div class="big-label light-blue">
        <i class="icon-eye-open"></i>
      </div>
    </div>
    <div class="value">988</div>
    <div class="stat-name">Page views</div>

    <div class="percent">(+44%)</div>
    <div class="progress-bar audience-progress">
      <div class="progress progress-light-blue">
        <div class="bar" style="width: 44%"></div>
      </div>
    </div>
  </li>

  <li>
    <div class="icon">
      <div class="big-label dark-plum text-inverse">
        <i class="icon-heart"></i>
      </div>
    </div>
    <div class="value">39</div>
    <div class="stat-name">Likes</div>

    <div class="percent">(+12%)</div>
    <div class="progress-bar audience-progress">
      <div class="progress progress-dark-plum">
        <div class="bar" style="width: 12%"></div>
      </div>
    </div>
  </li>

  <li>
    <div class="icon">
      <div class="big-label text-blue text-inverse">
        <i class="icon-comment"></i>
      </div>
    </div>
    <div class="value">18</div>
    <div class="stat-name">Comments</div>

    <div class="percent">(+78%)</div>
    <div class="progress-bar audience-progress">
      <div class="progress progress-text-blue">
        <div class="bar" style="width: 78%"></div>
      </div>
    </div>
  </li>
</ul>
            </div>
          </div>

          <div class="span6">
            <div class="padded">
              <div class="section-title">Countries</div>
              <table class="table">
  <thead>
  <tr>
    <th>(check)</th>
    <th>Country</th>
    <th>Visits</th>
    <th>Pageviews</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>
      <label class="checkbox">
        <input type="checkbox" value="">
      </label>
    </td>
    <td style="line-height: 24px;">
      <span class="flag">
        <img src="../images/flags/Sweden.png" />
      </span>
      Sweden
    </td>
    <td>3845</td>
    <td>5.55</td>
  </tr>
  <tr>
    <td>
      <label class="checkbox">
        <input type="checkbox" value="">
      </label>
    </td>
    <td style="line-height: 24px;">
      <span class="flag">
        <img src="../images/flags/Romania.png" />
      </span>
      Romania
    </td>
    <td>2887</td>
    <td>4.29</td>
  </tr>
  <tr>
    <td>
      <label class="checkbox">
        <input type="checkbox" value="">
      </label>
    </td>
    <td style="line-height: 24px;">
      <span class="flag">
        <img src="../images/flags/Italy.png" />
      </span>
      Italy
    </td>
    <td>2411</td>
    <td>4.11</td>
  </tr>
  <tr>
    <td>
      <label class="checkbox">
        <input type="checkbox" value="">
      </label>
    </td>
    <td style="line-height: 24px;">
      <span class="flag">
        <img src="../images/flags/Germany.png" />
      </span>
      Germany
    </td>
    <td>1996</td>
    <td>3.69</td>
  </tr>
  <tr>
    <td>
      <label class="checkbox">
        <input type="checkbox" value="">
      </label>
    </td>
    <td style="line-height: 24px;">
      <span class="flag">
        <img src="../images/flags/Spain.png" />
      </span>
      Spain
    </td>
    <td>1685</td>
    <td>3.08</td>
  </tr>
  <tr>
    <td>
      <label class="checkbox">
        <input type="checkbox" value="">
      </label>
    </td>
    <td style="line-height: 24px;">
      <span class="flag">
        <img src="../images/flags/Finland.png" />
      </span>
      Finland
    </td>
    <td>1054</td>
    <td>2.88</td>
  </tr>
  </tbody>

  <tfoot>
  <tr>
    <td colspan="6">
      <div class="pagination blue-pag light-theme blue-theme pull-right">
        <ul>
          <li><a href="#">�</a></li>
          <li><a href="#">1</a></li>
          <li class="active"><a href="#">2</a></li>
          <li class="disabled"><a href="#">...</a></li>
          <li><a href="#">9</a></li>
          <li><a href="#">�</a></li>
        </ul>
      </div>
    </td>
  </tr>
  </tfoot>
</table>
            </div>
          </div>
        </div>
      </div>

      <div class="row-fluid">
        <div class="span6">

          <div class="box bordered">
            <div class="box-header">
              <i class="icon-link"></i> Quick links
            </div>
            <div class="row-fluid">
              <div class="span12">
                <div class="padded">
                  <button class="big-button" href="#">
  <i class="icon-cogs icon-large"></i>
  <span class="button-text">Users</span>
</button>

<button class="big-button active" href="#">
  <i class="icon-group icon-large"></i>
  <span class="button-text">Requests</span>
</button>

<button class="big-button" href="#">
  <i class="icon-envelope icon-large"></i>
  <span class="button-text">Messages</span>
</button>

<button class="big-button" href="#">
  <i class="icon-comments icon-large"></i>
  <span class="button-text">Comments</span>
</button>

<button class="big-button" href="#">
  <i class="icon-flag icon-large"></i>
  <span class="button-text">Events</span>
</button>

<button class="big-button" href="#">
  <i class="icon-bar-chart icon-large"></i>
  <span class="button-text">Orders</span>
</button>
                </div>
              </div>
            </div>
          </div>

          <div class="box transparent">
            <div class="padded">
              <blockquote class="blockquote-medium-blue">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue.
                  Ut a est eget ligula molestie gravida.</p>
              </blockquote>
            </div>
          </div>
        </div>

        <div class="span6">
          <div class="box bordered">
            <div class="box-header">
              <i class="icon-tags"></i> Todos
              <div class="pull-right">
                <div class="btn-group">
                  <a class="dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-cog"></i>
                  </a>
                  <ul class="dropdown-menu dropdown-left">
                    <li><a>Delete all</a></li>
                    <li><a>Mark all as complete</a></li>
                    <li class="divider"></li>
                    <li><a>Refresh</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <ul class="task-list">

  <li class="task-box">
    <div class="check">
      <i class="icon-check-empty"></i>
    </div>
    <div class="task">Some important task</div>
    <div class="priority">
      <span class="label red">important</span>
    </div>
  </li>

  <li class="task-box">
    <div class="check">
      <i class="icon-check-empty"></i>
    </div>
    <div class="task">Some normal priority task</div>
    <div class="priority">
      <span class="label medium-blue">normal</span>
    </div>
  </li>

  <li class="task-box completed">
    <div class="check">
      <i class="icon-check"></i>
    </div>
    <div class="task">Some completed task</div>
    <div class="priority">
      <span class="label inverse">completed</span>
    </div>
  </li>

  <li class="task-box">
    <div class="check">
      <i class="icon-check-empty"></i>
    </div>
    <div class="task">Some high priority task</div>
    <div class="priority">
      <span class="label orange">high</span>
    </div>
  </li>

  <li class="task-box">
    <div class="check">
      <i class="icon-check-empty"></i>
    </div>
    <div class="task">Some normal priority task</div>
    <div class="priority">
      <span class="label medium-blue">normal</span>
    </div>
  </li>

  <li class="task-box">
    <div class="check">
      <i class="icon-check"></i>
    </div>
    <div class="task">Some low priority task</div>
    <div class="priority">
      <span class="label green">low</span>
    </div>
  </li>

  <li class="task-box completed">
    <div class="check">
      <i class="icon-check"></i>
    </div>
    <div class="task">Some completed task</div>
    <div class="priority">
      <span class="label inverse">completed</span>
    </div>
  </li>

  <li class="task-box">
    <div class="check">
      <i class="icon-check-empty"></i>
    </div>
    <div class="task">Some high priority task</div>
    <div class="priority">
      <span class="label orange">high</span>
    </div>
  </li>

  <li class="task-box">
    <div class="check">
      <i class="icon-check-empty"></i>
    </div>
    <div class="task">Some normal priority task</div>
    <div class="priority">
      <span class="label medium-blue">normal</span>
    </div>
  </li>

  <li class="task-box">
    <div class="check">
      <i class="icon-check-empty"></i>
    </div>
    <div class="task">Some low priority task</div>
    <div class="priority">
      <span class="label green">low</span>
    </div>
  </li>

  <li class="view-all" style="text-align: center">
    <a href="#">View all</a>
  </li>
</ul>
          </div>
        </div>
      </div>

      <div class="row-fluid">
        <div class="span7">
          <div class="box bordered">
            <div class="box-header">
              <i class="icon-comments"></i> Recent comments
              <div class="pull-right">
                <div class="btn-group">
                  <a class="dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-wrench"></i>
                  </a>
                  <ul class="dropdown-menu dropdown-left">
                    <li><a>Approve all</a></li>
                    <li><a>Delete all</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="padded10">
              <ul class="recent-comments">
  <li class="comment-box">
    <div class="avatar user2 pull-left"></div>

    <div class="article">
      <div class="post-info"> Mike, 24 minutes ago </div>
      <div class="post-content-preview">
        Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...
      </div>

      <div class="article-actions">
        <button class="btn btn-mini light-blue inverse">Edit</button>
        <button class="btn btn-mini medium-blue">Approve</button>
        <button class="btn btn-mini dark-blue">Delete</button>
      </div>
    </div>
  </li>

  <li class="comment-box">
    <div class="avatar user5 pull-left"></div>

    <div class="article">
      <div class="post-info"> Maria, 2 days ago </div>
      <div class="post-content-preview">
        Contrary to popular belief, Lorem Ipsum is not simply random text...
      </div>

      <div class="article-actions">
        <button class="btn btn-mini light-blue inverse">Edit</button>
        <button class="btn btn-mini medium-blue">Approve</button>
        <button class="btn btn-mini dark-blue">Delete</button>
      </div>
    </div>
  </li>

  <li class="comment-box">
    <div class="avatar user7 pull-left"></div>

    <div class="article">
      <div class="post-info"> Jordan, 2 days ago </div>
      <div class="post-content-preview">
        Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum"...
      </div>

      <div class="article-actions">
        <button class="btn btn-mini light-blue inverse">Edit</button>
        <button class="btn btn-mini medium-blue">Approve</button>
        <button class="btn btn-mini dark-blue">Delete</button>
      </div>
    </div>
  </li>

  <li class="comment-box">
    <div class="avatar user3 pull-left" > </div>

    <div class="article">
      <div class="post-info"> Helen, 3 days ago </div>
      <div class="post-content-preview">
        The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested...
      </div>

      <div class="article-actions">
        <button class="btn btn-mini light-blue inverse">Edit</button>
        <button class="btn btn-mini medium-blue">Approve</button>
        <button class="btn btn-mini dark-blue">Delete</button>
      </div>
    </div>
  </li>

  <li class="comment-box view-more" style="text-align: center">
    <a href="#">View more</a>
  </li>
</ul>
            </div>
          </div>
        </div>

        <div class="span5">
          <div class="box bordered">
            <div class="box-header">
              <i class="icon-tags"></i> User activity
              <div class="pull-right">
                <div class="btn-group">
                  <a class="dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-cog"></i>
                  </a>
                  <ul class="dropdown-menu dropdown-left">
                    <li><a>Dismiss all</a></li>
                    <li class="divider"></li>
                    <li><a>Refresh</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <ul class="recent-activity">

  <li class="event-box">
    <div class="user-avatar user2 pull-left"></div>
    <div class="event">
      <div class="action">
        <a class="username" href="#">John Doe</a> has invited you to join <span class="label medium-blue">Ruby Group</span>.
      </div>
      <div class="time"><i class="icon-time"></i>24 minutes ago </div>
    </div>
  </li>

  <li class="event-box">
    <div class="user-avatar user3 pull-left"></div>
    <div class="event">
      <div class="action">
        <a class="username" href="#">Mary Ann Doe</a> has liked your post <span class="label dark-plum">CSS3 stylish shadows</span>.
      </div>
      <div class="time"><i class="icon-time"></i>15 hours ago </div>
    </div>
  </li>

  <li class="event-box">
    <div class="user-avatar user7 pull-left"></div>
    <div class="event">
      <div class="action">
        <a class="username" href="#">Jeremy Dust</a> has invited you to the event <span class="label dark-blue">First workshop</span>.
      </div>
      <div class="time"><i class="icon-time"></i>20 hours ago </div>
    </div>
  </li>

  <li class="event-box">
    <div class="user-avatar user1 pull-left"></div>
    <div class="event">
      <div class="action">
        <a class="username" href="#">John Doe</a> commented on your post <span class="label medium-blue">Working out</span>.
      </div>
      <div class="time"><i class="icon-time"></i>21 hours ago </div>
    </div>
  </li>

  <li class="event-box">
    <div class="user-avatar user4 pull-left"></div>
    <div class="event">
      <div class="action">
        <a class="username" href="#">Lorena Mayer</a> created a new post: <span class="label medium-blue">On Compass and SCSS</span>.
      </div>
      <div class="time"><i class="icon-time"></i>1 day ago </div>
    </div>
  </li>

  <li class="event-box">
    <div class="user-avatar user5 pull-left"></div>
    <div class="event">
      <div class="action">
        <a class="username" href="#">Mary Jones</a> accepted your friend request.
      </div>
      <div class="time"><i class="icon-time"></i>3 days ago </div>
    </div>
  </li>

  <li class="event-box">
    <div class="user-avatar user7 pull-left"></div>
    <div class="event">
      <div class="action">
        <a class="username" href="#">Jeremy Dust</a> accepted your friend request.
      </div>
      <div class="time"><i class="icon-time"></i>3 days ago </div>
    </div>
  </li>

  <li class="event-box view-more" style="text-align: center">
    <a href="#">View more</a>
  </li>
</ul>
          </div>
        </div>
      </div>

      <div class="row-fluid">
        <div class="span12">
          <div class="box bordered">
  <div class="box-header" >
    <i class="icon-calendar"></i> <span id="calendar-title">Calendar</span>
  </div>

  <div class="row-fluid">
    <div class="span8">
      <div id='calendar' class="calendar"></div>
    </div>
    <div class="span4 padded" id="draggable-events" >
      <h5>Draggable events</h5>
      <div>
        <div class="event medium-gray ui-draggable" style="position: relative; z-index: auto; left: 0px; top: 0px; ">Special event</div>
        <div class="event light-blue ui-draggable" style="position: relative; ">Completed event</div>
        <div class="event medium-blue ui-draggable" style="position: relative; ">Normal event</div>
        <div class="event dark-blue ui-draggable" style="position: relative; ">Important event</div>
        <div class="event dark-plum ui-draggable" style="position: relative; ">Info event</div>
        <div class="event dark-gray ui-draggable" style="position: relative; ">Other</div>
        <p>
          <label for="drop-remove"><div class="checker" id="uniform-drop-remove"><span><input type="checkbox" id="drop-remove" style="opacity: 0; "></span></div> Remove event after drop</label>
        </p>
      </div>
    </div>
  </div>
</div>
        </div>
      </div>

    </div>
  </div>
</div>

</section>

<%@ include file="AdminFooter.jsp" %>

<!-- Modal dialog used for the image gallery 
<div id="modal-gallery" class="modal modal-gallery hide fade" tabindex="-1">
  <div class="modal-header">
    <a class="close" data-dismiss="modal">&times;</a>
    <h3 class="modal-title"></h3>
  </div>
  <div class="modal-body"><div class="modal-image"></div></div>
  <div class="modal-footer">
    <a class="btn modal-download light-blue inverse" target="_blank"><i class="icon-download"></i> Download</a>
    <a class="btn modal-play modal-slideshow" data-slideshow="5000"><i class="icon-play icon-white"></i> Slideshow</a>
    <a class="btn modal-prev medium-blue"><i class="icon-arrow-left icon-white"></i> Previous</a>
    <a class="btn modal-next medium-blue">Next <i class="icon-arrow-right icon-white"></i></a>
  </div>
</div>
-->
</body>
</html>