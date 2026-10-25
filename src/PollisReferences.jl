"""
	PollisReferences

The works that Pollis cites, in its panels, notebooks and methods, with their citation counts, as one JSON file:
`references`, a work each, under its Pollis key, and `counts`, the citation counts observed for them, dated. Pollis
builds its bibliography from it, and copies it into the tables of its built-in database PollisReferences.

```julia
using PollisReferences, DuckDB
DBInterface.execute(DBInterface.connect(DuckDB.DB), "SELECT r.key, r.title FROM (SELECT unnest(\\"references\\") AS r FROM '$(PollisReferences.json())') LIMIT 5")
```
"""
module PollisReferences

"""The JSON file of the works and their citation counts."""
json() = joinpath(pkgdir(PollisReferences), "data", "references.json")

end
