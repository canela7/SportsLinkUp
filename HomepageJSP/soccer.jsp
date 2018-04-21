<!DOCTYPE html>
<html>
<title>Soccer Events</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
  crossorigin="anonymous">
<link rel="stylesheet" href="./HomepageContent/css/styles.css" />
<style>
  body {
    font-family: "Lato", sans-serif
  }

  .mySlides {
    display: none
  }

  .button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
  }

  table.d {
    width: 100%;
    height: 300px;
  }

  thead {
    display: table-header-group;
    width: 100%;
    overflow: auto;
    color: black;

  }

  tbody {
    display: table-header-group;
    width: 100%;
    height: 200px;
    overflow: auto;
  }

  th {
    background: #DFDFDF;
    font-weight: bold;
    height: 70px;
    width: 500px;
  }

  td {
    background: #FAFAFA;
    text-align: center;
    height: 70px;
    width: 500px;
  }

  tr td:hover {
    background: #666;
    color: #FFF;
  }
</style>

<body>


  <!-- Navbar -->
  <div class="w3-top">
    <div class="w3-bar w3-black w3-card">
      <a href="Homepage" class="w3-bar-item w3-button w3-padding-large">HOME</a>
      <a href="Basketball" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Basketball</a>
      <a href="Soccer" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Soccer</a>
      <a href="Football" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Football</a>
      <a href="Cricket" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Cricket</a>
      <div class="w3-dropdown-hover w3-hide-small">

      </div>
      <a href="#app" class="w3-padding-large w3-hover-red w3-hide-small w3-right">
        <i class="fa fa-search"></i>
      </a>
    </div>
  </div>

  <!-- Page content -->
  <div class="w3-content" style="max-width:2000px; margin-top:46px">

    <!-- Automatic Slideshow Images -->
    <div class="mySlides w3-display-container w3-center">
      <img src="./HomepageContent/img/Soccer-1.jpg" style="width:100%" height="450">
      <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
        <h3>Los Angeles</h3>
        <p>
          <b>We had the best time playing at Venice Beach!</b>
        </p>
      </div>
    </div>
    <div class="mySlides w3-display-container w3-center">
      <img src="./HomepageContent/img/Soccer-2.jpg" style="width:100%" height="450">
      <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
        <h3>New York</h3>
        <p>
          <b>The atmosphere in New York is lorem ipsum.</b>
        </p>
      </div>
    </div>
    <div class="mySlides w3-display-container w3-center">
      <img src="./HomepageContent/img/Soccer-3.jpg" style="width:100%" height="450">
      <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
        <h3>Chicago</h3>
        <p>
          <b>Thank you, Chicago - A night we won't forget.</b>
        </p>
      </div>
    </div>



    <!-- The Band Section -->
    <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="app">

      <h2 class="w3-wide">Current Soccer Events</h2>
      <p class="w3-opacity">
        <i>Play Soccer</i>
      </p>
      <h4 class="w3-wide">Search:
        <input text="text" name="query" placeHolder="Search City">
        <input type="submit" value="Search">
      </h4>
      <table class="d" align="center">
        <thead>
          <tr>
            <th>City</th>
            <th>Title</th>
            <th>Date of Post</th>
            <th>Date of Event</th>
            <th>Votes</th>
            <th>View Event</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="events in sortedEvents">
            <td>{{events.city}}</td>
            <td>{{events.description}}</td>
            <td>{{events.startdate}}</td>
            <td>{{events.enddate}}</td>
            <td>
              <span class="icon is-small" @click="upvote(events.id)">
                <i class="fa fa-chevron-up"></i>
              </span>
              <span class="icon is-small" @click="downvote(events.id)">
                <i class="fa fa-chevron-down"></i>
                <strong class="has-text-info">{{events.votes}}</strong>
              </span>
            </td>
            <td>
              <a href=#> View Event </a>
            </td>
          </tr>
        </tbody>
      </table>
      <br>



      <h1>Link Up!</h1>
      <a href="../Contact/ContactSoccerInfo.html" class="button">Create Soccer Link Up</a>

    </div>




    <!-- Map -->
    <section id="contact" class="map">
      <iframe width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe>
      <br/>
      <small>
        <a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A"></a>
      </small>
    </section>

    <!-- End Page Content -->
  </div>









  <script>
    // Automatic Slideshow - change image every 4 seconds
    var myIndex = 0;
    carousel();

    function carousel() {
      var i;
      var x = document.getElementsByClassName("mySlides");
      for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
      }
      myIndex++;
      if (myIndex > x.length) { myIndex = 1 }
      x[myIndex - 1].style.display = "block";
      setTimeout(carousel, 4000);
    }

    // Used to toggle the menu on small screens when clicking on the menu button
    function myFunction() {
      var x = document.getElementById("navDemo");
      if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
      } else {
        x.className = x.className.replace(" w3-show", "");
      }
    }

    // When the user clicks anywhere outside of the modal, close it
    var modal = document.getElementById('ticketModal');
    window.onclick = function (event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }
  </script>


  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
  <script src="https://unpkg.com/vue"></script>
  <script src="https://unpkg.com/vue/dist/vue.js"></script>
  <script src="./HomepageContent/js/seed.js"></script>
  <script src="./HomepageContent/js/main.js"></script>


</body>

</html>