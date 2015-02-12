class CourseStatus < EnumerateIt::Base
  associate_values(
    :started   => 1,
    :finished  => 2,
    :open => 3
  )
end