    <header id="header" class="clearfix">
        <div class="head-cont">
                <a class="logo" href="index.jsp"><img class="logo" src="img/logo_.png" alt="" width="80" height="80"></a>
                
                <div class="navcont clearfix">

                    <nav>
                        <a href="MovieListControllerServlet?command=LIST">List All Movies</a> | 
                        <a href="fe-advanced-search.jsp">Advanced Search</a>| 
                        <a href="MovieListControllerServlet?command=ADMIN_LIST">Admin Page</a>
    
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
            <input class="searchbar" name="searchTitle" type="text" placeholder="Search for a movie that you are looking for">
            <input class="sndbutton" value="" type="submit"></input>
        </form>  
        </div>