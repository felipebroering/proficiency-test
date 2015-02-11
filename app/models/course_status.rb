class CourseStatus < EnumerateIt::Base
  associate_values(
    :started   => 1,
    :finished  => 2,
    :closed => 3
  )
end