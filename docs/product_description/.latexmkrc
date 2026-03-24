$pdflatex = 'pdflatex -interaction=nonstopmode -shell-escape %O %S';
$bibtex = 'bibtex %O %B';
add_cus_dep('glo', 'gls', 0, 'makeglo2gls');
add_cus_dep('acn', 'acr', 0, 'makeacn2acr');
sub makeglo2gls {
    system("makeglossaries '$_[0]'");
}
sub makeacn2acr {
    system("makeglossaries '$_[0]'");
}
push @generated_exts, 'glo', 'gls', 'glg';
push @generated_exts, 'acn', 'acr', 'alg';
