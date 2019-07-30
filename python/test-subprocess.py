import subprocess

# run an external command
subprocess.run("ls")

# run an external command with argument
subprocess.run(["ls", "-l"])

# with shell=True, string list is not required to specify argument
subprocess.run("ls -l", shell=True)

# capture output
p1 = subprocess.run("ls -l", shell=True)
print(p1.stdout)  # None
print(p1.returncode)  # 0


# capture the output to stdout as bytes
p1 = subprocess.run("ls -l", shell=True, capture_output=True)
print(p1.stdout)

# capture the output to stdout as string
p1 = subprocess.run("ls -l", shell=True, capture_output=True)
print(p1.stdout.decode())
# or
p1 = subprocess.run("ls -l", shell=True, capture_output=True, text=True)
print(p1.stdout)

p1 = subprocess.run("ls -l", shell=True, stdout=subprocess.PIPE, text=True)
print(p1.stdout)

with open("output.txt", "w") as f:
    subprocess.run("ls -l", shell=True, stdout=f, text=True)

# capture errors
p1 = subprocess.run("ls -l abc", shell=True, capture_output=True, text=True)
print(p1.returncode)
print(p1.stderr)

# raise exception on error
# p1 = subprocess.run("ls -l abc", shell=True, capture_output=True, text=True, check=True)

# redirect error to /dev/null, stderr is empty now
p1 = subprocess.run("ls -l abc", shell=True, stderr=subprocess.DEVNULL)
print(p1.stderr)  # None

# pass the output of p1 as input of p2
p1 = subprocess.run("cat days.txt", shell=True, capture_output=True, text=True)
print(p1.stdout)
p2 = subprocess.run(
    "grep -n Friday", shell=True, capture_output=True, text=True, input=p1.stdout
)
print(p2.stdout)
