
# if:
if [ test ]; then
    statements
elif [ test ]; then
    statements
else
    statements
fi

# case:
#   emacs users: (set-variable sh-indent-for-case-label 0)
#                (set-variable sh-indent-for-case-alt 0)
case word in
p1) statements
    statement
    ;;
p2) statement
    ;;
p3) ;;				# skipped case
*)  statements			# default
    ;;
esac

# select:
select name in words; do
    statements
done

# until:
until test; do
    statements
done

# while:
while test; do
    statements
done

# for:
for name in words; do
    statements
done

# function definitions
Function() {
    statements
}
