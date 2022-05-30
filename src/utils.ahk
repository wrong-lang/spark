WM_HELP() 
{
    Run, https://spark.wrong-lang.click/documentation
}

StrJoin(obj, delimiter:="", OmitChars:="")
{
	string := obj[1]

	Loop % obj.MaxIndex() - 1
		string .= delimiter Trim(obj[A_Index+1], OmitChars)

	return string
}


GetIndexOf(arr, elem)
{
    For i, v in arr
    {
        If (v == elem)
        {
            Return i
        }
    }
}

ArrayFromKey(arr, key) 
{
    Return arr[key]
}