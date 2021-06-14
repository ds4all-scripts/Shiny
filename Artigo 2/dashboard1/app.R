# Aplicação  com shinydashboard com script único --------------------------


library(shiny)
library(shinydashboard) #baseada em BootStrap 3

# Definir a interface do usuário UI que:
# -> Permite a interação com a aplicação;
# -> Define os inputs e outputs da aplicação;

ui <- dashboardPage(
    dashboardHeader(
        title = "4 x 0",
        dropdownMenu(
            type = "messages",
            badgeStatus = "success",
            messageItem("Support Team",
                        "This is the content of a message.",
                        time = "5 mins"),
            messageItem("Support Team",
                        "This is the content of another message.",
                        time = "2 hours"),
            messageItem("New User",
                        "Can I get some help?",
                        time = "Today")
        ),

        # Dropdown menu for notifications
        dropdownMenu(
            type = "notifications",
            badgeStatus = "warning",
            notificationItem(
                icon = icon("users"),
                status = "info",
                "5 new members joined today"
            ),
            notificationItem(
                icon = icon("warning"),
                status = "danger",
                "Resource usage near limit."
            ),
            notificationItem(
                icon = icon("shopping-cart", lib = "glyphicon"),
                status = "success",
                "25 sales made"
            ),
            notificationItem(
                icon = icon("user", lib = "glyphicon"),
                status = "danger",
                "You changed your username"
            )
        ),

        # Dropdown menu for tasks, with progress bar
        dropdownMenu(
            type = "tasks",
            badgeStatus = "danger",
            taskItem(value = 20, color = "aqua",
                     "Refactor code"),
            taskItem(value = 40, color = "green",
                     "Design new layout"),
            taskItem(value = 60, color = "yellow",
                     "Another task"),
            taskItem(value = 80, color = "red",
                     "Write documentation")
        )
    ),
    dashboardSidebar(
        sidebarUserPanel("User Name",
                         subtitle = a(href = "#", icon("circle", class = "text-success"), "Online"),
                         # Image file should be in www/ subdir
                         image = "userimage.png"
        ),
        sidebarSearchForm(label = "Enter a number", "searchText", "searchButton"),
        sidebarMenu(
            # Setting id makes input$tabs give the tabName of currently-selected tab
            id = "tabs",
            menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
            menuItem("Widgets", icon = icon("th"), tabName = "widgets", badgeLabel = "new",
                     badgeColor = "green"),
            menuItem("Charts", icon = icon("bar-chart-o"),
                     menuSubItem("Sub-item 1", tabName = "subitem1"),
                     menuSubItem("Sub-item 2", tabName = "subitem2")
            )
        )
    ),
    dashboardBody(
        tabItems(
            tabItem("dashboard",
                    div(p("Dashboard tab content"))
            ),
            tabItem("widgets",
                    "Widgets tab content"
            ),
            tabItem("subitem1",
                    "Sub-item 1 tab content"
            ),
            tabItem("subitem2",
                    "Sub-item 2 tab content"
            )
        )
    )

)

# Define a lógica e relaciona os input
# e output da ui.R
server <- function(input, output) {

}

# Roda a aplicação
shinyApp(ui = ui, server = server)
