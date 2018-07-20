alias ProjectManagement.Repo
alias ProjectManagement.Management.Project

#the ! allows to receive an error
Repo.insert! %Project{
  title: "Tremendous project",
  description: "This is a very good project believe me"
}

Repo.insert! %Project{
  title: "Amazing project",
  description: "This is a very good project let me tell you folks"
}

Repo.insert! %Project{
  title: "The best project",
  description: "A lot of people say this is the best project"
}

