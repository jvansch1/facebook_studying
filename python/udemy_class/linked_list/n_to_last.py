class Node:

    def __init__(self, value, next_node = None):
        self.value = value
        self.next_node = next_node

def n_to_last_naive(head, n):

    # find length in one pass through
    current_node = head
    length = 0

    while current_node:
        length += 1
        current_node = current_node.next_node

    target = length - n
    i = 0
    current_node = head

    while i < target:
        i += 1
        current_node = current_node.next_node

    return current_node

a = Node(1)
b = Node(2)
c = Node(3)
d = Node(4)
e = Node(5)

a.next_node = b
b.next_node = c
c.next_node = d
d.next_node = e

print(n_to_last_naive(a, 2).value)
print(n_to_last_naive(a, 3).value)

def n_to_last_optimal(head, n):
    current_node = head
    lead_pointer = head

    i = 0

    while i < n - 1:
        lead_pointer = lead_pointer.next_node
        i += 1

    while lead_pointer.next_node:
        current_node = current_node.next_node
        lead_pointer = lead_pointer.next_node

    return current_node

print(n_to_last_optimal(a, 2).value)
print(n_to_last_optimal(a, 3).value)
