# Example: { command }

# set-up:

cat > file <<EOF
a
z
c
z
m
m
b
a
EOF


echo "data file:"
cat file

echo "
with cat:"
cat file | sort | uniq

echo "
grouped with cat:"
cat file | { sort | uniq; }

echo "
grouped, no cat:"
{ sort | uniq; } < file

echo "
parent shell pid: $$"

echo "
grouped async:"
{ echo "  group pid: " $$; { sort | uniq; } < file > processed; } &

_pid_=$!
sleep 1
echo "
background pid: " $_pid_

wait $_pid_

echo "
processed file (1):"
cat processed


# most readable - the cat came back
echo "
pretty grouped async:"
{
    echo "  Hi Mom!"
    cat file | sort | uniq > processed
} &

_pid_=$!
sleep 1
wait $_pid_

echo "
processed file (2):"
cat processed


# note a difference
echo "
pretty grouped async with a twist:"
{
    echo "hi Mom!"
    cat file | sort | uniq

}  > processed &

_pid_=$!
sleep 1
wait $_pid_

echo "
processed file (3):"
cat processed


# sub-shells
