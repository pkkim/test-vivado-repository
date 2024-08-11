import os
import random
import string


def create_fake_test():
    random_str = ''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(8))
    filename = f'./random-junk/{random_str}_test.sh'
    with open(filename, 'w') as f:
        f.write(f'#!/bin/bash\n\necho {random_str}')
    os.chmod(filename, 0o700)
    with open('BUILD', 'a') as f:
        f.write(f'''
sh_test(
    name = "{random_str}_test",
    srcs = ["random-junk/{random_str}_test.sh"],
    size = "small",
)
''')


if __name__ == '__main__':
    for i in range(1):
        create_fake_test()
