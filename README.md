# PollisReferences.jl

The works that [Pollis](https://pollis.org) cites, in its panels, notebooks and methods, with their citation counts: one JSON file, `data/references.json`, the single source of every Pollis reference.

```julia
using PollisReferences
PollisReferences.json()  # the path of references.json
```

Pollis builds its bibliography, `pollis.bib`, from the version of this file it was made with, and installs the package, keeps it up to date with GitHub, and copies the file into the tables of its built-in database PollisReferences. A correction made here reaches Pollis without a new Pollis, as long as every key its panels cite is still in the file.

## references

One object per work, sorted by key; a field that is not known is left out.

| Field | |
|---|---|
| `key` | the Pollis key: the authors, the year and a letter, e.g. `FF1993a` (rules in The Pollis Guide, Appendix: Reference Keys) |
| `type` | article, book, inproceedings, incollection, techreport, phdthesis, misc, video, audio or speech; stated, never guessed |
| `title`, `authors`, `editors` | authors as `Last, First`, in the order of the work; an organisation's name whole |
| `author_kind`, `authors_complete` | persons, organisation or unknown; false when some authors could not be found |
| `year`, `released` | `released`, the time of a video or speech, in UTC |
| `journal`, `booktitle`, `publisher`, `address`, `edition`, `volume`, `number`, `pages`, `institution`, `report_number` | |
| `isbn`, `issn`, `doi`, `arxiv`, `openalex`, `url`, `oa_url` | `oa_url`, an open-access copy |
| `abstract`, `abstract_source`, `keywords`, `keywords_source` | |
| `legacy_key` | the key the work had before the Pollis keys |
| `source`, `retrieved`, `checked` | where the record came from (crossref, datacite or manual), and when |
| `open_access` | whether the work can be read free |

A key is given once and never recomputed, unless a correction changes the authors or the year it encodes.

## counts

`key`, `count`, `source` (crossref or openalex) and `date`: each count as observed that day, appended, never changed.

## Licence

MIT.
