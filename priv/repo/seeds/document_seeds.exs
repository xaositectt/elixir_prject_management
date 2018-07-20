alias ProjectManagement.Repo
alias ProjectManagement.Management.Document

#the ! allows to receive an error
Repo.insert! %Document{
  name: "first one",
  content: "something",
  view_count: 1,
  published: true,
  project_id: 1
}

Repo.insert! %Document{
  name: "second one",
  content: "something else",
  view_count: 3,
  published: false,
  project_id: 1
}

Repo.insert! %Document{
  name: "third one",
  content: "something completely different",
  view_count: 4,
  published: true,
  project_id: 1
}


