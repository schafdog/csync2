import sys

data = sys.stdin.buffer.read()

offset = 0
line_starts = [0]  # byte offsets of line starts

# Build list of line start byte offsets
for i, b in enumerate(data):
    if b == 0x0A:  # newline '\n'
        line_starts.append(i + 1)

while offset < len(data):
    try:
        data[offset:].decode("utf-8")
        break
    except UnicodeDecodeError as e:
        start = offset + e.start
        end = offset + e.end
        bad_bytes = data[start:end]

        # Find line number and column
        line_num = next(i for i, pos in enumerate(line_starts) if pos > start) - 1 \
                   if any(pos > start for pos in line_starts) else len(line_starts) - 1
        line_start = line_starts[line_num]
        column = start - line_start

        print(f"Invalid UTF-8 at byte {start}-{end} (line {line_num + 1}, column {column}): "
              f"{bad_bytes} (reason: {e.reason})")

        offset = end  # skip past bad bytes
