# Notes from the Hackathon Submission

## Inspiration
I'm thrilled when someone keeps their documentation up-to-date or comments on issues to clarify questions.  For me, it's those little actions that let a team working remotely know your everyone is engaged and behind the project.

That said, keeping the little bits of minutia in documentation correct has more than once fallen to the bottom of my priority list and I'm sure others.  So the idea came to mind to throw a little encouragement around the platform to add just a little more excitement to everyday tasks.

## What it does
Through the use of a granular settings page and UI the Jira and Confluence administrators can specify prizes and break them down into **increments** which are collected by users to earn an award.  The number of increments required as well as what activities and their probabilities are controllable by the administrators as well.

## How we built it
To maximize the security and reliability of the Scavenger Hunt, as well as show off Forge itself, the entire project is built only using Forge UI Kit components and Forge FaaS functions.

User activities are tracked using the available triggers offered by Forge and when activated it evaluates the current configuration to see if the activity 'found' anything.  Those activities that qualify for a prize are then notified via the comments (if a prize is available) and the leaderboard is updated.

Storage leverages the async `store.get()` and `store.set()` with some additional framework (noted below) to break the data into logical chunks and maximize performance while reducing the risk of exceeding the maximum object size.

## Challenges we ran into
 - **Storing data in a way that all Atlassian Products can use it**
   <br/>Having users' awards limited to just Jira or just Confluence hindered the seamless feeling I was hoping for.  After a bunch of whiteboard sketching and brainstorming a system was created to sync data between local installations of the product without ever leaving the Atlassian platform.  
 - **Slight variations between the APIs for products**
    <br/>To access the properties of a user you can use the build in authentication, which is pretty slick.  What threw me the most was the very minor variance that Confluence uses a `/current` endpoint for the current user and Jira uses `/myself` (which doesn't even fall under the User category)

## Accomplishments that I'm proud of
I'm pretty happy with the near real-time data synchronization between different products while maintaining a level of security and staying withing Atlassian data centers.  I almost broke down and just used an external DB, but I managed to tackle it.

## What I learned
I was forced to learn a bunch about React development patterns in a hurry as I hadn't used it in the past.  Typically my work is in the backend so it's not a technology I've much experience with.

Additionally, UI Kit can be restrictive at times but provides a great way to make familiar UI experiences

## What's next for Atlassian Scavenger Hunt
There are a bunch of items I'd like to add and keep building on for the Scavenger Hunt.  After getting a couple of the below items in I'm hoping to get a listing on the Marketplace so that others can enjoy it as well.
- Awards for Watching pages/issues/blogs
- Awards for voting on Issues
- More PowerUps!
