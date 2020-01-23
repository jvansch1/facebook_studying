require 'byebug'

def min_time_to_visit_all_points(points)
    seconds = 0
    index = 0

    while index < points.length - 1
        current_point = points[index]
        next_point = points[index + 1]

        time_to_travel_x = (current_point[0] - next_point[0]).abs
        time_to_travel_y = (current_point[1] - next_point[1]).abs

        seconds += [time_to_travel_x, time_to_travel_y].max
        index += 1
    end

    return seconds
end

p min_time_to_visit_all_points([[3,2],[-2,2]])
