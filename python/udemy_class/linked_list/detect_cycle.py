class Node(object):

    def __init__(self, value, next_node = None):
        self.value = value
        self.next_node = next_node


def detect_cycle_with_dict(head):
    nodes_seen = {}

    current_node = head

    while current_node != None:
        if current_node in nodes_seen:
            return True

        nodes_seen[current_node] = True
        current_node = current_node.next_node

    return False

a = Node(1)
b = Node(2)
c = Node(3)

a.next_node = b
b.next_node = c

print(detect_cycle_with_dict(a))

c.next_node = a
print(detect_cycle_with_dict(a))

def detect_cycle_two_pointer(head):
    pointer_one = head
    pointer_two = head


    # We dont need to check if pointer one is null
    # because pointer two will always be head.
    # If pointer two reaches null then we know there is no cycle
    while pointer_two != None and pointer_two.next_node != None:
        pointer_one = pointer_one.next_node
        pointer_two = pointer_two.next_node.next_node

        if pointer_one == pointer_two:
            return True

    return False

a = Node(1)
b = Node(2)
c = Node(3)

a.next_node = b
b.next_node = c

print(detect_cycle_two_pointer(a))

c.next_node = a
print(detect_cycle_two_pointer(a))
