pid()
{
cat /proc/$opt1/status | grep "State"
}
