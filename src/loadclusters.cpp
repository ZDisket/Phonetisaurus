#include "include/loadclusters.h"
using namespace std;
using namespace fst;

int LoadClusters(const SymbolTable *syms, SymbolMap12M *clusters, SymbolMapM21 *invclusters) {
    /*
    Compute the set of 'clustered' graphemes learned during
    the alignment process. This information is encoded in
    the input symbols table.
  */
    string tie = syms->Find (1);
    size_t max_len = 1;
    for (size_t i = 2; i < syms->NumSymbols(); i++) {
        string sym = syms->Find (i);
        vector<int> cluster;
        if (sym.find(tie) != string::npos) {
            char* tmpstring = const_cast<char *> (sym.c_str());
            char* p = strtok (tmpstring, tie.c_str());
            while (p) {
                cluster.push_back (syms->Find(p));
                p = strtok (NULL, tie.c_str());
            }

            clusters->insert(pair<int, vector<int> >(i, cluster));
            invclusters->insert(pair<vector<int>, int>(cluster, i));
            max_len = (cluster.size() > max_len) ? cluster.size() : max_len;
        } else {
            cluster.push_back (i);
            clusters->insert(pair<int, vector<int> >(i, cluster));
            invclusters->insert(pair<vector<int>, int>(cluster, i));
        }
    }
    return max_len;
}
