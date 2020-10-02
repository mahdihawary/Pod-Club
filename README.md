### Flatiron School - Module 2 (Rails) Final Project
### Created by Madeline Stalter (Github: PandaBearCoding) & Mahdi Hawary (Github: MahdiHawary)

### Purpose
Pod Club was created to function as platform that allows users to join or create podcast clubs. Similar to a book club, each podcast club will have episodes that spark reviews and discussion amongst members. 

### Installation Instructions 
1. Run bundle install in terminal
2. Start the server with the rails s command in terminal
3. Open your browser and go to localhost:3000
4. Enjoy! 

### Functionalities 
* Upon going to our website, the user should be directed to our homepage. The user does not have to be signed in to access the homepage. The homepage functions as a “preview” to what it would be like if the user became a Pod Club member. From the homepage, the user can access our navigation bar at the top of the page to sign up, log in, or view our all of our clubs (via the index page). A user does not have to be signed in to view our clubs. However, to view a club’s show page, create and/or join a club, interact with members, and get full functionality of the site, they will have to be signed up/logged in. 

* Once logged in, a user will be directed to their profile page. From their profile page, the user can edit or delete their account. The profile page displays a user’s personal information (i.e., their name, username, favorite genre, and age) as well as the clubs that they belong to. A user can click on a club and that will redirect them to the club’s show page. On a club’s show page, the user can view the club’s name, genre (e.g., True Crime, Cooking, Spirituality), profile picture, and episodes that have been added to the club for discussion. The user can also view all members of the club. The user can click on a member’s username and will be redirected to that specific member’s profile page. As a club member, the user can edit the club (in terms of name, genre, and profile picture) as well as leave the club. 

* A user can click on an episode and that will redirect them to the episode’s show page. On an episode’s show page, the user can view the episode’s podcast name, title, number, release date, description, and URL (formatted as the podcast name and episode title). The URL will redirect the user externally to Spotify where they can actually listen to the episode (and then come back to Pod Club to discuss it with members). A user can delete an episode from a club if an episode was erroneously added (e.g., for not being in theme with the club’s genre). There is also a discussion board at the bottom of the page where members can discuss that episode. Comments in the discussion board can be deleted by the user that posted them.

### Future Plans for Pod Club 
Once Spotify’s API is further developed for podcasts, we will integrate that in order to make Pod Club more dynamic by having access to their wide selection of shows.
