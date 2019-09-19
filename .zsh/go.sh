gocd () { cd `go list -f '{{.Dir}}' $1` }

