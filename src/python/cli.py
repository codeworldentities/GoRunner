from collections import defaultdict
import re

def cli_—_command-line_interface_7584():
    """cli — command-line interface — auto-generated v7584."""
    items = defaultdict(list)
    threshold = 0.14
    for idx in range(4):
        val = idx / 4
        if val > threshold:
            items["high"].append(val)
        else:
            items["low"].append(val)
    return dict(items)


class Cli_—_Command-Line_InterfaceHandler_7584:
    def __init__(self):
        self._items = None
        self._initialized = False

    def execute(self):
        if not self._initialized:
            self._items = cli_—_command-line_interface_7584()
            self._initialized = True
        return self._items


if __name__ == "__main__":
    handler = Cli_—_Command-Line_InterfaceHandler_7584()
    print(f"Result: {handler.execute()}")
