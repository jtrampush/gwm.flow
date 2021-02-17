## workflowr getting started
## Feb 15, 2021

### Start the project

# To start a new project, open R (or RStudio) and load the workflowr package (note that all the code in this vignette should be run directly in the R console, i.e. do not try to run workflowr functions inside of R Markdown documents).

library("workflowr")

# If you have never created a Git repository on your computer before, you need to run the following command to tell Git your name and email. Git uses this information to assign the changes you make to the code to you (analogous to how Track Changes in a Microsoft Office Word document assigns your changes to you). You do not need to use the exact same name and email as you used for your account on GitHub or GitLab. Also, you only need to run this command once per computer, and all subsequent workflowr projects will use this information (you can also update it at any time by re-running the command with different input).

# Replace the example text with your information
wflow_git_config(user.name = "jtrampush", user.email = "j.trampush@gmail.com")

# Now you are ready to start your first workflowr project! wflow_start("myproject") creates a directory called myproject/ that contains all the files to get started. It also changes the working directory to myproject/2 and initializes a Git repository with the initial commit already made.

wflow_start(directory = "~/gwm.flow",
            name = "gwm.flow",
            existing = TRUE,
            git = TRUE,
            overwrite = TRUE,
            user.name = "jtrampush",
            user.email = "j.trampush@gmail.com")

# Build the site
wflow_build()

# Customize your site!
#   1. Edit the R Markdown files in analysis/
#   2. Edit the theme and layout in analysis/_site.yml
#   3. Add new or copy existing R Markdown files to analysis/

# Preview your changes
wflow_build()

# Publish the site, i.e. version the source code and HTML results
wflow_publish("analysis/*", "Starting new GWM project")

wflow_view()
wflow_status()

wflow_publish(c("analysis/index.Rmd",
                "analysis/about.Rmd",
                "analysis/license.Rmd"),
              "Publish the initial files for GWM")

# Deplot the website

wflow_use_github("jtrampush")

wflow_git_push()



