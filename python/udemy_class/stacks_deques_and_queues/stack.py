class Stack:

    def __init__(self, store=[]):
        self.store = []

    def push(self, value):
        return self.store.append(value)

    def pop(self):
        return self.store.pop()

    def peek(self):
        return self.store[-1]

    def is_empty(self):
        return self.size() == 0

    def size(self):
        return len(self.store)

stack = Stack()

print(stack.is_empty())
stack.push(1)
print(stack.peek())
stack.push(2)
print(stack.peek())
stack.pop()
print(stack.peek())
print(stack.is_empty())
