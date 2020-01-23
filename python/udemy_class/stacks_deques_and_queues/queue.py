class Queue:
    def __init__(self, store = []):
        self.store = store

    def enqueue(self, value):
        self.store.insert(0, value)

    def dequeue(self):
        self.store.pop()

    def size(self):
        return len(self.store)

    def is_empty(self):
        return self.size() == 0

    def inspect(self):
        return self.store

q = Queue()
q.enqueue(1)
q.enqueue(2)
print(q.inspect())
q.dequeue()
print(q.inspect())
