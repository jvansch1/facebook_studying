class Node:

    def __init__(self, value, next_node = None):
        self.value = value
        self.next_node = next_node

def reverse_list(head):
    current_node = head
    prev_node = None

    while current_node:
        # Grab the next node so we do not lose a refernce to it
        next_node = current_node.next_node
        # Reassign current_node.next to prev_node
        current_node.next_node = prev_node
        # Make the prev node for the next step our current_node
        prev_node = current_node
        current_node = next_node

    return prev_node

def print_list(head):
    current_node = head

    while current_node:
        print(f"{current_node.value} -> ", end="")
        current_node = current_node.next_node

    print("\n")


a = Node(1)
b = Node(2)
c = Node(3)

a.next_node = b
b.next_node = c

print_list(a)

new_list = reverse_list(a)

print_list(new_list)
