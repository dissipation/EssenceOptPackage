maxim_fun_standard <- function(sp,diag_mat){
  diag_mat[,"Coefficient"]*(sp^diag_mat[,"Power"])
}