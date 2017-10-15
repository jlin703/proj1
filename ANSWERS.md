# Q0: Why is this error being thrown?
We haven't made a Pokemon model yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The index method in the home controller selects a random Pokemon and saves it in the @pokemon symbol, which the view accesses.
The common factor is that none of the Pokemon belong to trainers.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It tells Rails to look in routes and go the route with label "capture", while passing in the current pokemon as an argument.

# Question 3: What would you name your own Pokemon?
Jonjon

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in a path to the trainer index (trainer_path) and this path needed an id, specially the id of the trainer whose page we were redirecting to.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
Big red bar at the top of the form with error message.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
