    <header id="header" class="clearfix">
        <div class="head-cont">
                <a class="logo" href="homeinit"><img class="logo" src="img/logo_.png" alt="" width="80" height="80"></a>
                
                <div class="navcont clearfix">

                    <nav>
                        <a href="MovieListControllerServlet?command=LIST">List All Movies</a> 
                        <a href="fe-advanced-search.jsp">Advanced Search</a> 
                        <a href="MovieListControllerServlet?command=ADMIN_LIST">Admin Page</a>
                        <a href="be-admin-addmovie.jsp">Add A New Movie</a>
    
                      </nav>
                </div>   
            </div>
        </div>
    </header>
    <div class="top-search clearfix">
            <span class="searchTitle">Search: </span>
        <form action="MovieListControllerServlet" action="GET" class="clearfix">

            
                <input
                type="hidden"
                name="command"
                value="SEARCHTITLE"
              />
            <input class="searchbar" title="Please enter the name of movie" name="searchTitle" type="text" required placeholder="Search for a movie that you are looking for">
            <input class="sndbutton" value="" type="submit"></input>
        </form>  
        </div>