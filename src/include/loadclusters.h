#ifndef LOADCLUSTERS_H
#define LOADCLUSTERS_H

#include "fst/fstlib.h"
#include "PhonetisaurusRex.h"


int LoadClusters (const SymbolTable* syms, SymbolMap12M* clusters,
                  SymbolMapM21* invclusters);

#endif // LOADCLUSTERS_H
