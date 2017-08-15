project = {
  committee: ["Stella", "Salma", "Kai"],
  title: "Very Important Project",
  due_date: "December 1, 2019",
  id: "3284",
  steps: [
    {description: "conduct interviews",
     due_date: "August 1, 2018"
    },
    {description: "code of conduct",
     due_date: "January 1, 2018"
    },
    {description: "compile results",
     due_date: "November 10, 2018"
    },
    {description: "version 1",
     due_date: "January 15, 2019"
    },
    {description: "revisions",
     due_date: "March 30, 2019"
    },
    {description: "version 2",
     due_date: "July 12, 2019"
    },
    {description: "final edit",
     due_date: "October 1, 2019"
    },
    {description: "final version",
     due_date: "November 20, 2019"
    }
  ]
}

# project[:steps][0][:person] = project[:committee][0..2]
# project[:steps][1][:person] = project[:committee][0]
# project[:steps][2][:person] = project[:committee][1]
# project[:steps][3][:person] = project[:committee][2]
# project[:steps][4][:person] = project[:committee][0]
# project[:steps][5][:person] = project[:committee][1]
# project[:steps][6][:person] = project[:committee][2]
# project[:steps][7][:person] = project[:committee][0..2]
# puts project

first_task = 0
project.each do |item, info|
  if item == [:steps]
    info.each do |action|
      project[:steps][first_task += 1][:person] = project[:committee][0..2]
    end
  end
end
puts project
